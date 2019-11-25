/*
** Multithreaded-Duplicator.c
**
** Template automatically created by Application Wizard 1.2.4.1
**
** Part of solution Double-buffered and multi-threaded in project Multithreaded-Duplicator
*/
#include "vos.h"
#include "string.h"

/* FTDI:SHF Header Files */
#include "USB.h"
#include "USBHost.h"
#include "GPIO.h"
#include "FAT.h"
#include "msi.h"
#include "BOMS.h"
#include "stdio.h"
#include "errno.h"
#include "stdlib.h"
/* FTDI:EHF */


/* FTDI:SDC Driver Constants */
#define VOS_DEV_USBHOST_1 0
#define VOS_DEV_USBHOST_2 1
#define VOS_DEV_GPIO_PORT_A 2
#define VOS_DEV_FAT_FILE_SYSTEM 3
#define VOS_DEV_BOMS_1 4
#define VOS_DEV_BOMS_2 5
#define VOS_DEV_GPIO_PORT_B 6

#define VOS_NUMBER_DEVICES 7
/* FTDI:EDC */

#define BUFFER_SIZE 2048
vos_mutex_t mut1, mut2;  // mutexes for copy threads
vos_semaphore_t semRead, semWrite;
unsigned char *pBuf1; // buffers for copy operations
unsigned char *pBuf2;
unsigned long sector1, sector2;
unsigned short allDone=FALSE;
unsigned short clusterSize;
unsigned char leds;
unsigned char led[5]={0x08, 0x10, 0x20, 0x40, 0x80};
unsigned short ledStep;
unsigned short enumed1=FALSE;
unsigned short enumed2=FALSE;

/* FTDI:SDH Driver Handles */
VOS_HANDLE hUSBHOST_1; // USB Host Port 1
VOS_HANDLE hUSBHOST_2; // USB Host Port 2
VOS_HANDLE hGPIO_PORT_A; // GPIO Port A Driver
VOS_HANDLE hGPIO_PORT_B; // GPIO Port B Driver
VOS_HANDLE hFAT_FILE_SYSTEM; // FAT File System for FAT32 and FAT16
VOS_HANDLE hBOMS_1; // Bulk Only Mass Storage for USB disks
VOS_HANDLE hBOMS_2; // Bulk Only Mass Storage for USB disks
/* FTDI:EDH */

/* FTDI:STP Thread Prototypes */
vos_tcb_t *tcbFIRMWARE;
vos_tcb_t *tcbTHREAD_1;
vos_tcb_t *tcbTHREAD_2;

void firmware();
void thread_1();
void thread_2();
/* FTDI:ETP */

unsigned long ReadNumberSectors(usbhost_device_handle hFlashDrive, usbhost_device_handle* ifDev);

// semaphores for read and write operations
vos_semaphore_t semBuf1, semBuf2;
vos_mutex_t mBuf1, mBuf2;

// LCD control signals
#define lcd_rs   0x10
#define lcd_e    0x20

/* Declaration for IOMUx setup function */
void iomux_setup(void);

/* Main code - entry point to firmware */
void main(void)
{
	/* FTDI:SDD Driver Declarations */
	// GPIO Port A configuration context
	gpio_context_t gpioContextA;
	// GPIO Port B configuration context
	gpio_context_t gpioContextB;

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

	gpioContextB.port_identifier = GPIO_PORT_B;
	gpio_init(VOS_DEV_GPIO_PORT_B, &gpioContextB);

	// Initialise FAT File System Driver
	fatdrv_init(VOS_DEV_FAT_FILE_SYSTEM);

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

	vos_init_semaphore(&semBuf1, 1);
	vos_init_semaphore(&semBuf2, 1);
	vos_init_mutex(&mBuf1, 0);
	vos_init_mutex(&mBuf2, 0);


	/* FTDI:SCT Thread Creation */
	tcbFIRMWARE = vos_create_thread_ex(20, 1024, firmware, "Application", 0);
	tcbTHREAD_1 = vos_create_thread_ex(20, 512, thread_1, "Thread_1", 0);
	tcbTHREAD_2 = vos_create_thread_ex(20, 512, thread_2, "Thread_2", 0);
	/* FTDI:ECT */

	vos_start_scheduler();

main_loop:
	goto main_loop;
}

