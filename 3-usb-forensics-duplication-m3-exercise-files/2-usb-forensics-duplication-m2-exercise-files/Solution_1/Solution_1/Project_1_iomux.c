/*
** Filename: Project_1_iomux.c
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
#include "vos.h"

void iomux_setup(void)
{
	/* FTDI:SIO IOMux Functions */
	// UART_RXD to pin 52 as Input.
	vos_iomux_define_input(52, IOMUX_IN_UART_RXD);
	// UART_TXD to pin 51 as Output.
	vos_iomux_define_output(51, IOMUX_OUT_UART_TXD);
	// SPI_Master_CS_0 to pin 23 as Output.
	vos_iomux_define_output(23, IOMUX_OUT_SPI_MASTER_CS_0);
	// SPI_Master_MOSI to pin 20 as Output.
	vos_iomux_define_output(20, IOMUX_OUT_SPI_MASTER_MOSI);
	// SPI_Master_MISO to pin 22 as Input.
	vos_iomux_define_input(22, IOMUX_IN_SPI_MASTER_MISO);
	// SPI_Master_CLK to pin 19 as Output.
	vos_iomux_define_output(19, IOMUX_OUT_SPI_MASTER_CLK);
	// Debugger to pin 11 as Bi-Directional.
	vos_iomux_define_bidi(199, IOMUX_IN_DEBUGGER, IOMUX_OUT_DEBUGGER);
	/* FTDI:EIO */
}
