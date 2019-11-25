/*
** Filename: Project_1.c
**
** Automatically created by Application Wizard 2.0.2
** 
** Part of solution Solution_1 in project Project_1
**
** Comments: 
**
** Important: Sections between markers "FTDI:S*" and "FTDI:E*" will be overwritten by
** the Application Wizard
*/

#include "Project_1.h"

/* FTDI:STP Thread Prototypes */
vos_tcb_t *tcbFIRMWARE;

void firmware();
/* FTDI:ETP */

/* FTDI:SDH Driver Handles */
VOS_HANDLE hUSBHOST_1; // USB Host Port 1
VOS_HANDLE hUART; // UART Interface Driver
VOS_HANDLE hFIFO; // FIFO Interface Driver
VOS_HANDLE hSPI_MASTER; // SPIMaster Interface Driver
VOS_HANDLE hSPI_SLAVE_0; // SPISlave Port 0 Interface Driver
VOS_HANDLE hSPI_SLAVE_1; // SPISlave Port 1 Interface Driver
VOS_HANDLE hGPIO_PORT_A; // GPIO Port A Driver
VOS_HANDLE hPWM; // PWM Driver
VOS_HANDLE hTIMER_1; // Timer 1 Driver
VOS_HANDLE hTIMER_2; // Timer 2 Driver
VOS_HANDLE hETHERNET_W5100; // Connects to Wiznet W5100 devices using the SPI Interface
VOS_HANDLE hRTC; // Connects to RTC devices using the SPI Interface
VOS_HANDLE hADC_MCP3008; // Connects to MCP3008 and MCP4008 ADC devices using the SPI Interface
/* FTDI:EDH */

/* Declaration for IOMUx setup function */
void iomux_setup(void);