/* Code for opening and closing drivers - move to required places in Application Threads */
/* FTDI:SDA Driver Open */
// hUSBHOST_1 = vos_dev_open(VOS_DEV_USBHOST_1);
// hUSBHOST_2 = vos_dev_open(VOS_DEV_USBHOST_2);
// hGPIO_PORT_A = vos_dev_open(VOS_DEV_GPIO_PORT_A);
// hFAT_FILE_SYSTEM = vos_dev_open(VOS_DEV_FAT_FILE_SYSTEM);
// hBOMS_1 = vos_dev_open(VOS_DEV_BOMS_1);
// hBOMS_2 = vos_dev_open(VOS_DEV_BOMS_2);
// hSTDIO = vos_dev_open(VOS_DEV_STDIO);
// hSTDLIB = vos_dev_open(VOS_DEV_STDLIB);
/* FTDI:EDA */

/* FTDI:SDB Driver Close */
// vos_dev_close(hUSBHOST_1);
// vos_dev_close(hUSBHOST_2);
// vos_dev_close(hGPIO_PORT_A);
// vos_dev_close(hFAT_FILE_SYSTEM);
// vos_dev_close(hBOMS_1);
// vos_dev_close(hBOMS_2);
// vos_dev_close(hSTDIO);
// vos_dev_close(hSTDLIB);
/* FTDI:EDB */



void write_lcd_cmd(VOS_HANDLE hLCD, unsigned char byte)
{
    unsigned char cmd;
    // Write High nibble data to LCD
    cmd = (((byte >> 4) &0x0F) | lcd_e);
    cmd = (cmd &(~lcd_rs)); // Select Registers
    vos_dev_write(hLCD,&cmd,1,NULL);
    // Toggle 'E' pin
    cmd &= (~lcd_e);
    vos_dev_write(hLCD,&cmd,1,NULL);
    // Write Low nibble data to LCD
    cmd = ((byte &0x0F) | lcd_e);
    cmd = (cmd &(~lcd_rs)); // Select Registers
    vos_dev_write(hLCD,&cmd,1,NULL);
    // Toggle 'E' pin
    cmd &= (~lcd_e);
    vos_dev_write(hLCD,&cmd,1,NULL);
    vos_delay_msecs(1);

}

void write_lcd_data(VOS_HANDLE hLCD, unsigned char byte)
{
    unsigned char cmd;

    // Write High nibble data to LCD
    cmd = (((byte >> 4)&0x0F) | lcd_rs);
    cmd = (cmd | lcd_e); // Select DDRAM
    vos_dev_write(hLCD,&cmd,1,NULL);
    // Toggle 'E' pin
    cmd &= (~lcd_e);
    vos_dev_write(hLCD,&cmd,1,NULL);
    // Write Low nibble data to LCD
    cmd = ((byte & 0x0F) | lcd_rs);
    cmd = (cmd | lcd_e); // Select DDRAM
    vos_dev_write(hLCD,&cmd,1,NULL);
    // Toggle 'E' pin
    cmd &= (~lcd_e);
    vos_dev_write(hLCD,&cmd,1,NULL);
    vos_delay_msecs(1);

}
void write_lcd_str(VOS_HANDLE hLCD, unsigned char *str)
{
    while(*str != '\0')
    {
         write_lcd_data(hLCD, *str);
         ++str;
    }
}

