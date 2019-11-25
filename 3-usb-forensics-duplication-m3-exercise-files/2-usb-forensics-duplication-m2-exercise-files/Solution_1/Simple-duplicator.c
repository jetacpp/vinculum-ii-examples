/*
** Filename: Simple-duplicator.c
**
** Automatically created by Application Wizard 2.0.2
** 
** Part of solution Solution_1 in project Simple-duplicator
**
** Comments: 
**
** Important: Sections between markers "FTDI:S*" and "FTDI:E*" will be overwritten by
** the Application Wizard
*/
#include "stdio.h"
#include "errno.h"
#include "stdlib.h"
#include "string.h"
#include "ctype.h"

#include "Simple-duplicator.h"

/* FTDI:STP Thread Prototypes */
vos_tcb_t *tcbFIRMWARE;

void firmware();
/* FTDI:ETP */

/* FTDI:SDH Driver Handles */
VOS_HANDLE hUSBHOST_1; // USB Host Port 1
VOS_HANDLE hUSBHOST_2; // USB Host Port 2
VOS_HANDLE hGPIO_PORT_A; // GPIO Port A Driver
VOS_HANDLE hTIMER_1; // Timer 1 Driver
VOS_HANDLE hFAT_FILE_SYSTEM_1; // FAT File System for FAT32 and FAT16
VOS_HANDLE hFAT_FILE_SYSTEM_2; // FAT File System for FAT32 and FAT16
VOS_HANDLE hBOMS_1; // Bulk Only Mass Storage for USB disks
VOS_HANDLE hBOMS_2; // Bulk Only Mass Storage for USB disks
/* FTDI:EDH */

#define BUFFER_SIZE 4096
// semaphores for read and write operations
vos_semaphore_t semRead;
vos_semaphore_t semWrite;

// variables for LEDs
unsigned char leds;
unsigned char led[5]={0x02, 0x04, 0x08, 0x10, 0x20};
unsigned short ledStep;


/* Declaration for IOMUx setup function */
void iomux_setup(void);

/* Main code - entry point to firmware */
void main(void)
{
	/* FTDI:SDD Driver Declarations */
	// GPIO Port A configuration context
	gpio_context_t gpioContextA;
	// Timer 1 configuration context
	tmr_context_t tmrContext1;
	// USB Host configuration context
	usbhost_context_t usbhostContext;
	/* FTDI:EDD */

	/* FTDI:SKI Kernel Initialisation */
	vos_init(50, VOS_TICK_INTERVAL, VOS_NUMBER_DEVICES);
	vos_set_clock_frequency(VOS_48MHZ_CLOCK_FREQUENCY);
	vos_set_idle_thread_tcb_size(512);
	/* FTDI:EKI */

	iomux_setup();

	/* FTDI:SDI Driver Initialisation */
	// Initialise GPIO A
	gpioContextA.port_identifier = GPIO_PORT_A;
	gpio_init(VOS_DEV_GPIO_PORT_A,&gpioContextA);
	
	// Initialise Timer 1
	tmrContext1.timer_identifier = 1;
	tmr_init(VOS_DEV_TIMER_1,&tmrContext1);
	
	// Initialise FAT File System Driver
	fatdrv_init(VOS_DEV_FAT_FILE_SYSTEM_1);
	
	// Initialise FAT File System Driver
	fatdrv_init(VOS_DEV_FAT_FILE_SYSTEM_2);
	
	// Initialise BOMS Device Driver
	boms_init(VOS_DEV_BOMS_1);
	
	// Initialise BOMS Device Driver
	boms_init(VOS_DEV_BOMS_2);
	
	// Initialise USB Host
	usbhostContext.if_count = 8;
	usbhostContext.ep_count = 16;
	usbhostContext.xfer_count = 2;
	usbhostContext.iso_xfer_count = 2;
	usbhost_init(VOS_DEV_USBHOST_1, VOS_DEV_USBHOST_2, &usbhostContext);
	/* FTDI:EDI */

	/* FTDI:SCT Thread Creation */
	tcbFIRMWARE = vos_create_thread_ex(20, 4096, firmware, "Application", 0);
	/* FTDI:ECT */

	vos_start_scheduler();

main_loop:
	goto main_loop;
}