/* Main code - entry point to firmware */
void main(void)
{
	/* FTDI:SDD Driver Declarations */
	// UART Driver configuration context
	uart_context_t uartContext;
	// FIFO Driver configuration context
	fifo_context_t fifoContext;
	// SPI Master configuration context
	spimaster_context_t spimContext;
	// SPI Slave 0 configuration context
	spislave_context_t spisContext0;
	// SPI Slave 1 configuration context
	spislave_context_t spisContext1;
	// GPIO Port A configuration context
	gpio_context_t gpioContextA;
	// Timer 1 configuration context
	tmr_context_t tmrContext1;
	// Timer 2 configuration context
	tmr_context_t tmrContext2;
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
	// Initialise UART
	uartContext.buffer_size = VOS_BUFFER_SIZE_128_BYTES;
	uart_init(VOS_DEV_UART,&uartContext);
	
	// Initialise FIFO
	fifoContext.buffer_size = VOS_BUFFER_SIZE_128_BYTES;
	fifo_init(VOS_DEV_FIFO,&fifoContext);
	
	// Initialise SPI Master
	spimContext.buffer_size = VOS_BUFFER_SIZE_128_BYTES;
	spimaster_init(VOS_DEV_SPI_MASTER,&spimContext);
	
	// Initialise SPI Slave 0
	spisContext0.buffer_size = VOS_BUFFER_SIZE_128_BYTES;
	spislave_init(VOS_DEV_SPI_SLAVE_0,&spisContext0);
	
	// Initialise SPI Slave 1
	spisContext1.buffer_size = VOS_BUFFER_SIZE_128_BYTES;
	spislave_init(VOS_DEV_SPI_SLAVE_1,&spisContext1);
	
	// Initialise GPIO A
	gpioContextA.port_identifier = GPIO_PORT_A;
	gpio_init(VOS_DEV_GPIO_PORT_A,&gpioContextA);
	
	// Initialise PWM
	pwm_init(VOS_DEV_PWM);
	
	// Initialise Timer 1
	tmrContext1.timer_identifier = 1;
	tmr_init(VOS_DEV_TIMER_1,&tmrContext1);
	
	// Initialise Timer 2
	tmrContext2.timer_identifier = 2;
	tmr_init(VOS_DEV_TIMER_2,&tmrContext2);
	
	// Initialise Ethernet W5100 Device Driver
	ethernet_init(VOS_DEV_ETHERNET_W5100);
	
	// Initialise RTC Device Driver
	rtc_init(VOS_DEV_RTC);
	
	// Initialise MCP3008 ADC Device Driver
	adc_mcp3008_init(VOS_DEV_ADC_MCP3008);
	
	
	
	
	
	
	
	
	
	// Initialise USB Host
	usbhostContext.if_count = 8;
	usbhostContext.ep_count = 16;
	usbhostContext.xfer_count = 2;
	usbhostContext.iso_xfer_count = 2;
	usbhost_init(VOS_DEV_USBHOST_1, -1, &usbhostContext);
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


VOS_HANDLE rtc_attach(VOS_HANDLE hSPIMASTER, VOS_HANDLE hGPIO, unsigned char pin, unsigned char ssline, unsigned char devRTC)
{
	rtc_ioctl_cb_attach_t atInfo;
	rtc_ioctl_cb_t rtc_iocb;
	VOS_HANDLE hRTC;

	hRTC = vos_dev_open(devRTC);

	atInfo.spi_master_handle = hSPIMASTER;
	atInfo.spi_master_dma_mode = DMA_ACQUIRE_AS_REQUIRED;
	atInfo.spi_ss = ssline; // Slave Select line to use...
	atInfo.gpio_int_handle = hGPIO;
	atInfo.gpio_int_pin = pin;

	// Attach to driver...
	rtc_iocb.ioctl_code = RTC_IOCTL_ATTACH;
	rtc_iocb.set = &atInfo;
	if (vos_dev_ioctl(hRTC, &rtc_iocb) != RTC_OK)
	{
		vos_dev_close(hRTC);
		hRTC = NULL;
	}

	return hRTC;
}

void rtc_detach(VOS_HANDLE hRTC)
{
	rtc_ioctl_cb_t rtc_iocb;

	if (hRTC)
	{
		rtc_iocb.ioctl_code = RTC_IOCTL_DETACH;
		rtc_iocb.set = NULL;
		rtc_iocb.get = NULL;

		vos_dev_ioctl(hRTC, &rtc_iocb);
		vos_dev_close(hRTC);
	}
}

/* FTDI:ESP */

void open_drivers(void)
{
        /* Code for opening and closing drivers - move to required places in Application Threads */
        /* FTDI:SDA Driver Open */
        hUSBHOST_1 = vos_dev_open(VOS_DEV_USBHOST_1);
        hUART = vos_dev_open(VOS_DEV_UART);
        hFIFO = vos_dev_open(VOS_DEV_FIFO);
        hSPI_MASTER = vos_dev_open(VOS_DEV_SPI_MASTER);
        hSPI_SLAVE_0 = vos_dev_open(VOS_DEV_SPI_SLAVE_0);
        hSPI_SLAVE_1 = vos_dev_open(VOS_DEV_SPI_SLAVE_1);
        hGPIO_PORT_A = vos_dev_open(VOS_DEV_GPIO_PORT_A);
        hPWM = vos_dev_open(VOS_DEV_PWM);
        hTIMER_1 = vos_dev_open(VOS_DEV_TIMER_1);
        hTIMER_2 = vos_dev_open(VOS_DEV_TIMER_2);
        hETHERNET_W5100 = vos_dev_open(VOS_DEV_ETHERNET_W5100);
        hADC_MCP3008 = vos_dev_open(VOS_DEV_ADC_MCP3008);
        /* FTDI:EDA */
}

void attach_drivers(void)
{
        /* FTDI:SUA Layered Driver Attach Function Calls */
        // RTC attach must specify GPIO handle and pin is required and slave select line
        //hRTC = rtc_attach(hSPI_MASTER, hGPIO_PORT_B, GPIO_PIN_2, 0, VOS_DEV_RTC);
        // TODO attach stdio to file system and stdio interface
        //fsAttach(hFAT_FILE_SYSTEM); // VOS_HANDLE for file system (typically FAT)
        //stdioAttach(hUART); // VOS_HANDLE for stdio interface (typically UART)
        // TODO attach stdio to file system and stdio interface
        //fsAttach(hFAT_FILE_SYSTEM); // VOS_HANDLE for file system (typically FAT)
        //stdioAttach(hUART); // VOS_HANDLE for stdio interface (typically UART)
        /* FTDI:EUA */
}

void close_drivers(void)
{
        /* FTDI:SDB Driver Close */
        vos_dev_close(hUSBHOST_1);
        vos_dev_close(hUART);
        vos_dev_close(hFIFO);
        vos_dev_close(hSPI_MASTER);
        vos_dev_close(hSPI_SLAVE_0);
        vos_dev_close(hSPI_SLAVE_1);
        vos_dev_close(hGPIO_PORT_A);
        vos_dev_close(hPWM);
        vos_dev_close(hTIMER_1);
        vos_dev_close(hTIMER_2);
        vos_dev_close(hETHERNET_W5100);
        vos_dev_close(hADC_MCP3008);
        /* FTDI:EDB */
}

/* Application Threads */

void firmware()
{
	/* Thread code to be added here */


}