void lcd_ini(VOS_HANDLE hLCD)
{
    vos_delay_msecs(100);
    // Send Reset command
    write_lcd_cmd(hLCD, 0x03);
    vos_delay_msecs(2);
    // Send Function Set
    write_lcd_cmd(hLCD, 0x28);
    vos_delay_msecs(2);
    write_lcd_cmd(hLCD, 0x28);
    vos_delay_msecs(2);
    // Send Display control command
    write_lcd_cmd(hLCD, 0x0C);
    vos_delay_msecs(2);
    // Send Display Clear command
    write_lcd_cmd(hLCD, 0x01);
    vos_delay_msecs(2);
    // Send Entry Mode Set command
    write_lcd_cmd(hLCD, 0x06);
    vos_delay_msecs(2);
}

void lcd_clear(VOS_HANDLE hLcd)
{
	// Send Display Clear command
    write_lcd_cmd(hLcd, 0x01);
    vos_delay_msecs(2);
}

void write_lcd_line1(VOS_HANDLE hLcd, unsigned char* str)
{	    // Set 1-st line address
    write_lcd_cmd(hLcd, (0x01 | 0x80));
    // Send string to LCD
    write_lcd_str(hLcd, str);
}

void write_lcd_line2(VOS_HANDLE hLcd, unsigned char* str)
{
    // Set 2-nd line address
    write_lcd_cmd(hLcd, (0x40 | 0x80));
    // Send string to LCD
    write_lcd_str(hLcd, str);
}

/* Application Threads */

void firmware()
{
	unsigned short sectorSize2, sectorSize1;
	unsigned char connectstate;
	unsigned char status;
	unsigned char *str1; // line one of display
	unsigned char *str2; // line two of display

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
	FILE *file;
	// GPIO variables
	gpio_ioctl_cb_t gpio_iocb;
	gpio_ioctl_cb_t gpio_iocb2;

	unsigned char leds;
	usbhost_xfer_t uxfer;

	int i; //counting variable

	pBuf1 = malloc(BUFFER_SIZE);
	pBuf2 = malloc(BUFFER_SIZE);

	// open host controller
	hUSBHOST_2 = vos_dev_open(VOS_DEV_USBHOST_2);

	// open GPIO device
	hGPIO_PORT_A = vos_dev_open(VOS_DEV_GPIO_PORT_A);

	gpio_iocb.ioctl_code = VOS_IOCTL_GPIO_SET_MASK;
	gpio_iocb.value = 0xff; // set all as output
	vos_dev_ioctl(hGPIO_PORT_A, &gpio_iocb);

	hGPIO_PORT_B = vos_dev_open(VOS_DEV_GPIO_PORT_B);

	gpio_iocb2.ioctl_code = VOS_IOCTL_GPIO_SET_MASK;
	gpio_iocb2.value = 0xff; // set all as output
	vos_dev_ioctl(hGPIO_PORT_B, &gpio_iocb2);

	lcd_ini(hGPIO_PORT_B);
	lcd_clear(hGPIO_PORT_B);
	str1 = " USB Duplicator";
	write_lcd_line1(hGPIO_PORT_B, str1);
	str2 = "Insert Original";
	write_lcd_line2(hGPIO_PORT_B, str2);


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
			str2 = " Insert Target ";
			write_lcd_line2(hGPIO_PORT_B, str2);

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
				vos_delay_msecs(1000);
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
				str2 = "  Enum Error  ";
				write_lcd_line2(hGPIO_PORT_B, str2);
				break;
			}

			enumed2 = TRUE;
			boms_iocb.ioctl_code = MSI_IOCTL_GET_SECTOR_SIZE;
			boms_iocb.get = &sectorSize2;
			vos_dev_ioctl(hBOMS_2,&boms_iocb);


			//ReadNumberSectors(hUSBHOST_2, &ifDev);

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
				str2 = "  BOMS Error  ";
				write_lcd_line2(hGPIO_PORT_B, str2);
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
				str2 = "  BOMS Error  ";
				write_lcd_line2(hGPIO_PORT_B, str2);
				vos_delay_msecs(1000);
				break;
			}

			boms_iocb.ioctl_code = MSI_IOCTL_GET_SECTOR_SIZE;
			boms_iocb.get = &sectorSize1;
			vos_dev_ioctl(hBOMS_1,&boms_iocb);
			clusterSize = BUFFER_SIZE/sectorSize1;

			// time to copy
			enumed1 = TRUE;
			vos_wait_semaphore(&semBuf1);
			str2 = "  Copying...  ";
			write_lcd_line2(hGPIO_PORT_B, str2);


			do
			{
				// wait until both threads complete
				vos_delay_msecs(1000);
			} while(!allDone);

			// TO DO: use SCSI command 0x25 to find drive size instead of going till error

			boms_iocb.ioctl_code = MSI_IOCTL_BOMS_DETACH;
			if (vos_dev_ioctl(hBOMS_2, &boms_iocb) != MSI_OK)
			{
				leds = led[3];  vos_dev_write(hGPIO_PORT_A,&leds,1,NULL);
				str2 = "  Detach Err  ";
				write_lcd_line2(hGPIO_PORT_B, str2);
				vos_delay_msecs(1000);
				break;
			}
			vos_dev_close(hBOMS_2);

			boms_iocb.ioctl_code = MSI_IOCTL_BOMS_DETACH;
			if (vos_dev_ioctl(hBOMS_1, &boms_iocb) != MSI_OK)
			{
				leds = led[3];  vos_dev_write(hGPIO_PORT_A,&leds,1,NULL);
				str2 = "  Detach Err  ";
				write_lcd_line2(hGPIO_PORT_B, str2);
				vos_delay_msecs(1000);
				break;
			}
			vos_dev_close(hBOMS_1);

			leds = 0;  vos_dev_write(hGPIO_PORT_A,&leds,1,NULL);
			str2 = "  All Done!  ";
			write_lcd_line2(hGPIO_PORT_B, str2);
			vos_power_down(VOS_WAKE_ON_USB_1); // go to sleep till next time
		}
	} while (!allDone);

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
	xfer.s = &semRead;
	xfer.do_phases = MSI_PHASE_ALL;
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
	xfer.do_phases = MSI_PHASE_ALL;
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