/* FTDI:SSP Support Functions */

unsigned char usbhost_connect_state(VOS_HANDLE hUSB)
{
	unsigned char connectstate = PORT_STATE_DISCONNECTED;
	usbhost_ioctl_cb_t hc_iocb;

	if (hUSB)
	{
		hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_GET_CONNECT_STATE;
		hc_iocb.get        = &connectstate;
		vos_dev_ioctl(hUSB, &hc_iocb);

    // repeat if connected to see if we move to enumerated
		if (connectstate == PORT_STATE_CONNECTED)
		{
			vos_dev_ioctl(hUSB, &hc_iocb);
		}
	}
	return connectstate;
}


VOS_HANDLE fat_attach(VOS_HANDLE hMSI, unsigned char devFAT)
{
	fat_ioctl_cb_t           fat_ioctl;
	fatdrv_ioctl_cb_attach_t fat_att;
	VOS_HANDLE hFAT;

	// currently the MSI (BOMS or other) must be open
        // open the FAT driver
	hFAT = vos_dev_open(devFAT);

        // attach the FAT driver to the MSI driver
	fat_ioctl.ioctl_code = FAT_IOCTL_FS_ATTACH;
	fat_ioctl.set = &fat_att;
	fat_att.msi_handle = hMSI;
	fat_att.partition = 0;

	if (vos_dev_ioctl(hFAT, &fat_ioctl) != FAT_OK)
	{
                // unable to open the FAT driver
		vos_dev_close(hFAT);
		hFAT = NULL;
	}

	return hFAT;
}

void fat_detach(VOS_HANDLE hFAT)
{
	fat_ioctl_cb_t           fat_ioctl;

	if (hFAT)
	{
		fat_ioctl.ioctl_code = FAT_IOCTL_FS_DETACH;
		fat_ioctl.set = NULL;
		fat_ioctl.get = NULL;

		vos_dev_ioctl(hFAT, &fat_ioctl);
		vos_dev_close(hFAT);
	}
}


VOS_HANDLE boms_attach(VOS_HANDLE hUSB, unsigned char devBOMS)
{
	usbhost_device_handle_ex ifDisk = 0;
	usbhost_ioctl_cb_t hc_iocb;
	usbhost_ioctl_cb_class_t hc_iocb_class;
	msi_ioctl_cb_t boms_iocb;
	boms_ioctl_cb_attach_t boms_att;
	VOS_HANDLE hBOMS;

	// find BOMS class device
	hc_iocb_class.dev_class = USB_CLASS_MASS_STORAGE;
	hc_iocb_class.dev_subclass = USB_SUBCLASS_MASS_STORAGE_SCSI;
	hc_iocb_class.dev_protocol = USB_PROTOCOL_MASS_STORAGE_BOMS;

	// user ioctl to find first hub device
	hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_FIND_HANDLE_BY_CLASS;
	hc_iocb.handle.dif = NULL;
	hc_iocb.set = &hc_iocb_class;
	hc_iocb.get = &ifDisk;

	if (vos_dev_ioctl(hUSB, &hc_iocb) != USBHOST_OK)
	{
		return NULL;
	}

	// now we have a device, intialise a BOMS driver with it
	hBOMS = vos_dev_open(devBOMS);

	// perform attach
	boms_att.hc_handle = hUSB;
	boms_att.ifDev = ifDisk;

	boms_iocb.ioctl_code = MSI_IOCTL_BOMS_ATTACH;
	boms_iocb.set = &boms_att;
	boms_iocb.get = NULL;

	if (vos_dev_ioctl(hBOMS, &boms_iocb) != MSI_OK)
	{
		vos_dev_close(hBOMS);
		hBOMS = NULL;
	}

	return hBOMS;
}