void thread_1()
{
	unsigned short i;
	unsigned char status;

	sector1 = 0;
	sector2 = clusterSize;

	while (!enumed2)
	{
		vos_delay_msecs(1000);
	}

	do
	{
		// this funny for loop is to speed up processing
		// by eliminating as much as possible from a tight loop
		// while still providing status through LEDs
		for(i=0;i<500;i++)
		{
			vos_wait_semaphore(&semBuf1);
			vos_lock_mutex(&mBuf1);
			status = FatReadSector(sector1, pBuf1, BUFFER_SIZE);
			vos_unlock_mutex(&mBuf1);
			if (status == FAT_OK)
			{
				vos_wait_semaphore(&semBuf2);
				vos_lock_mutex(&mBuf2);
				status = FatReadSector(sector2, pBuf2, BUFFER_SIZE);
				vos_unlock_mutex(&mBuf2);
			} else
			{
				allDone = 1;
				break;
			}
			sector1 += 2*clusterSize;
			sector2 += 2*clusterSize;
		}
		ledStep++;
		vos_dev_write(hGPIO_PORT_A, &led[ledStep%5],1,NULL);
	} while(!allDone);

}

void thread_2()
{
	unsigned char status;

	while(!enumed1)
		vos_delay_msecs(1000);

	do
	{
		vos_lock_mutex(&mBuf1);
		status = FatWriteSector(sector1, pBuf1, BUFFER_SIZE);
		vos_unlock_mutex(&mBuf1);
		vos_signal_semaphore(&semBuf1);
		if (status == FAT_OK)
		{
			vos_lock_mutex(&mBuf2);
			status = FatWriteSector(sector2, pBuf2, BUFFER_SIZE);
			vos_unlock_mutex(&mBuf2);
			vos_signal_semaphore(&semBuf2);
		} else
		{
			allDone = 1;
			break;
		}
	} while(!allDone);
}