void boms_detach(VOS_HANDLE hBOMS)
{
	msi_ioctl_cb_t boms_iocb;

	if (hBOMS)
	{
		boms_iocb.ioctl_code = MSI_IOCTL_BOMS_DETACH;
		boms_iocb.set = NULL;
		boms_iocb.get = NULL;

		vos_dev_ioctl(hBOMS, &boms_iocb);
		vos_dev_close(hBOMS);
	}
}

/* FTDI:ESP */

void open_drivers(void)
{
        /* Code for opening and closing drivers - move to required places in Application Threads */
        /* FTDI:SDA Driver Open */
        hUSBHOST_1 = vos_dev_open(VOS_DEV_USBHOST_1);
        hUSBHOST_2 = vos_dev_open(VOS_DEV_USBHOST_2);
        hGPIO_PORT_A = vos_dev_open(VOS_DEV_GPIO_PORT_A);
        hTIMER_1 = vos_dev_open(VOS_DEV_TIMER_1);
        /* FTDI:EDA */
}

void attach_drivers(void)
{
        /* FTDI:SUA Layered Driver Attach Function Calls */
        hBOMS_1 = boms_attach(hUSBHOST_1, VOS_DEV_BOMS_1);
        hBOMS_2 = boms_attach(hUSBHOST_2, VOS_DEV_BOMS_2);
        hFAT_FILE_SYSTEM_1 = fat_attach(hBOMS_1, VOS_DEV_FAT_FILE_SYSTEM_1);
        hFAT_FILE_SYSTEM_2 = fat_attach(hBOMS_2, VOS_DEV_FAT_FILE_SYSTEM_2);
        /* FTDI:EUA */
}

void close_drivers(void)
{
        /* FTDI:SDB Driver Close */
        vos_dev_close(hUSBHOST_1);
        vos_dev_close(hUSBHOST_2);
        vos_dev_close(hGPIO_PORT_A);
        vos_dev_close(hTIMER_1);
        /* FTDI:EDB */
}
		
unsigned char FatReadSector(unsigned long sec, unsigned char *buffer, unsigned short sl)
{
	// transfer buffer
	static msi_xfer_cb_t xfer;
	unsigned char stat;

	xfer.sector = sec;
	xfer.buf = buffer;
	xfer.total_len = sl;
	xfer.buf_len = sl;
	xfer.status = MSI_NOT_ACCESSED;
	xfer.s = &semRead; // semaphore for coordinating read operations
	xfer.do_phases = MSI_PHASE_ALL; // do command/data/status phases
	stat = vos_dev_read(hBOMS_2, (unsigned char *)&xfer, sizeof(msi_xfer_cb_t ), NULL);

	if (stat == MSI_OK)
	{
		stat = FAT_OK;
	}
	else
	{
		stat |= FAT_MSI_ERROR;
	}
	return stat;
}



unsigned char FatWriteSector(unsigned long sec, unsigned char *buffer, unsigned short sl)
{
	// transfer buffer
	static msi_xfer_cb_t xfer;
	unsigned char status;

	xfer.sector = sec;
	xfer.buf = buffer;
	xfer.total_len = sl;
	xfer.buf_len = sl;
	xfer.status = MSI_NOT_ACCESSED;
	xfer.s = &semWrite;
	xfer.do_phases = MSI_PHASE_ALL; //perform all phases: command, data, status
	status = vos_dev_write(hBOMS_1, (unsigned char *)&xfer, sizeof(msi_xfer_cb_t ), NULL);

	if (status == MSI_OK)
	{
		status = FAT_OK;
	}
	else
	{
		status |= FAT_MSI_ERROR;
	}
	return status;
}


/* Application Threads */

void firmware()
{
	/* Thread code to be added here */
	unsigned short sectorSize2, sectorSize1;
	unsigned char connectstate;
	unsigned char status;

	// USB host variables
	usbhost_device_handle *ifDev;
	usbhost_ioctl_cb_t hc_iocb, be_iocb;
	usbhost_ioctl_cb_class_t hc_iocb_class;

	// BOMS device variables
	msi_ioctl_cb_t boms_iocb;
	boms_ioctl_cb_attach_t boms_att;

	// FAT file system variables
	fat_ioctl_cb_t fat_ioctl;
	fatdrv_ioctl_cb_attach_t fat_att;

	// GPIO variables
	gpio_ioctl_cb_t gpio_iocb;
	unsigned char leds;
	msi_xfer_cb_t xfer;
	usbhost_xfer_t uxfer;


	// completion semaphore
	vos_semaphore_t semRead, semWrite;
	unsigned char *pBuffer;
	unsigned long sector=0;
	unsigned short clusterSize;

	short allDone=0;
	int i; //counting variable

	// open host controller
	hUSBHOST_2 = vos_dev_open(VOS_DEV_USBHOST_2);

	// buffer for reading and writing sectors
	pBuffer = malloc(BUFFER_SIZE);

	do
	{
		//wait for enumeration to complete
		vos_delay_msecs(250);
		leds = led[0];  vos_dev_write(hGPIO_PORT_A,&leds,1,NULL);
		vos_delay_msecs(250);
		leds = 0;  vos_dev_write(hGPIO_PORT_A,&leds,1,NULL);


		// use ioctl to see if bus available
		hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_GET_CONNECT_STATE;
		hc_iocb.get = &connectstate;

	vos_dev_ioctl(hUSBHOST_2, &hc_iocb);

		if (connectstate == PORT_STATE_ENUMERATED)
		{
			leds = led[1];  vos_dev_write(hGPIO_PORT_A,&leds,1,NULL);
			// find and connect a BOMS device
			// USBHost ioctl to find first BOMS device on host
			hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_FIND_HANDLE_BY_CLASS;
			hc_iocb.handle.dif = NULL;
			hc_iocb.set = &hc_iocb_class;
			hc_iocb.get = &ifDev;
			hc_iocb_class.dev_class = USB_CLASS_MASS_STORAGE;
			hc_iocb_class.dev_subclass = USB_SUBCLASS_MASS_STORAGE_SCSI;
			hc_iocb_class.dev_protocol = USB_PROTOCOL_MASS_STORAGE_BOMS;

			if (vos_dev_ioctl(hUSBHOST_2, &hc_iocb) != USBHOST_OK)
			{
				break;
			}

			// now we have a device, intialise a BOMS driver for it
			hBOMS_2 = vos_dev_open(VOS_DEV_BOMS_2);

			// BOMS ioctl to attach BOMS driver to device on host
			boms_iocb.ioctl_code = MSI_IOCTL_BOMS_ATTACH;
			boms_iocb.set = &boms_att;
			boms_iocb.get = NULL;
			boms_att.hc_handle = hUSBHOST_2;
			boms_att.ifDev = ifDev;

			status = vos_dev_ioctl(hBOMS_2, &boms_iocb);
			if (status != MSI_OK)
			{
				leds = led[3];  vos_dev_write(hGPIO_PORT_A,&leds,1,NULL);
				vos_delay_msecs(1000);
				break;
			}

			boms_iocb.ioctl_code = MSI_IOCTL_GET_SECTOR_SIZE;
			boms_iocb.get = &sectorSize2;
			vos_dev_ioctl(hBOMS_2,&boms_iocb);

			// now connect to the drive to be writtent to in port 1
			hUSBHOST_1 = vos_dev_open(VOS_DEV_USBHOST_1);

			// use ioctl to see if bus available
			hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_GET_CONNECT_STATE;
			hc_iocb.get = &connectstate;

			do
			{
				vos_dev_ioctl(hUSBHOST_1, &hc_iocb);
				vos_delay_msecs(250);
				leds = led[1];  vos_dev_write(hGPIO_PORT_A,&leds,1,NULL);
				vos_delay_msecs(250);
				leds = 0;  vos_dev_write(hGPIO_PORT_A,&leds,1,NULL);
			} while (connectstate!=PORT_STATE_ENUMERATED);

			leds = led[1];  vos_dev_write(hGPIO_PORT_A,&leds,1,NULL);
			// find and connect a BOMS device

			// USBHost ioctl to find first BOMS device on host
			hc_iocb.ioctl_code = VOS_IOCTL_USBHOST_DEVICE_FIND_HANDLE_BY_CLASS;
			hc_iocb.handle.dif = NULL;
			hc_iocb.set = &hc_iocb_class;
			hc_iocb.get = &ifDev;
			hc_iocb_class.dev_class = USB_CLASS_MASS_STORAGE;
			hc_iocb_class.dev_subclass = USB_SUBCLASS_MASS_STORAGE_SCSI;
			hc_iocb_class.dev_protocol = USB_PROTOCOL_MASS_STORAGE_BOMS;

			if (vos_dev_ioctl(hUSBHOST_1, &hc_iocb) != USBHOST_OK)
			{
				leds = led[3];  vos_dev_write(hGPIO_PORT_A,&leds,1,NULL);
				vos_delay_msecs(1000);
				break;
			}

			// now we have a device, intialise a BOMS driver for it
			hBOMS_1 = vos_dev_open(VOS_DEV_BOMS_1);

			// BOMS ioctl to attach BOMS driver to device on host
			boms_iocb.ioctl_code = MSI_IOCTL_BOMS_ATTACH;
			boms_iocb.set = &boms_att;
			boms_iocb.get = NULL;
			boms_att.hc_handle = hUSBHOST_1;
			boms_att.ifDev = ifDev;

			status = vos_dev_ioctl(hBOMS_1, &boms_iocb);
			if (status != MSI_OK)
			{
				leds = led[3];  vos_dev_write(hGPIO_PORT_A,&leds,1,NULL);
				vos_delay_msecs(1000);
				break;
			}

			boms_iocb.ioctl_code = MSI_IOCTL_GET_SECTOR_SIZE;
			boms_iocb.get = &sectorSize1;
			vos_dev_ioctl(hBOMS_1,&boms_iocb);
			clusterSize = BUFFER_SIZE/sectorSize1;

			// time to copy
			vos_init_semaphore(&semRead, 0);
			vos_init_semaphore(&semWrite, 0);
			xfer.sector = sector;
			xfer.buf = pBuffer;
			xfer.total_len = BUFFER_SIZE;
			xfer.buf_len = BUFFER_SIZE;
			xfer.status = MSI_NOT_ACCESSED;
			xfer.s = &semRead;
			xfer.do_phases = MSI_PHASE_ALL;
			do
			{
				// This strange for loop is for updating LEDs without
				// slowing down the process with a tight loop involving
				// GPIO
				for(i=0;i<500;i++)
				{
					status = FatReadSector(sector, pBuffer, BUFFER_SIZE);
					if (status == FAT_OK)
					{
						status = FatWriteSector(sector, pBuffer, BUFFER_SIZE);
					} else
					{
						allDone = 1;
						break;
					}
					sector+=clusterSize;
				}
				ledStep++;
				vos_dev_write(hGPIO_PORT_A, &led[ledStep%5],1,NULL);
			} while((status == FAT_OK)&& !allDone);

			// TO DO: use SCSI command 0x25 to find drive size instead of going till error
			allDone=1;

			boms_iocb.ioctl_code = MSI_IOCTL_BOMS_DETACH;
			if (vos_dev_ioctl(hBOMS_2, &boms_iocb) != MSI_OK)
			{
				leds = led[3];  vos_dev_write(hGPIO_PORT_A,&leds,1,NULL);
				vos_delay_msecs(1000);
				break;
			}
			vos_dev_close(hBOMS_2);

			boms_iocb.ioctl_code = MSI_IOCTL_BOMS_DETACH;
			if (vos_dev_ioctl(hBOMS_1, &boms_iocb) != MSI_OK)
			{
				leds = led[3];  vos_dev_write(hGPIO_PORT_A,&leds,1,NULL);
				vos_delay_msecs(1000);
				break;
			}
			vos_dev_close(hBOMS_1);
			leds = 0;  vos_dev_write(hGPIO_PORT_A,&leds,1,NULL);
			vos_power_down(VOS_WAKE_ON_USB_1); // go to sleep till next time
		}
	} while (!allDone);
}

