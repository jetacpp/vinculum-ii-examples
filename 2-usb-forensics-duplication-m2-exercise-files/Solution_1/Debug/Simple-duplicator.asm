.FILE "Debug\Simple-duplicator.c"

.DATA

.WEAK	"%eax"
.WEAK	"%ebx"
.WEAK	"%ecx"
led	.DB	5	2, 4, 8, 16, 32
.GLOBAL	  DO_NOT_EXPORT "led"
hFAT_FILE_SYSTEM_1	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hFAT_FILE_SYSTEM_1"
hFAT_FILE_SYSTEM_2	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hFAT_FILE_SYSTEM_2"
leds	.DB	1	?
.GLOBAL	  DO_NOT_EXPORT "leds"
hBOMS_1	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hBOMS_1"
hBOMS_2	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hBOMS_2"
hTIMER_1	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hTIMER_1"
semRead	.DB	5	?
.GLOBAL	  DO_NOT_EXPORT "semRead"
ledStep	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "ledStep"
hUSBHOST_1	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hUSBHOST_1"
hUSBHOST_2	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hUSBHOST_2"
semWrite	.DB	5	?
.GLOBAL	  DO_NOT_EXPORT "semWrite"
tcbFIRMWARE	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "tcbFIRMWARE"
hGPIO_PORT_A	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hGPIO_PORT_A"
Str@0	.ASCIIZ	"Application"
st%FatReadSector%xfer	.DB	28	0
st%FatWriteSector%xfer	.DB	28	0


.ENUM	"IOMUX_SIGNALS"
.ENUMERATOR	"IOMUX_IN_DEBUGGER"	0
.ENUMERATOR	"IOMUX_IN_UART_RXD"	1
.ENUMERATOR	"IOMUX_IN_UART_CTS_N"	2
.ENUMERATOR	"IOMUX_IN_UART_DSR_N"	3
.ENUMERATOR	"IOMUX_IN_UART_DCD"	4
.ENUMERATOR	"IOMUX_IN_UART_RI"	5
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_0"	6
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_1"	7
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_2"	8
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_3"	9
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_4"	10
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_5"	11
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_6"	12
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_7"	13
.ENUMERATOR	"IOMUX_IN_FIFO_OE_N"	14
.ENUMERATOR	"IOMUX_IN_FIFO_RD_N"	15
.ENUMERATOR	"IOMUX_IN_FIFO_WR_N"	16
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_0_CLK"	17
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_0_MOSI"	18
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_0_CS"	19
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_1_CLK"	20
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_1_MOSI"	21
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_1_CS"	22
.ENUMERATOR	"IOMUX_IN_SPI_MASTER_MISO"	23
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_0"	24
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_1"	25
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_2"	26
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_3"	27
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_4"	28
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_5"	29
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_6"	30
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_7"	31
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_0"	32
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_1"	33
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_2"	34
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_3"	35
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_4"	36
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_5"	37
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_6"	38
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_7"	39
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_0"	40
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_1"	41
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_2"	42
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_3"	43
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_4"	44
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_5"	45
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_6"	46
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_7"	47
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_0"	48
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_1"	49
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_2"	50
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_3"	51
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_4"	52
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_5"	53
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_6"	54
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_7"	55
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_0"	56
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_1"	57
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_2"	58
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_3"	59
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_4"	60
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_5"	61
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_6"	62
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_7"	63
.ENUMERATOR	"IOMUX_OUT_DEBUGGER"	64
.ENUMERATOR	"IOMUX_OUT_UART_TXD"	65
.ENUMERATOR	"IOMUX_OUT_UART_RTS_N"	66
.ENUMERATOR	"IOMUX_OUT_UART_DTR_N"	67
.ENUMERATOR	"IOMUX_OUT_UART_TX_ACTIVE"	68
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_0"	69
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_1"	70
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_2"	71
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_3"	72
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_4"	73
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_5"	74
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_6"	75
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_7"	76
.ENUMERATOR	"IOMUX_OUT_FIFO_RXF_N"	77
.ENUMERATOR	"IOMUX_OUT_FIFO_TXE_N"	78
.ENUMERATOR	"IOMUX_OUT_PWM_0"	79
.ENUMERATOR	"IOMUX_OUT_PWM_1"	80
.ENUMERATOR	"IOMUX_OUT_PWM_2"	81
.ENUMERATOR	"IOMUX_OUT_PWM_3"	82
.ENUMERATOR	"IOMUX_OUT_PWM_4"	83
.ENUMERATOR	"IOMUX_OUT_PWM_5"	84
.ENUMERATOR	"IOMUX_OUT_PWM_6"	85
.ENUMERATOR	"IOMUX_OUT_PWM_7"	86
.ENUMERATOR	"IOMUX_OUT_SPI_SLAVE_0_MOSI"	87
.ENUMERATOR	"IOMUX_OUT_SPI_SLAVE_0_MISO"	88
.ENUMERATOR	"IOMUX_OUT_SPI_SLAVE_1_MOSI"	89
.ENUMERATOR	"IOMUX_OUT_SPI_SLAVE_1_MISO"	90
.ENUMERATOR	"IOMUX_OUT_SPI_MASTER_CLK"	91
.ENUMERATOR	"IOMUX_OUT_SPI_MASTER_MOSI"	92
.ENUMERATOR	"IOMUX_OUT_SPI_MASTER_CS_0"	93
.ENUMERATOR	"IOMUX_OUT_SPI_MASTER_CS_1"	94
.ENUMERATOR	"IOMUX_OUT_FIFO_CLKOUT_245"	95
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_0"	96
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_1"	97
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_2"	98
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_3"	99
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_4"	100
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_5"	101
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_6"	102
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_7"	103
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_0"	104
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_1"	105
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_2"	106
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_3"	107
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_4"	108
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_5"	109
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_6"	110
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_7"	111
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_0"	112
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_1"	113
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_2"	114
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_3"	115
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_4"	116
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_5"	117
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_6"	118
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_7"	119
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_0"	120
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_1"	121
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_2"	122
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_3"	123
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_4"	124
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_5"	125
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_6"	126
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_7"	127
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_0"	128
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_1"	129
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_2"	130
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_3"	131
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_4"	132
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_5"	133
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_6"	134
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_7"	135
.ENUM_END	"IOMUX_SIGNALS"

.STRUCT	"_vos_tcb_t"	368
.STRUCTMEM	"next"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"state"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"orig_priority"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"priority"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"quantum"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"delay"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"sp"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"eax"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"ebx"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"ecx"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"r0"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"r1"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"r2"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"r3"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"system_data"	"void"	16	0	1	0	0	0	1	
.STRUCTMEM	"system_profiler"	"void"	16	0	1	0	0	0	1	
.STRUCTMEM	"flags"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"semaphore_list"	"void"	16	0	1	0	0	0	1	
.STRUCT_END	"_vos_tcb_t"

.STRUCT	"_msi_ioctl_cb_info_t"	256
.STRUCTMEM	"vendorId"	"char"	64	0	0	0	1	1	0	
.STRUCTMEM	"productId"	"char"	128	0	0	0	1	1	0	
.STRUCTMEM	"rev"	"char"	32	0	0	0	1	1	0	
.STRUCTMEM	"vid"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"pid"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_msi_ioctl_cb_info_t"

.STRUCT	"_usb_deviceRequest_t"	64
.STRUCTMEM	"bmRequestType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bRequest"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wValue"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"wIndex"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"wLength"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceRequest_t"

.ENUM	"dma_status"
.ENUMERATOR	"DMA_OK"	0
.ENUMERATOR	"DMA_INVALID_PARAMETER"	1
.ENUMERATOR	"DMA_ACQUIRE_ERROR"	2
.ENUMERATOR	"DMA_ENABLE_ERROR"	3
.ENUMERATOR	"DMA_DISABLE_ERROR"	4
.ENUMERATOR	"DMA_CONFIGURE_ERROR"	5
.ENUMERATOR	"DMA_ERROR"	6
.ENUMERATOR	"DMA_FIFO_ERROR"	7
.ENUM_END	"dma_status"

.STRUCT	"_usb_hubDescriptor_t"	312
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNbrPorts"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wHubCharacteristics"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bPwrOn2PwrGood"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bHubContrCurrent"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"DeviceRemovable"	"char"	128	0	0	0	1	1	0	
.STRUCTMEM	"PortPwrCtrlMask"	"char"	128	0	0	0	1	1	0	
.STRUCT_END	"_usb_hubDescriptor_t"

.STRUCT	"_usb_hubPortStatus_t"	32
.STRUCTMEM	"currentConnectStatus"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portEnabled"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portSuspend"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portOverCurrent"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portReset"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv1"	"short"	3	0	0	0	0	0	0	
.STRUCTMEM	"portPower"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portLowSpeed"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portHighSpeed"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portTest"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portIndicator"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv2"	"short"	3	0	0	0	0	0	0	
.STRUCTMEM	"currentConnectStatusChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portEnabledChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portSuspendChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portOverCurrentChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portResetChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv3"	"short"	3	0	0	0	0	0	0	
.STRUCTMEM	"portPowerChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portLowSpeedChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portHighSpeedChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portTestChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portIndicatorChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv4"	"short"	3	0	0	0	0	0	0	
.STRUCT_END	"_usb_hubPortStatus_t"

.ENUM	"USBHOST_STATUS"
.ENUMERATOR	"USBHOST_OK"	0
.ENUMERATOR	"USBHOST_NOT_FOUND"	1
.ENUMERATOR	"USBHOST_PENDING"	2
.ENUMERATOR	"USBHOST_INVALID_PARAMETER"	3
.ENUMERATOR	"USBHOST_INVALID_BUFFER"	4
.ENUMERATOR	"USBHOST_INCOMPLETE_ENUM"	5
.ENUMERATOR	"USBHOST_INVALID_CONFIGURATION"	6
.ENUMERATOR	"USBHOST_TD_FULL"	7
.ENUMERATOR	"USBHOST_EP_FULL"	8
.ENUMERATOR	"USBHOST_IF_FULL"	9
.ENUMERATOR	"USBHOST_EP_HALTED"	10
.ENUMERATOR	"USBHOST_EP_INVALID"	11
.ENUMERATOR	"USBHOST_INVALID_STATE"	12
.ENUMERATOR	"USBHOST_ERROR"	13
.ENUMERATOR	"USBHOST_CC_ERROR"	16
.ENUMERATOR	"USBHOST_FATAL_ERROR"	255
.ENUM_END	"USBHOST_STATUS"

.STRUCT	"_fatdrv_ioctl_cb_fs_t"	216
.STRUCTMEM	"fsType"	"char"	8	1	0	0	0	0	0	
.STRUCTMEM	"freeSpaceH"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"freeSpaceL"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"capacityH"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"capacityL"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"bytesPerCluster"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"bytesPerSector"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"volID"	"long"	32	0	0	0	0	0	0	
.STRUCT_END	"_fatdrv_ioctl_cb_fs_t"

.STRUCT	"_vos_gpio_t"	40
.STRUCTMEM	"gpio_port_a"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_b"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_c"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_d"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_e"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_gpio_t"

.STRUCT	"_usb_deviceEndpointDescriptor_t"	56
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bEndpointAddress"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bmAttributes"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wMaxPacketSize"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bInterval"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceEndpointDescriptor_t"

.STRUCT	"_vos_semaphore_list_t"	56
.STRUCTMEM	"next"	"_vos_semaphore_list_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"siz"	"char"	8	1	0	0	0	0	0	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"result"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"list"	"_vos_semaphore_t"	16	0	1	0	1	1	1	
.STRUCT_END	"_vos_semaphore_list_t"

.STRUCT	"_fatdrv_ioctl_cb_dir_t"	16
.STRUCTMEM	"filename"	"char"	16	1	1	0	0	0	1	
.STRUCT_END	"_fatdrv_ioctl_cb_dir_t"

.STRUCT	"_usb_deviceInterfaceDescriptor_t"	72
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceNumber"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bAlternateSetting"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNumEndpoints"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceSubclass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceProtocol"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iInterface"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceInterfaceDescriptor_t"

.STRUCT	"_usb_deviceQualifierDescriptor_t"	80
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bcdUSB"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceSubclass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceProtocol"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bMaxPacketSize0"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNumConfigurations"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bReserved"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceQualifierDescriptor_t"

.STRUCT	"_vos_mutex_t"	48
.STRUCTMEM	"threads"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"owner"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"attr"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"ceiling"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_mutex_t"

.STRUCT	"_boms_ioctl_cb_attach_t"	48
.STRUCTMEM	"hc_handle"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"ifDev"	"int"	32	1	0	0	0	0	0	
.STRUCT_END	"_boms_ioctl_cb_attach_t"

.STRUCT	"_fatdrv_ioctl_cb_file_t"	56
.STRUCTMEM	"filename"	"char"	16	1	1	0	0	0	1	
.STRUCTMEM	"offset"	"int"	32	1	0	0	0	0	0	
.STRUCTMEM	"mode"	"char"	8	1	0	0	0	0	0	
.STRUCT_END	"_fatdrv_ioctl_cb_file_t"

.STRUCT	"_fat_stream_t"	96
.STRUCTMEM	"file_ctx"	"_file_context_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"buf"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"len"	"long"	32	0	0	0	0	0	0	
.STRUCTMEM	"actual"	"long"	32	0	0	0	0	0	0	
.STRUCT_END	"_fat_stream_t"

.STRUCT	"_vos_device_t"	80
.STRUCTMEM	"mutex"	"_vos_mutex_t"	48	0	0	0	0	0	0	
.STRUCTMEM	"driver"	"_vos_driver_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"context"	"void"	16	0	1	0	0	0	1	
.STRUCT_END	"_vos_device_t"

.STRUCT	"_fatdrv_ioctl_cb_time_t"	80
.STRUCTMEM	"crtDate"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"crtTime"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"wrtDate"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"wrtTime"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"accDate"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_fatdrv_ioctl_cb_time_t"

.STRUCT	"_usb_deviceDescriptor_t"	144
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bcdUSB"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceSubclass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceProtocol"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bMaxPacketSize0"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"idVendor"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"idProduct"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bcdDevice"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"iManufacturer"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iProduct"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iSerialNumber"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNumConfigurations"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceDescriptor_t"

.STRUCT	"_vos_driver_t"	200
.STRUCTMEM	"open"	"void"	32	0	1	0	0	0	1	
.STRUCTMEM	"close"	"void"	32	0	1	0	0	0	1	
.STRUCTMEM	"read"	"char"	32	1	1	0	0	0	1	
.STRUCTMEM	"write"	"char"	32	1	1	0	0	0	1	
.STRUCTMEM	"ioctl"	"char"	32	1	1	0	0	0	1	
.STRUCTMEM	"interrupt"	"void"	32	0	1	0	0	0	1	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_driver_t"

.STRUCT	"_vos_system_data_area_t"	80
.STRUCTMEM	"next"	"_vos_system_data_area_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"tcb"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"count"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"name"	"char"	16	1	1	0	0	0	1	
.STRUCT_END	"_vos_system_data_area_t"

.STRUCT	"_usb_deviceStringDescriptorZero_t"	32
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wLANGID0"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceStringDescriptorZero_t"

.STRUCT	"_msi_xfer_cb_t"	224
.STRUCTMEM	"sector"	"long"	32	0	0	0	0	0	0	
.STRUCTMEM	"s"	"_vos_semaphore_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"buf"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"buf_len"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"total_len"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"do_phases"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"status"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"transport"	"__unnamed_struct_5"	112	0	0	0	0	0	0	
.STRUCT_END	"_msi_xfer_cb_t"

.STRUCT	"_tmr_context_t"	8
.STRUCTMEM	"timer_identifier"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_tmr_context_t"

.STRUCT	"_fat_ioctl_cb_t"	56
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"file_ctx"	"_file_context_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"get"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"set"	"char"	16	0	1	0	0	0	1	
.STRUCT_END	"_fat_ioctl_cb_t"

.STRUCT	"_msi_ioctl_cb_t"	40
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"get"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"set"	"char"	16	0	1	0	0	0	1	
.STRUCT_END	"_msi_ioctl_cb_t"

.STRUCT	"_tmr_ioctl_cb_t"	24
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"param"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_tmr_ioctl_cb_t"

.STRUCT	"_fatdrv_ioctl_cb_attach_t"	24
.STRUCTMEM	"msi_handle"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"partition"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_fatdrv_ioctl_cb_attach_t"

.STRUCT	"_vos_cond_var_t"	40
.STRUCTMEM	"threads"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"lock"	"_vos_mutex_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"state"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_cond_var_t"

.STRUCT	"_file_context_t"	536
.STRUCTMEM	"dirEntry"	"char"	256	0	0	0	1	1	0	
.STRUCTMEM	"mode"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"context"	"char"	272	0	0	0	1	1	0	
.STRUCT_END	"_file_context_t"

.STRUCT	"_gpio_context_t"	8
.STRUCTMEM	"port_identifier"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_gpio_context_t"

.STRUCT	"_usbhost_ioctl_cb_class_t"	24
.STRUCTMEM	"dev_class"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"dev_subclass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"dev_protocol"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_ioctl_cb_class_t"

.STRUCT	"_usbhost_xfer_t"	112
.STRUCTMEM	"ep"	"int"	32	1	0	0	0	0	0	
.STRUCTMEM	"s"	"_vos_semaphore_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"cond_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"buf"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"len"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"resv1"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"zero"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_xfer_t"

.ENUM	"gpioctrl_status"
.ENUMERATOR	"GPIO_OK"	0
.ENUMERATOR	"GPIO_INVALID_PIN"	1
.ENUMERATOR	"GPIO_INVALID_PORT"	2
.ENUMERATOR	"GPIO_INVALID_PARAMETER"	3
.ENUMERATOR	"GPIO_INVALID_INTERRUPT"	4
.ENUMERATOR	"GPIO_INVALID_INTERRUPT_TYPE"	5
.ENUMERATOR	"GPIO_INTERRUPT_NOT_ENABLED"	6
.ENUMERATOR	"GPIO_ERROR"	7
.ENUM_END	"gpioctrl_status"

.STRUCT	"_gpio_ioctl_cb_t"	16
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"value"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_gpio_ioctl_cb_t"

.STRUCT	"_usb_hubStatus_t"	32
.STRUCTMEM	"localPowerSource"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"overCurrent"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv1"	"short"	14	0	0	0	0	0	0	
.STRUCTMEM	"localPowerSourceChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"overCurrentChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv2"	"short"	14	0	0	0	0	0	0	
.STRUCT_END	"_usb_hubStatus_t"

.STRUCT	"_vos_semaphore_t"	40
.STRUCTMEM	"val"	"short"	16	1	0	0	0	0	0	
.STRUCTMEM	"threads"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"usage_count"	"char"	8	1	0	0	0	0	0	
.STRUCT_END	"_vos_semaphore_t"

.STRUCT	"_usb_deviceConfigurationDescriptor_t"	72
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wTotalLength"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bNumInterfaces"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bConfigurationValue"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iConfiguration"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bmAttributes"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bMaxPower"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceConfigurationDescriptor_t"

.STRUCT	"_vos_dma_config_t"	80
.STRUCTMEM	"src"	"__unnamed_struct_1"	16	0	0	0	0	0	0	
.STRUCTMEM	"dest"	"__unnamed_struct_2"	16	0	0	0	0	0	0	
.STRUCTMEM	"bufsiz"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"mode"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"fifosize"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"flow_control"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"afull_trigger"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_dma_config_t"

.STRUCT	"_usbhost_ioctl_cb_vid_pid_t"	32
.STRUCTMEM	"vid"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"pid"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_ioctl_cb_vid_pid_t"

.STRUCT	"_usbhost_ioctl_cb_ep_info_t"	32
.STRUCTMEM	"number"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"max_size"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"speed"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_ioctl_cb_ep_info_t"

.ENUM	"FAT_STATUS"
.ENUMERATOR	"FAT_OK"	0
.ENUMERATOR	"FAT_NOT_FOUND"	1
.ENUMERATOR	"FAT_READ_ONLY"	2
.ENUMERATOR	"FAT_PENDING"	3
.ENUMERATOR	"FAT_INVALID_PARAMETER"	4
.ENUMERATOR	"FAT_INVALID_BUFFER"	5
.ENUMERATOR	"FAT_INVALID_FILE_TYPE"	6
.ENUMERATOR	"FAT_EXISTS"	7
.ENUMERATOR	"FAT_BPB_INVALID"	8
.ENUMERATOR	"FAT_NOT_OPEN"	9
.ENUMERATOR	"FAT_EOF"	10
.ENUMERATOR	"FAT_DIRECTORY_TABLE_FULL"	11
.ENUMERATOR	"FAT_DISK_FULL"	12
.ENUMERATOR	"FAT_ERROR"	13
.ENUMERATOR	"FAT_MSI_ERROR"	128
.ENUMERATOR	"FAT_FATAL_ERROR"	255
.ENUM_END	"FAT_STATUS"

.STRUCT	"_usb_interfaceAssociationDescriptor_t"	64
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bFirstInterface"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceCount"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bFunctionClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bFunctionSubClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bFunctionProtocol"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iFunction"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_interfaceAssociationDescriptor_t"

.ENUM	"MSI_STATUS"
.ENUMERATOR	"MSI_OK"	0
.ENUMERATOR	"MSI_COMMAND_FAILED"	1
.ENUMERATOR	"MSI_NOT_FOUND"	2
.ENUMERATOR	"MSI_INVALID_PARAMETER"	3
.ENUMERATOR	"MSI_INVALID_BUFFER"	4
.ENUMERATOR	"MSI_NOT_ACCESSED"	5
.ENUMERATOR	"MSI_ERROR"	6
.ENUMERATOR	"MSI_RESERVED"	64
.ENUMERATOR	"MSI_TRANSPORT_ERROR"	128
.ENUM_END	"MSI_STATUS"

.ENUM	"__anon_enum_type_1"
.ENUMERATOR	"IDLE"	0
.ENUMERATOR	"BLOCKED"	1
.ENUMERATOR	"READY"	2
.ENUMERATOR	"RUNNING"	3
.ENUMERATOR	"DELAYED"	4
.ENUMERATOR	"GONE"	5
.ENUM_END	"__anon_enum_type_1"

.UNION	"__unnamed_struct_1"	16
.UNIONMEM	"io_addr"	"short"	16	0	0	0	0	0	0	
.UNIONMEM	"mem_addr"	"char"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_1"

.UNION	"__unnamed_struct_2"	16
.UNIONMEM	"io_addr"	"short"	16	0	0	0	0	0	0	
.UNIONMEM	"mem_addr"	"char"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_2"

.STRUCT	"__unnamed_struct_3"	16
.STRUCTMEM	"size"	"short"	11	0	0	0	0	0	0	
.STRUCTMEM	"pad"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"cond_code"	"short"	4	0	0	0	0	0	0	
.STRUCT_END	"__unnamed_struct_3"

.UNION	"__unnamed_struct_4"	32
.UNIONMEM	"ep"	"int"	32	1	0	0	0	0	0	
.UNIONMEM	"dif"	"int"	32	1	0	0	0	0	0	
.UNION_END	"__unnamed_struct_4"

.UNION	"__unnamed_struct_5"	112
.UNIONMEM	"usb"	"_usbhost_xfer_t"	112	0	0	0	0	0	0	
.UNION_END	"__unnamed_struct_5"

.ENUM	"GPIO_STATUS"
.ENUMERATOR	"GPIO_OK"	0
.ENUMERATOR	"GPIO_INVALID_PORT_IDENTIFIER"	1
.ENUMERATOR	"GPIO_INVALID_PARAMETER"	2
.ENUMERATOR	"GPIO_INTERRUPT_NOT_ENABLED"	3
.ENUMERATOR	"GPIO_ERROR"	4
.ENUMERATOR	"GPIO_FATAL_ERROR"	255
.ENUM_END	"GPIO_STATUS"

.ENUM	"BOMS_STATUS"
.ENUMERATOR	"BOMS_HC_CC_ERROR"	64
.ENUMERATOR	"BOMS_CLEAR_HALT"	65
.ENUMERATOR	"BOMS_FATAL_ERROR"	255
.ENUM_END	"BOMS_STATUS"

.STRUCT	"_usbhost_ioctl_cb_dev_info_t"	56
.STRUCTMEM	"port_number"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"addr"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"interface_number"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"speed"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"alt"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"configuration"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"num_configurations"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_ioctl_cb_dev_info_t"

.STRUCT	"_usbhost_context_t"	32
.STRUCTMEM	"if_count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"ep_count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"xfer_count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iso_xfer_count"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_context_t"

.ENUM	"TIMER_STATUS"
.ENUMERATOR	"TIMER_OK"	0
.ENUMERATOR	"TIMER_INVALID_IDENTIFIER"	1
.ENUMERATOR	"TIMER_INVALID_PARAMETER"	2
.ENUMERATOR	"TIMER_ERROR"	3
.ENUMERATOR	"TIMER_FATAL_ERROR"	255
.ENUM_END	"TIMER_STATUS"

.ENUM	"IOMUX_STATUS"
.ENUMERATOR	"IOMUX_OK"	0
.ENUMERATOR	"IOMUX_INVALID_SIGNAL"	1
.ENUMERATOR	"IOMUX_INVALID_PIN_SELECTION"	2
.ENUMERATOR	"IOMUX_UNABLE_TO_ROUTE_SIGNAL"	3
.ENUMERATOR	"IOMUX_INVALID_IOCELL_DRIVE_CURRENT"	4
.ENUMERATOR	"IOMUX_INVALID_IOCELL_TRIGGER"	5
.ENUMERATOR	"IOMUX_INVALID_IOCELL_SLEW_RATE"	6
.ENUMERATOR	"IOMUX_INVALID_IOCELL_PULL"	7
.ENUMERATOR	"IOMUX_ERROR"	8
.ENUM_END	"IOMUX_STATUS"

.STRUCT	"_usbhost_ioctl_cb_t"	80
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"hub_port"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"handle"	"__unnamed_struct_4"	32	0	0	0	0	0	0	
.STRUCTMEM	"get"	"void"	16	0	1	0	0	0	1	
.STRUCTMEM	"set"	"void"	16	0	1	0	0	0	1	
.STRUCT_END	"_usbhost_ioctl_cb_t"

.STRUCT	"_usb_hub_selector_t"	16
.STRUCTMEM	"hub_port"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"selector"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_hub_selector_t"

.STRUCT	"_usb_deviceStringDescriptor_t"	24
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bString"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceStringDescriptor_t"

.STRUCT	"_usbhost_xfer_iso_t"	256
.STRUCTMEM	"ep"	"int"	32	1	0	0	0	0	0	
.STRUCTMEM	"s"	"_vos_semaphore_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"cond_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"buf"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"len"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"resv1"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"len_psw"	"__unnamed_struct_3"	128	0	0	0	1	1	0	
.STRUCTMEM	"frame"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_xfer_iso_t"

.VARIABLE	"led"	40	"char"	0	0	-1	1	1	0	45	
.VARIABLE	"hFAT_FILE_SYSTEM_1"	16	"short"	0	0	-1	0	0	0	32	
.VARIABLE	"hFAT_FILE_SYSTEM_2"	16	"short"	0	0	-1	0	0	0	33	
.VARIABLE	"leds"	8	"char"	0	0	-1	0	0	0	44	
.VARIABLE	"hBOMS_1"	16	"short"	0	0	-1	0	0	0	34	
.VARIABLE	"hBOMS_2"	16	"short"	0	0	-1	0	0	0	35	
.VARIABLE	"hTIMER_1"	16	"short"	0	0	-1	0	0	0	31	
.VARIABLE	"semRead"	40	"_vos_semaphore_t"	0	0	-1	0	0	0	40	
.VARIABLE	"ledStep"	16	"short"	0	0	-1	0	0	0	46	
.VARIABLE	"hUSBHOST_1"	16	"short"	0	0	-1	0	0	0	28	
.VARIABLE	"hUSBHOST_2"	16	"short"	0	0	-1	0	0	0	29	
.VARIABLE	"semWrite"	40	"_vos_semaphore_t"	0	0	-1	0	0	0	41	
.VARIABLE	"tcbFIRMWARE"	16	"_vos_tcb_t"	0	1	-1	0	0	1	22	
.VARIABLE	"hGPIO_PORT_A"	16	"short"	0	0	-1	0	0	0	30	
.TYPEDEF	"_fatdrv_ioctl_cb_fs_t"	"fatdrv_ioctl_cb_fs_t"
.TYPEDEF	"_vos_gpio_t"	"vos_gpio_t"
.TYPEDEF	"int"	"usbhost_ep_handle_ex"
.TYPEDEF	"_usb_deviceEndpointDescriptor_t"	"usb_deviceEndpointDescriptor_t"
.TYPEDEF	"_vos_semaphore_list_t"	"vos_semaphore_list_t"
.TYPEDEF	"_fatdrv_ioctl_cb_dir_t"	"fatdrv_ioctl_cb_dir_t"
.TYPEDEF	"char"	"PF"
.TYPEDEF	"_usb_deviceInterfaceDescriptor_t"	"usb_deviceInterfaceDescriptor_t"
.TYPEDEF	"void"	"fat_context"
.TYPEDEF	"void"	"usbhost_device_handle"
.TYPEDEF	"_usb_deviceQualifierDescriptor_t"	"usb_deviceQualifierDescriptor_t"
.TYPEDEF	"_vos_mutex_t"	"vos_mutex_t"
.TYPEDEF	"_boms_ioctl_cb_attach_t"	"boms_ioctl_cb_attach_t"
.TYPEDEF	"_fatdrv_ioctl_cb_file_t"	"fatdrv_ioctl_cb_file_t"
.TYPEDEF	"_fat_stream_t"	"fat_stream_t"
.TYPEDEF	"_vos_device_t"	"vos_device_t"
.TYPEDEF	"_fatdrv_ioctl_cb_time_t"	"fatdrv_ioctl_cb_time_t"
.TYPEDEF	"_usb_deviceDescriptor_t"	"usb_deviceDescriptor_t"
.TYPEDEF	"_vos_driver_t"	"vos_driver_t"
.TYPEDEF	"_file_context_t"	"FILE"
.TYPEDEF	"_vos_system_data_area_t"	"vos_system_data_area_t"
.TYPEDEF	"_usb_deviceStringDescriptorZero_t"	"usb_deviceStringDescriptorZero_t"
.TYPEDEF	"_msi_xfer_cb_t"	"msi_xfer_cb_t"
.TYPEDEF	"_tmr_context_t"	"tmr_context_t"
.TYPEDEF	"char"	"PF_IO"
.TYPEDEF	"_fat_ioctl_cb_t"	"fat_ioctl_cb_t"
.TYPEDEF	"_msi_ioctl_cb_t"	"msi_ioctl_cb_t"
.TYPEDEF	"_tmr_ioctl_cb_t"	"tmr_ioctl_cb_t"
.TYPEDEF	"_fatdrv_ioctl_cb_attach_t"	"fatdrv_ioctl_cb_attach_t"
.TYPEDEF	"_vos_cond_var_t"	"vos_cond_var_t"
.TYPEDEF	"_file_context_t"	"file_context_t"
.TYPEDEF	"int"	"usbhost_device_handle_ex"
.TYPEDEF	"void"	"PF_INT"
.TYPEDEF	"_gpio_context_t"	"gpio_context_t"
.TYPEDEF	"_usbhost_ioctl_cb_class_t"	"usbhost_ioctl_cb_class_t"
.TYPEDEF	"_usbhost_xfer_t"	"usbhost_xfer_t"
.TYPEDEF	"_gpio_ioctl_cb_t"	"gpio_ioctl_cb_t"
.TYPEDEF	"void"	"PF_OPEN"
.TYPEDEF	"_usb_hubStatus_t"	"usb_hubStatus_t"
.TYPEDEF	"_vos_semaphore_t"	"vos_semaphore_t"
.TYPEDEF	"_usb_deviceConfigurationDescriptor_t"	"usb_deviceConfigurationDescriptor_t"
.TYPEDEF	"void"	"PF_CLOSE"
.TYPEDEF	"short"	"addr_t"
.TYPEDEF	"char"	"PF_IOCTL"
.TYPEDEF	"short"	"size_t"
.TYPEDEF	"_vos_dma_config_t"	"vos_dma_config_t"
.TYPEDEF	"_usbhost_ioctl_cb_vid_pid_t"	"usbhost_ioctl_cb_vid_pid_t"
.TYPEDEF	"_usbhost_ioctl_cb_ep_info_t"	"usbhost_ioctl_cb_ep_info_t"
.TYPEDEF	"_usb_interfaceAssociationDescriptor_t"	"usb_interfaceAssociationDescriptor_t"
.TYPEDEF	"void"	"usbhost_ep_handle"
.TYPEDEF	"_usbhost_ioctl_cb_dev_info_t"	"usbhost_ioctl_cb_dev_info_t"
.TYPEDEF	"_usbhost_context_t"	"usbhost_context_t"
.TYPEDEF	"_usbhost_ioctl_cb_t"	"usbhost_ioctl_cb_t"
.TYPEDEF	"_usb_hub_selector_t"	"usb_hub_selector_t"
.TYPEDEF	"_usb_deviceStringDescriptor_t"	"usb_deviceStringDescriptor_t"
.TYPEDEF	"_usbhost_xfer_iso_t"	"usbhost_xfer_iso_t"
.TYPEDEF	"void"	"fnVoidPtr"
.TYPEDEF	"_vos_tcb_t"	"vos_tcb_t"
.TYPEDEF	"_msi_ioctl_cb_info_t"	"msi_ioctl_cb_info_t"
.TYPEDEF	"_usb_deviceRequest_t"	"usb_deviceRequest_t"
.TYPEDEF	"_usb_hubDescriptor_t"	"usb_hubDescriptor_t"
.TYPEDEF	"_usb_hubPortStatus_t"	"usb_hubPortStatus_t"
.FUNCTION	"vos_dma_get_fifo_flow_control"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	83	
.FUNC_END	"vos_dma_get_fifo_flow_control"

.FUNCTION	"vos_start_scheduler"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_start_scheduler"

.FUNCTION	"vos_gpio_write_port"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"portId"	8 "char"	0	0	0	0	0	0	125	
.PARAMETER	"val"	8 "char"	0	0	0	0	0	0	125	
.FUNC_END	"vos_gpio_write_port"

.FUNCTION	"vos_signal_semaphore_from_isr"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"s"	16 "_vos_semaphore_t"	0	1	0	0	0	1	168	
.FUNC_END	"vos_signal_semaphore_from_isr"

.FUNCTION	"vos_malloc"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"size"	16 "short"	0	0	0	0	0	0	24	
.FUNC_END	"vos_malloc"

.FUNCTION	"vos_create_thread_ex"	
.RETURN "_vos_tcb_t"	16	0	1	0	0	0	1	
.PARAMETER	"priority"	8 "char"	0	0	0	0	0	0	98	
.PARAMETER	"stack"	16 "short"	0	0	0	0	0	0	98	
.PARAMETER	"function"	0 "void"	0	0	0	0	0	0	98	
.PARAMETER	"name"	16 "char"	1	1	0	0	0	1	98	
.PARAMETER	"arg_size"	16 "short"	1	0	0	0	0	0	98	
.FUNC_END	"vos_create_thread_ex"

.FUNCTION	"vos_memcpy"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"destination"	16 "void"	0	1	0	0	0	1	27	
.PARAMETER	"source"	16 "void"	0	1	0	0	0	1	27	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	27	
.FUNC_END	"vos_memcpy"

.FUNCTION	"vos_memset"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"dstptr"	16 "void"	0	1	0	0	0	1	26	
.PARAMETER	"value"	32 "int"	1	0	0	0	0	0	26	
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	26	
.FUNC_END	"vos_memset"

.FUNCTION	"vos_get_kernel_clock"	
.RETURN "int"	32	0	0	0	0	0	0	
.FUNC_END	"vos_get_kernel_clock"

.FUNCTION	"vos_gpio_disable_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	8 "char"	0	0	0	0	0	0	129	
.FUNC_END	"vos_gpio_disable_int"

.FUNCTION	"vos_get_package_type"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_get_package_type"

.FUNCTION	"vos_dma_get_fifo_data_register"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	82	
.FUNC_END	"vos_dma_get_fifo_data_register"

.FUNCTION	"fat_dirTableFindFirst"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	261	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	261	
.FUNC_END	"fat_dirTableFindFirst"

.FUNCTION	"vos_signal_semaphore"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"s"	16 "_vos_semaphore_t"	0	1	0	0	0	1	167	
.FUNC_END	"vos_signal_semaphore"

.FUNCTION	"fat_fileMod"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	254	
.PARAMETER	"attr"	8 "char"	0	0	0	0	0	0	254	
.FUNC_END	"fat_fileMod"

.FUNCTION	"vos_gpio_wait_on_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	8 "char"	0	0	0	0	0	0	130	
.FUNC_END	"vos_gpio_wait_on_int"

.FUNCTION	"stdinAttach"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "short"	0	0	0	0	0	0	43	
.FUNC_END	"stdinAttach"

.FUNCTION	"stdioAttach"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "short"	0	0	0	0	0	0	41	
.FUNC_END	"stdioAttach"

.FUNCTION	"vos_dma_get_fifo_data"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	85	
.PARAMETER	"dat"	16 "char"	0	1	0	0	0	1	85	
.FUNC_END	"vos_dma_get_fifo_data"

.FUNCTION	"fatdrv_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"vos_dev_num"	8 "char"	0	0	0	0	0	0	98	
.FUNC_END	"fatdrv_init"

.FUNCTION	"vos_iocell_get_config"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	228	
.PARAMETER	"drive_current"	16 "char"	0	1	0	0	0	1	228	
.PARAMETER	"trigger"	16 "char"	0	1	0	0	0	1	228	
.PARAMETER	"slew_rate"	16 "char"	0	1	0	0	0	1	228	
.PARAMETER	"pull"	16 "char"	0	1	0	0	0	1	228	
.FUNC_END	"vos_iocell_get_config"

.FUNCTION	"vos_iomux_define_bidi"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	225	
.PARAMETER	"input_signal"	8 "char"	0	0	0	0	0	0	225	
.PARAMETER	"output_signal"	8 "char"	0	0	0	0	0	0	225	
.FUNC_END	"vos_iomux_define_bidi"

.FUNCTION	"vos_gpio_set_all_mode"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"masks"	16 "_vos_gpio_t"	0	1	0	0	0	1	118	
.FUNC_END	"vos_gpio_set_all_mode"

.FUNCTION	"vos_iocell_set_config"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	229	
.PARAMETER	"drive_current"	8 "char"	0	0	0	0	0	0	229	
.PARAMETER	"trigger"	8 "char"	0	0	0	0	0	0	229	
.PARAMETER	"slew_rate"	8 "char"	0	0	0	0	0	0	229	
.PARAMETER	"pull"	8 "char"	0	0	0	0	0	0	229	
.FUNC_END	"vos_iocell_set_config"

.FUNCTION	"fat_fileRead"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	236	
.PARAMETER	"length"	32 "long"	0	0	0	0	0	0	236	
.PARAMETER	"buffer"	16 "char"	1	1	0	0	0	1	236	
.PARAMETER	"hOutput"	16 "short"	0	0	0	0	0	0	236	
.PARAMETER	"bytes_read"	16 "long"	0	1	0	0	0	1	236	
.FUNC_END	"fat_fileRead"

.FUNCTION	"vos_gpio_set_pin_mode"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	116	
.PARAMETER	"mask"	8 "char"	0	0	0	0	0	0	116	
.FUNC_END	"vos_gpio_set_pin_mode"

.FUNCTION	"iomux_setup"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"iomux_setup"

.FUNCTION	"fat_fileSeek"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	229	
.PARAMETER	"offset"	32 "long"	1	0	0	0	0	0	229	
.PARAMETER	"mode"	8 "char"	0	0	0	0	0	0	229	
.FUNC_END	"fat_fileSeek"

.FUNCTION	"fat_dirEntryIsReadOnly"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	267	
.FUNC_END	"fat_dirEntryIsReadOnly"

.FUNCTION	"vos_get_chip_revision"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_get_chip_revision"

.FUNCTION	"fat_fileTell"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	231	
.PARAMETER	"offset"	16 "long"	0	1	0	0	0	1	231	
.FUNC_END	"fat_fileTell"

.FUNCTION	"vos_wait_semaphore_ex"	
.RETURN "char"	8	1	0	0	0	0	0	
.PARAMETER	"l"	16 "_vos_semaphore_list_t"	0	1	0	0	0	1	166	
.FUNC_END	"vos_wait_semaphore_ex"

.FUNCTION	"fat_fileOpen"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	224	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	224	
.PARAMETER	"name"	16 "char"	1	1	0	0	0	1	224	
.PARAMETER	"mode"	8 "char"	0	0	0	0	0	0	224	
.FUNC_END	"fat_fileOpen"

.FUNCTION	"fat_fileCopy"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"source_file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	245	
.PARAMETER	"dest_file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	245	
.FUNC_END	"fat_fileCopy"

.FUNCTION	"vos_enable_interrupts"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"mask"	32 "int"	0	0	0	0	0	0	72	
.FUNC_END	"vos_enable_interrupts"

.FUNCTION	"fat_capacity"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	216	
.PARAMETER	"bytes_h"	16 "long"	0	1	0	0	0	1	216	
.PARAMETER	"bytes_l"	16 "long"	0	1	0	0	0	1	216	
.FUNC_END	"fat_capacity"

.FUNCTION	"stderrAttach"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "short"	0	0	0	0	0	0	45	
.FUNC_END	"stderrAttach"

.FUNCTION	"vos_dev_read"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	54	
.PARAMETER	"buf"	16 "char"	0	1	0	0	0	1	54	
.PARAMETER	"num_to_read"	16 "short"	0	0	0	0	0	0	54	
.PARAMETER	"num_read"	16 "short"	0	1	0	0	0	1	54	
.FUNC_END	"vos_dev_read"

.FUNCTION	"stdoutAttach"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "short"	0	0	0	0	0	0	44	
.FUNC_END	"stdoutAttach"

.FUNCTION	"vos_dev_open"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"dev_num"	8 "char"	0	0	0	0	0	0	53	
.FUNC_END	"vos_dev_open"

.FUNCTION	"vos_halt_cpu"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_halt_cpu"

.FUNCTION	"vos_dev_init"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"dev_num"	8 "char"	0	0	0	0	0	0	50	
.PARAMETER	"driver_cb"	16 "_vos_driver_t"	0	1	0	0	0	1	50	
.PARAMETER	"context"	16 "void"	0	1	0	0	0	1	50	
.FUNC_END	"vos_dev_init"

.FUNCTION	"vos_dma_get_fifo_count"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	84	
.FUNC_END	"vos_dma_get_fifo_count"

.FUNCTION	"fat_getFSType"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	219	
.FUNC_END	"fat_getFSType"

.FUNCTION	"usbhost_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"devNum_1"	8 "char"	0	0	0	0	0	0	348	
.PARAMETER	"devNum_2"	8 "char"	0	0	0	0	0	0	348	
.PARAMETER	"context"	16 "_usbhost_context_t"	0	1	0	0	0	1	348	
.FUNC_END	"usbhost_init"

.FUNCTION	"vos_reset_kernel_clock"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_reset_kernel_clock"

.FUNCTION	"fat_freeSpace"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	214	
.PARAMETER	"bytes_h"	16 "long"	0	1	0	0	0	1	214	
.PARAMETER	"bytes_l"	16 "long"	0	1	0	0	0	1	214	
.PARAMETER	"scan"	8 "char"	0	0	0	0	0	0	214	
.FUNC_END	"fat_freeSpace"

.FUNCTION	"fat_fileClose"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	225	
.FUNC_END	"fat_fileClose"

.FUNCTION	"abs"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	32 "int"	1	0	0	0	0	0	26	
.FUNC_END	"abs"

.FUNCTION	"fat_dirIsRoot"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	281	
.FUNC_END	"fat_dirIsRoot"

.FUNCTION	"vos_gpio_set_port_mode"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"portId"	8 "char"	0	0	0	0	0	0	117	
.PARAMETER	"mask"	8 "char"	0	0	0	0	0	0	117	
.FUNC_END	"vos_gpio_set_port_mode"

.FUNCTION	"fat_fileFlush"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	234	
.FUNC_END	"fat_fileFlush"

.FUNCTION	"vos_iomux_define_input"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	223	
.PARAMETER	"signal"	8 "char"	0	0	0	0	0	0	223	
.FUNC_END	"vos_iomux_define_input"

.FUNCTION	"fat_fileWrite"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	237	
.PARAMETER	"length"	32 "long"	0	0	0	0	0	0	237	
.PARAMETER	"buffer"	16 "char"	1	1	0	0	0	1	237	
.PARAMETER	"hOutput"	16 "short"	0	0	0	0	0	0	237	
.PARAMETER	"bytes_written"	16 "long"	0	1	0	0	0	1	237	
.FUNC_END	"fat_fileWrite"

.FUNCTION	"vos_disable_interrupts"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"mask"	32 "int"	0	0	0	0	0	0	73	
.FUNC_END	"vos_disable_interrupts"

.FUNCTION	"fat_dirEntryIsDirectory"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	269	
.FUNC_END	"fat_dirEntryIsDirectory"

.FUNCTION	"vos_get_idle_thread_tcb"	
.RETURN "_vos_tcb_t"	16	0	1	0	0	0	1	
.FUNC_END	"vos_get_idle_thread_tcb"

.FUNCTION	"vos_dma_reset"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	76	
.FUNC_END	"vos_dma_reset"

.FUNCTION	"vos_dev_close"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	57	
.FUNC_END	"vos_dev_close"

.FUNCTION	"vos_wdt_clear"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_wdt_clear"

.FUNCTION	"vos_heap_size"	
.RETURN "short"	16	0	0	0	0	0	0	
.FUNC_END	"vos_heap_size"

.FUNCTION	"vos_dev_ioctl"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	56	
.PARAMETER	"cb"	16 "void"	0	1	0	0	0	1	56	
.FUNC_END	"vos_dev_ioctl"

.FUNCTION	"vos_dev_write"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	55	
.PARAMETER	"buf"	16 "char"	0	1	0	0	0	1	55	
.PARAMETER	"num_to_write"	16 "short"	0	0	0	0	0	0	55	
.PARAMETER	"num_written"	16 "short"	0	1	0	0	0	1	55	
.FUNC_END	"vos_dev_write"

.FUNCTION	"fat_fileDelete"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"source_file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	241	
.FUNC_END	"fat_fileDelete"

.FUNCTION	"fat_fileRename"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	251	
.PARAMETER	"name"	16 "char"	1	1	0	0	0	1	251	
.FUNC_END	"fat_fileRename"

.FUNCTION	"vos_get_clock_frequency"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_get_clock_frequency"

.FUNCTION	"fat_fileSetPos"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	230	
.PARAMETER	"offset"	32 "long"	0	0	0	0	0	0	230	
.FUNC_END	"fat_fileSetPos"

.FUNCTION	"vos_set_clock_frequency"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"frequency"	8 "char"	0	0	0	0	0	0	209	
.FUNC_END	"vos_set_clock_frequency"

.FUNCTION	"feof"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	55	
.FUNC_END	"feof"

.FUNCTION	"free"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "void"	0	1	0	0	0	1	32	
.FUNC_END	"free"

.FUNCTION	"fat_fileRewind"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	232	
.FUNC_END	"fat_fileRewind"

.FUNCTION	"itoa"	
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"value"	32 "int"	1	0	0	0	0	0	33	
.PARAMETER	"string"	16 "char"	1	1	0	0	0	1	33	
.PARAMETER	"radix"	32 "int"	1	0	0	0	0	0	33	
.FUNC_END	"itoa"

.FUNCTION	"atoi"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"nptr"	16 "char"	1	1	0	0	0	1	28	const
.FUNC_END	"atoi"

.FUNCTION	"vos_dma_enable"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	79	
.FUNC_END	"vos_dma_enable"

.FUNCTION	"ltoa"	
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"value"	32 "long"	1	0	0	0	0	0	34	
.PARAMETER	"string"	16 "char"	1	1	0	0	0	1	34	
.PARAMETER	"radix"	32 "int"	1	0	0	0	0	0	34	
.FUNC_END	"ltoa"

.FUNCTION	"atol"	
.RETURN "long"	32	1	0	0	0	0	0	
.PARAMETER	"nptr"	16 "char"	1	1	0	0	0	1	29	const
.FUNC_END	"atol"

.FUNCTION	"vos_reset_vnc2"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_reset_vnc2"

.FUNCTION	"vos_heap_space"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"hfree"	16 "short"	0	1	0	0	0	1	30	
.PARAMETER	"hmax"	16 "short"	0	1	0	0	0	1	30	
.FUNC_END	"vos_heap_space"

.FUNCTION	"vos_iomux_define_output"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	224	
.PARAMETER	"signal"	8 "char"	0	0	0	0	0	0	224	
.FUNC_END	"vos_iomux_define_output"

.FUNCTION	"vos_wdt_enable"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"bitPosition"	8 "char"	0	0	0	0	0	0	244	
.FUNC_END	"vos_wdt_enable"

.FUNCTION	"fat_getVolumeID"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	220	
.PARAMETER	"volID"	16 "long"	0	1	0	0	0	1	220	
.FUNC_END	"fat_getVolumeID"

.FUNCTION	"vos_dma_wait_on_complete"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	81	
.FUNC_END	"vos_dma_wait_on_complete"

.FUNCTION	"vos_lock_mutex"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	132	
.FUNC_END	"vos_lock_mutex"

.FUNCTION	"vos_power_down"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"wakeMask"	8 "char"	0	0	0	0	0	0	229	
.FUNC_END	"vos_power_down"

.FUNCTION	"vos_init_mutex"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	131	
.PARAMETER	"state"	8 "char"	0	0	0	0	0	0	131	
.FUNC_END	"vos_init_mutex"

.FUNCTION	"fat_dirEntryIsVolumeLabel"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	266	
.FUNC_END	"fat_dirEntryIsVolumeLabel"

.FUNCTION	"fread"	
.RETURN "short"	16	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "void"	0	1	0	0	0	1	61	
.PARAMETER	"__unknown"	16 "short"	1	0	0	0	0	0	61	
.PARAMETER	"__unknown"	16 "short"	1	0	0	0	0	0	61	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	61	
.FUNC_END	"fread"

.FUNCTION	"vos_gpio_wait_on_any_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	16 "char"	0	1	0	0	0	1	131	
.FUNC_END	"vos_gpio_wait_on_any_int"

.FUNCTION	"fgetc"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	70	
.FUNC_END	"fgetc"

.FUNCTION	"fseek"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	57	
.PARAMETER	"offset"	32 "long"	1	0	0	0	0	0	57	
.PARAMETER	"whence"	32 "int"	1	0	0	0	0	0	57	
.FUNC_END	"fseek"

.FUNCTION	"vos_get_priority_ceiling"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	135	
.FUNC_END	"vos_get_priority_ceiling"

.FUNCTION	"ftell"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	56	
.FUNC_END	"ftell"

.FUNCTION	"fopen"	
.RETURN "_file_context_t"	16	0	1	0	0	0	1	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	53	const
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	53	const
.FUNC_END	"fopen"

.FUNCTION	"fgets"	
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	80	
.PARAMETER	"__unknown"	32 "int"	1	0	0	0	0	0	80	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	80	
.FUNC_END	"fgets"

.FUNCTION	"vos_dma_disable"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	80	
.FUNC_END	"vos_dma_disable"

.FUNCTION	"vos_set_priority_ceiling"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	136	
.PARAMETER	"priority"	8 "char"	0	0	0	0	0	0	136	
.FUNC_END	"vos_set_priority_ceiling"

.FUNCTION	"fputc"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	32 "int"	1	0	0	0	0	0	71	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	71	
.FUNC_END	"fputc"

.FUNCTION	"vos_dma_release"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	75	
.FUNC_END	"vos_dma_release"

.FUNCTION	"vos_iomux_disable_output"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	226	
.FUNC_END	"vos_iomux_disable_output"

.FUNCTION	"fputs"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	81	const
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	81	
.FUNC_END	"fputs"

.FUNCTION	"vos_dma_acquire"	
.RETURN "short"	16	0	0	0	0	0	0	
.FUNC_END	"vos_dma_acquire"

.FUNCTION	"fat_dirChangeDir"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	279	
.PARAMETER	"name"	16 "char"	0	1	0	0	0	1	279	
.FUNC_END	"fat_dirChangeDir"

.FUNCTION	"vos_delay_msecs"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"ms"	16 "short"	0	0	0	0	0	0	103	
.FUNC_END	"vos_delay_msecs"

.FUNCTION	"vos_stack_usage"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"tcb"	16 "_vos_tcb_t"	0	1	0	0	0	1	188	
.FUNC_END	"vos_stack_usage"

.FUNCTION	"fat_dirTableFind"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	260	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	260	
.PARAMETER	"name"	16 "char"	1	1	0	0	0	1	260	
.FUNC_END	"fat_dirTableFind"

.FUNCTION	"fat_getDevHandle"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	215	
.FUNC_END	"fat_getDevHandle"

.FUNCTION	"vos_get_profile"	
.RETURN "int"	32	0	0	0	0	0	0	
.PARAMETER	"tcb"	16 "_vos_tcb_t"	0	1	0	0	0	1	191	
.FUNC_END	"vos_get_profile"

.FUNCTION	"fat_dirCreateDir"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	280	
.PARAMETER	"name"	16 "char"	0	1	0	0	0	1	280	
.FUNC_END	"fat_dirCreateDir"

.FUNCTION	"vos_gpio_wait_on_all_ints"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_gpio_wait_on_all_ints"

.FUNCTION	"fat_dirEntryName"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	277	
.PARAMETER	"fileName"	16 "char"	1	1	0	0	0	1	277	
.FUNC_END	"fat_dirEntryName"

.FUNCTION	"calloc"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"nmem"	16 "short"	1	0	0	0	0	0	31	
.PARAMETER	"size"	16 "short"	1	0	0	0	0	0	31	
.FUNC_END	"calloc"

.FUNCTION	"malloc"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"size"	16 "short"	1	0	0	0	0	0	30	
.FUNC_END	"malloc"

.FUNCTION	"rename"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	64	const
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	64	const
.FUNC_END	"rename"

.FUNCTION	"fat_dirEntryTime"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	276	
.PARAMETER	"offset"	8 "char"	0	0	0	0	0	0	276	
.FUNC_END	"fat_dirEntryTime"

.FUNCTION	"fclose"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	54	
.FUNC_END	"fclose"

.FUNCTION	"fat_fileTruncate"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	233	
.FUNC_END	"fat_fileTruncate"

.FUNCTION	"fat_dirEntrySize"	
.RETURN "long"	32	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	270	
.FUNC_END	"fat_dirEntrySize"

.FUNCTION	"fflush"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	58	
.FUNC_END	"fflush"

.FUNCTION	"rewind"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	65	
.FUNC_END	"rewind"

.FUNCTION	"memset"	extern
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"dstptr"	16 "void"	0	1	0	0	0	1	24	
.PARAMETER	"value"	32 "int"	1	0	0	0	0	0	24	
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	24	
.FUNC_END	"memset"

.FUNCTION	"memcpy"	extern
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"destination"	16 "void"	0	1	0	0	0	1	23	
.PARAMETER	"source"	16 "void"	0	1	0	0	0	1	23	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	23	
.FUNC_END	"memcpy"

.FUNCTION	"vos_delay_cancel"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"tcb"	16 "_vos_tcb_t"	0	1	0	0	0	1	104	
.FUNC_END	"vos_delay_cancel"

.FUNCTION	"remove"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	63	const
.FUNC_END	"remove"

.FUNCTION	"strcat"	extern
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"destination"	16 "char"	1	1	0	0	0	1	29	
.PARAMETER	"source"	16 "char"	1	1	0	0	0	1	29	const
.FUNC_END	"strcat"

.FUNCTION	"fwrite"	
.RETURN "short"	16	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "void"	0	1	0	0	0	1	62	const
.PARAMETER	"__unknown"	16 "short"	1	0	0	0	0	0	62	
.PARAMETER	"__unknown"	16 "short"	1	0	0	0	0	0	62	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	62	
.FUNC_END	"fwrite"

.FUNCTION	"printf"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"fmt"	16 "char"	1	1	0	0	0	1	50	const
.FUNC_END	"printf"

.FUNCTION	"strlen"	extern
.RETURN "short"	16	1	0	0	0	0	0	
.PARAMETER	"str"	16 "char"	1	1	0	0	0	1	30	const
.FUNC_END	"strlen"

.FUNCTION	"strcmp"	extern
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"str1"	16 "char"	1	1	0	0	0	1	25	const
.PARAMETER	"str2"	16 "char"	1	1	0	0	0	1	25	const
.FUNC_END	"strcmp"

.FUNCTION	"strcpy"	extern
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"destination"	16 "char"	1	1	0	0	0	1	27	
.PARAMETER	"source"	16 "char"	1	1	0	0	0	1	27	const
.FUNC_END	"strcpy"

.FUNCTION	"strtol"	
.RETURN "long"	32	1	0	0	0	0	0	
.PARAMETER	"nptr"	16 "char"	1	1	0	0	0	1	27	const
.PARAMETER	"endptr"	16 "char"	1	1	0	0	0	2	27	
.PARAMETER	"base"	32 "int"	1	0	0	0	0	0	27	
.FUNC_END	"strtol"

.FUNCTION	"vos_dma_retained_configure"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	78	
.PARAMETER	"mem_addr"	16 "char"	0	1	0	0	0	1	78	
.PARAMETER	"bufsiz"	16 "short"	0	0	0	0	0	0	78	
.FUNC_END	"vos_dma_retained_configure"

.FUNCTION	"fat_dirDirIsEmpty"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	264	
.FUNC_END	"fat_dirDirIsEmpty"

.FUNCTION	"vos_unlock_mutex"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	134	
.FUNC_END	"vos_unlock_mutex"

.FUNCTION	"getchar"	
.RETURN "int"	32	1	0	0	0	0	0	
.FUNC_END	"getchar"

.FUNCTION	"isalpha"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"c"	32 "int"	1	0	0	0	0	0	23	
.FUNC_END	"isalpha"

.FUNCTION	"isspace"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"c"	32 "int"	1	0	0	0	0	0	30	
.FUNC_END	"isspace"

.FUNCTION	"isdigit"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"c"	32 "int"	1	0	0	0	0	0	25	
.FUNC_END	"isdigit"

.FUNCTION	"isgraph"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"c"	32 "int"	1	0	0	0	0	0	26	
.FUNC_END	"isgraph"

.FUNCTION	"putchar"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	32 "int"	1	0	0	0	0	0	69	
.FUNC_END	"putchar"

.FUNCTION	"fgetpos"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	82	
.PARAMETER	"__unknown"	16 "long"	1	1	0	0	0	1	82	
.FUNC_END	"fgetpos"

.FUNCTION	"isalnum"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"c"	32 "int"	1	0	0	0	0	0	22	
.FUNC_END	"isalnum"

.FUNCTION	"fprintf"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	60	
.PARAMETER	"fmt"	16 "char"	1	1	0	0	0	1	60	const
.FUNC_END	"fprintf"

.FUNCTION	"vos_gpio_read_all"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"vals"	16 "_vos_gpio_t"	0	1	0	0	0	1	122	
.FUNC_END	"vos_gpio_read_all"

.FUNCTION	"iscntrl"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"c"	32 "int"	1	0	0	0	0	0	24	
.FUNC_END	"iscntrl"

.FUNCTION	"vos_create_thread"	
.RETURN "_vos_tcb_t"	16	0	1	0	0	0	1	
.PARAMETER	"priority"	8 "char"	0	0	0	0	0	0	97	
.PARAMETER	"stack"	16 "short"	0	0	0	0	0	0	97	
.PARAMETER	"function"	0 "void"	0	0	0	0	0	0	97	
.PARAMETER	"arg_size"	16 "short"	1	0	0	0	0	0	97	
.FUNC_END	"vos_create_thread"

.FUNCTION	"fsetpos"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	83	
.PARAMETER	"__unknown"	16 "long"	1	1	0	0	0	1	83	const
.FUNC_END	"fsetpos"

.FUNCTION	"islower"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"c"	32 "int"	1	0	0	0	0	0	27	
.FUNC_END	"islower"

.FUNCTION	"ispunct"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"c"	32 "int"	1	0	0	0	0	0	29	
.FUNC_END	"ispunct"

.FUNCTION	"sprintf"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	77	
.PARAMETER	"fmt"	16 "char"	1	1	0	0	0	1	77	const
.FUNC_END	"sprintf"

.FUNCTION	"strncmp"	extern
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"str1"	16 "char"	1	1	0	0	0	1	26	const
.PARAMETER	"str2"	16 "char"	1	1	0	0	0	1	26	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	26	
.FUNC_END	"strncmp"

.FUNCTION	"vos_gpio_read_pin"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	120	
.PARAMETER	"val"	16 "char"	0	1	0	0	0	1	120	
.FUNC_END	"vos_gpio_read_pin"

.FUNCTION	"isupper"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"c"	32 "int"	1	0	0	0	0	0	31	
.FUNC_END	"isupper"

.FUNCTION	"isprint"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"c"	32 "int"	1	0	0	0	0	0	28	
.FUNC_END	"isprint"

.FUNCTION	"vos_dma_configure"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	77	
.PARAMETER	"cb"	16 "_vos_dma_config_t"	0	1	0	0	0	1	77	
.FUNC_END	"vos_dma_configure"

.FUNCTION	"strncpy"	extern
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"destination"	16 "char"	1	1	0	0	0	1	28	
.PARAMETER	"source"	16 "char"	1	1	0	0	0	1	28	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	28	
.FUNC_END	"strncpy"

.FUNCTION	"vos_init_cond_var"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"cv"	16 "_vos_cond_var_t"	0	1	0	0	0	1	180	
.FUNC_END	"vos_init_cond_var"

.FUNCTION	"vos_wait_cond_var"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"cv"	16 "_vos_cond_var_t"	0	1	0	0	0	1	181	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	181	
.FUNC_END	"vos_wait_cond_var"

.FUNCTION	"fat_dirEntryIsFile"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	268	
.FUNC_END	"fat_dirEntryIsFile"

.FUNCTION	"fsAttach"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "short"	0	0	0	0	0	0	47	
.FUNC_END	"fsAttach"

.FUNCTION	"initHeap"	
.RETURN "int"	32	1	0	0	0	0	0	
.FUNC_END	"initHeap"

.FUNCTION	"fat_getVolumeLabel"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	221	
.PARAMETER	"volLabel"	16 "char"	1	1	0	0	0	1	221	
.FUNC_END	"fat_getVolumeLabel"

.FUNCTION	"vos_stop_profiler"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_stop_profiler"

.FUNCTION	"fat_time"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"time"	32 "long"	0	0	0	0	0	0	257	
.FUNC_END	"fat_time"

.FUNCTION	"fat_open"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"hMsi"	16 "short"	0	0	0	0	0	0	209	
.PARAMETER	"partition"	8 "char"	0	0	0	0	0	0	209	
.PARAMETER	"status"	16 "char"	0	1	0	0	0	1	209	
.FUNC_END	"fat_open"

.FUNCTION	"fat_init"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"fat_init"

.FUNCTION	"vos_trylock_mutex"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	133	
.FUNC_END	"vos_trylock_mutex"

.FUNCTION	"fat_bytesPerSector"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	218	
.PARAMETER	"bytes"	16 "short"	0	1	0	0	0	1	218	
.FUNC_END	"fat_bytesPerSector"

.FUNCTION	"vos_free"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"ptrFree"	16 "void"	0	1	0	0	0	1	25	
.FUNC_END	"vos_free"

.FUNCTION	"isxdigit"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"c"	32 "int"	1	0	0	0	0	0	32	
.FUNC_END	"isxdigit"

.FUNCTION	"tmr_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"devNum"	8 "char"	0	0	0	0	0	0	72	
.PARAMETER	"context"	16 "void"	0	1	0	0	0	1	73	
.FUNC_END	"tmr_init"

.FUNCTION	"vos_init"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"quantum"	8 "char"	0	0	0	0	0	0	52	
.PARAMETER	"tick_cnt"	16 "short"	0	0	0	0	0	0	52	
.PARAMETER	"num_devices"	8 "char"	0	0	0	0	0	0	52	
.FUNC_END	"vos_init"

.FUNCTION	"vos_gpio_read_port"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"portId"	8 "char"	0	0	0	0	0	0	121	
.PARAMETER	"val"	16 "char"	0	1	0	0	0	1	121	
.FUNC_END	"vos_gpio_read_port"

.FUNCTION	"vos_gpio_write_all"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"vals"	16 "_vos_gpio_t"	0	1	0	0	0	1	126	
.FUNC_END	"vos_gpio_write_all"

.FUNCTION	"vos_set_idle_thread_tcb_size"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"tcb_size"	16 "short"	0	0	0	0	0	0	100	
.FUNC_END	"vos_set_idle_thread_tcb_size"

.FUNCTION	"vos_init_semaphore"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"sem"	16 "_vos_semaphore_t"	0	1	0	0	0	1	164	
.PARAMETER	"count"	16 "short"	1	0	0	0	0	0	164	
.FUNC_END	"vos_init_semaphore"

.FUNCTION	"vos_wait_semaphore"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"s"	16 "_vos_semaphore_t"	0	1	0	0	0	1	165	
.FUNC_END	"vos_wait_semaphore"

.FUNCTION	"vos_gpio_write_pin"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	124	
.PARAMETER	"val"	8 "char"	0	0	0	0	0	0	124	
.FUNC_END	"vos_gpio_write_pin"

.FUNCTION	"fat_dirEntryIsValid"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	265	
.FUNC_END	"fat_dirEntryIsValid"

.FUNCTION	"vos_start_profiler"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_start_profiler"

.FUNCTION	"fat_close"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	210	
.FUNC_END	"fat_close"

.FUNCTION	"gpio_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"devNum"	8 "char"	0	0	0	0	0	0	91	
.PARAMETER	"context"	16 "void"	0	1	0	0	0	1	92	
.FUNC_END	"gpio_init"

.FUNCTION	"boms_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"vos_dev_num"	8 "char"	0	0	0	0	0	0	35	
.FUNC_END	"boms_init"

.FUNCTION	"fat_bytesPerCluster"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	217	
.PARAMETER	"bytes"	16 "long"	0	1	0	0	0	1	217	
.FUNC_END	"fat_bytesPerCluster"

.FUNCTION	"vos_gpio_enable_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	8 "char"	0	0	0	0	0	0	128	
.PARAMETER	"intType"	8 "char"	0	0	0	0	0	0	128	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	128	
.FUNC_END	"vos_gpio_enable_int"

.FUNCTION	"vos_signal_cond_var"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"cv"	16 "_vos_cond_var_t"	0	1	0	0	0	1	182	
.FUNC_END	"vos_signal_cond_var"

.FUNCTION	"fat_dirTableFindNext"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	262	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	262	
.FUNC_END	"fat_dirTableFindNext"



.TEXT


.WEAK	"vos_dma_get_fifo_flow_control"

.WEAK	"vos_start_scheduler"

.WEAK	"vos_gpio_write_port"

.WEAK	"vos_signal_semaphore_from_isr"

.WEAK	"vos_malloc"

.WEAK	"vos_create_thread_ex"

.WEAK	"vos_memcpy"

.WEAK	"vos_memset"

.WEAK	"vos_get_kernel_clock"

.WEAK	"vos_gpio_disable_int"

.WEAK	"vos_get_package_type"

.WEAK	"vos_dma_get_fifo_data_register"

.WEAK	"fat_dirTableFindFirst"

.WEAK	"vos_signal_semaphore"

.WEAK	"fat_fileMod"

.WEAK	"vos_gpio_wait_on_int"

.WEAK	"stdinAttach"

.WEAK	"stdioAttach"

.WEAK	"vos_dma_get_fifo_data"

.WEAK	"fatdrv_init"

.WEAK	"vos_iocell_get_config"

.WEAK	"vos_iomux_define_bidi"

.WEAK	"vos_gpio_set_all_mode"

.WEAK	"vos_iocell_set_config"

.WEAK	"fat_fileRead"

.WEAK	"vos_gpio_set_pin_mode"

.WEAK	"iomux_setup"

.WEAK	"fat_fileSeek"

.WEAK	"fat_dirEntryIsReadOnly"

.WEAK	"vos_get_chip_revision"

.WEAK	"fat_fileTell"

.WEAK	"vos_wait_semaphore_ex"

.WEAK	"fat_fileOpen"

.WEAK	"fat_fileCopy"

.WEAK	"vos_enable_interrupts"

.WEAK	"fat_capacity"

.WEAK	"stderrAttach"

.WEAK	"vos_dev_read"

.WEAK	"stdoutAttach"

.WEAK	"vos_dev_open"

.WEAK	"vos_halt_cpu"

.WEAK	"vos_dev_init"

.WEAK	"vos_dma_get_fifo_count"

.WEAK	"fat_getFSType"

.WEAK	"usbhost_init"

.WEAK	"vos_reset_kernel_clock"

.WEAK	"fat_freeSpace"

.WEAK	"fat_fileClose"

.WEAK	"abs"

.WEAK	"fat_dirIsRoot"

.WEAK	"vos_gpio_set_port_mode"

.WEAK	"fat_fileFlush"

.WEAK	"vos_iomux_define_input"

.WEAK	"fat_fileWrite"

.WEAK	"vos_disable_interrupts"

.WEAK	"fat_dirEntryIsDirectory"

.WEAK	"vos_get_idle_thread_tcb"

.WEAK	"vos_dma_reset"

.WEAK	"vos_dev_close"

.WEAK	"vos_wdt_clear"

.WEAK	"vos_heap_size"

.WEAK	"vos_dev_ioctl"

.WEAK	"vos_dev_write"

.WEAK	"fat_fileDelete"

.WEAK	"fat_fileRename"

.WEAK	"vos_get_clock_frequency"

.WEAK	"fat_fileSetPos"

.WEAK	"vos_set_clock_frequency"

.WEAK	"feof"

.WEAK	"free"

.WEAK	"fat_fileRewind"

.WEAK	"itoa"

.WEAK	"atoi"

.WEAK	"vos_dma_enable"

.WEAK	"ltoa"

.WEAK	"atol"

.WEAK	"vos_reset_vnc2"

.WEAK	"vos_heap_space"

.WEAK	"vos_iomux_define_output"

.WEAK	"vos_wdt_enable"

.WEAK	"fat_getVolumeID"

.WEAK	"vos_dma_wait_on_complete"

.WEAK	"vos_lock_mutex"

.WEAK	"vos_power_down"

.WEAK	"vos_init_mutex"

.WEAK	"fat_dirEntryIsVolumeLabel"

.WEAK	"fread"

.WEAK	"vos_gpio_wait_on_any_int"

.WEAK	"fgetc"

.WEAK	"fseek"

.WEAK	"vos_get_priority_ceiling"

.WEAK	"ftell"

.WEAK	"fopen"

.WEAK	"fgets"

.WEAK	"vos_dma_disable"

.WEAK	"vos_set_priority_ceiling"

.WEAK	"fputc"

.WEAK	"vos_dma_release"

.WEAK	"vos_iomux_disable_output"

.WEAK	"fputs"

.WEAK	"vos_dma_acquire"

.WEAK	"fat_dirChangeDir"

.WEAK	"vos_delay_msecs"

.WEAK	"vos_stack_usage"

.WEAK	"fat_dirTableFind"

.WEAK	"fat_getDevHandle"

.WEAK	"vos_get_profile"

.WEAK	"fat_dirCreateDir"

.WEAK	"vos_gpio_wait_on_all_ints"

.WEAK	"fat_dirEntryName"

.WEAK	"calloc"

.WEAK	"malloc"

.WEAK	"rename"

.WEAK	"fat_dirEntryTime"

.WEAK	"fclose"

.WEAK	"fat_fileTruncate"

.WEAK	"fat_dirEntrySize"

.WEAK	"fflush"

.WEAK	"rewind"

.WEAK	"memset"

.WEAK	"memcpy"

.WEAK	"vos_delay_cancel"

.WEAK	"remove"

.WEAK	"strcat"

.WEAK	"fwrite"

.WEAK	"printf"

.WEAK	"strlen"

.WEAK	"strcmp"

.WEAK	"strcpy"

.WEAK	"strtol"

.WEAK	"vos_dma_retained_configure"

.WEAK	"fat_dirDirIsEmpty"

.WEAK	"vos_unlock_mutex"

.WEAK	"getchar"

.WEAK	"isalpha"

.WEAK	"isspace"

.WEAK	"isdigit"

.WEAK	"isgraph"

.WEAK	"putchar"

.WEAK	"fgetpos"

.WEAK	"isalnum"

.WEAK	"fprintf"

.WEAK	"vos_gpio_read_all"

.WEAK	"iscntrl"

.WEAK	"vos_create_thread"

.WEAK	"fsetpos"

.WEAK	"islower"

.WEAK	"ispunct"

.WEAK	"sprintf"

.WEAK	"strncmp"

.WEAK	"vos_gpio_read_pin"

.WEAK	"isupper"

.WEAK	"isprint"

.WEAK	"vos_dma_configure"

.WEAK	"strncpy"

.WEAK	"vos_init_cond_var"

.WEAK	"vos_wait_cond_var"

.WEAK	"fat_dirEntryIsFile"

.WEAK	"fsAttach"

.WEAK	"initHeap"

.WEAK	"fat_getVolumeLabel"

.WEAK	"vos_stop_profiler"

.WEAK	"fat_time"

.WEAK	"fat_open"

.WEAK	"fat_init"

.WEAK	"vos_trylock_mutex"

.WEAK	"fat_bytesPerSector"

.WEAK	"vos_free"

.WEAK	"isxdigit"

.WEAK	"tmr_init"

.WEAK	"vos_init"

.WEAK	"vos_gpio_read_port"

.WEAK	"vos_gpio_write_all"

.WEAK	"vos_set_idle_thread_tcb_size"

.WEAK	"vos_init_semaphore"

.WEAK	"vos_wait_semaphore"

.WEAK	"vos_gpio_write_pin"

.WEAK	"fat_dirEntryIsValid"

.WEAK	"vos_start_profiler"

.WEAK	"fat_close"

.WEAK	"gpio_init"

.WEAK	"boms_init"

.WEAK	"fat_bytesPerCluster"

.WEAK	"vos_gpio_enable_int"

.WEAK	"vos_signal_cond_var"

.WEAK	"fat_dirTableFindNext"

.LINE	53
main:	
.GLOBAL	 DO_NOT_EXPORT  "main"

.VARIABLE	"gpioContextA"	8	"_gpio_context_t"	0	0	0	0	0	0	57	
.VARIABLE	"tmrContext1"	8	"_tmr_context_t"	0	0	8	0	0	0	59	
.VARIABLE	"usbhostContext"	32	"_usbhost_context_t"	0	0	20	0	0	0	61	
.FUNCTION	"main"	
.RETURN "void"	0	0	0	56	0	0	0	
SP_DEC	$53
.LINE	65
PUSH8	$8
PUSH16	$1
PUSH8	$50
CALL	vos_init
SP_INC	$4
.LINE	66
PUSH8	$0
CALL	vos_set_clock_frequency
SP_INC	$1
.LINE	67
PUSH16	$512
CALL	vos_set_idle_thread_tcb_size
SP_INC	$2
.LINE	70
CALL	iomux_setup
.LINE	74
SP_STORE	%ecx
ADD16	%ecx	$1
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$3
SP_STORE	%eax
ADD16	%eax	$1
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$3
LD8	(%ecx)	$0
.LINE	75
SP_STORE	%ecx
ADD16	%ecx	$5
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%eax	$5
PUSH16	%eax
PUSH8	$2
SP_DEC	$1
CALL	gpio_init
POP8	%eax
SP_WR8	%eax	$10
SP_INC	$3
.LINE	78
SP_STORE	%ecx
ADD16	%ecx	$9
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$9
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$11
LD8	(%ecx)	$1
.LINE	79
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_RD16	%eax	$13
PUSH16	%eax
PUSH8	$3
SP_DEC	$1
CALL	tmr_init
POP8	%eax
SP_WR8	%eax	$18
SP_INC	$3
.LINE	82
PUSH8	$4
SP_DEC	$1
CALL	fatdrv_init
POP8	%eax
SP_WR8	%eax	$17
SP_INC	$1
.LINE	85
PUSH8	$5
SP_DEC	$1
CALL	fatdrv_init
POP8	%eax
SP_WR8	%eax	$18
SP_INC	$1
.LINE	88
PUSH8	$6
SP_DEC	$1
CALL	boms_init
POP8	%eax
SP_WR8	%eax	$19
SP_INC	$1
.LINE	91
PUSH8	$7
SP_DEC	$1
CALL	boms_init
POP8	%eax
SP_WR8	%eax	$20
SP_INC	$1
.LINE	94
SP_STORE	%ecx
ADD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$20
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$24
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$26
LD8	(%ecx)	$8
.LINE	95
SP_STORE	%ecx
ADD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$20
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$30
SP_STORE	%eax
ADD16	%eax	$28
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$30
LD8	(%ecx)	$16
.LINE	96
SP_STORE	%ecx
ADD16	%ecx	$32
SP_STORE	%eax
ADD16	%eax	$20
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$34
SP_STORE	%eax
ADD16	%eax	$32
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$34
LD8	(%ecx)	$2
.LINE	97
SP_STORE	%ecx
ADD16	%ecx	$36
SP_STORE	%eax
ADD16	%eax	$20
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$36
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$38
LD8	(%ecx)	$2
.LINE	98
SP_STORE	%ecx
ADD16	%ecx	$40
SP_STORE	%eax
ADD16	%eax	$20
CPY16	(%ecx)	%eax
SP_RD16	%eax	$40
PUSH16	%eax
PUSH8	$1
PUSH8	$0
SP_DEC	$1
CALL	usbhost_init
POP8	%eax
SP_WR8	%eax	$46
SP_INC	$4
.LINE	102
SP_STORE	%ecx
ADD16	%ecx	$43
LD32	(%ecx)	$firmware
SP_STORE	%ecx
ADD16	%ecx	$47
LD32	(%ecx)	$Str@0
PUSH16	$0
SP_RD16	%eax	$49
PUSH16	%eax
SP_RD32	%eax	$47
PUSH32	%eax
PUSH16	$4096
PUSH8	$20
SP_DEC	$2
CALL	vos_create_thread_ex
POP16	%eax
SP_WR16	%eax	$62
SP_INC	$11
SP_RD16	tcbFIRMWARE	$51
.LINE	105
CALL	vos_start_scheduler
.LINE	107
@fl1main_loop:	
.LINE	108
JUMP	@fl1main_loop
.LINE	108
SP_INC	$53
RTS	
.FUNC_END	"main"

.LINE	113
usbhost_connect_state:	
.GLOBAL	 DO_NOT_EXPORT  "usbhost_connect_state"

.VARIABLE	"connectstate"	8	"char"	0	0	0	0	0	0	115	
.VARIABLE	"hc_iocb"	80	"_usbhost_ioctl_cb_t"	0	0	1	0	0	0	116	
.FUNCTION	"usbhost_connect_state"	
.RETURN "char"	8	0	0	30	0	0	0	
.PARAMETER	"hUSB"	16 "short"	0	0	31	0	0	0	113	
SP_DEC	$27
.LINE	115
LD8	%ecx	$0
SP_WR8	%ecx	$0
.LINE	118
SP_STORE	%ecx
ADD16	%ecx	$31
CMP16	(%ecx)	$0
JNZ	@IC2
JUMP	@IC1
@IC2:	
.LINE	120
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$1
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$11
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$13
LD8	(%ecx)	$16
.LINE	121
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$1
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$15
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$19
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$19
CPY16	(%ecx)	(%eax)
.LINE	122
SP_STORE	%ecx
ADD16	%ecx	$21
SP_STORE	%eax
ADD16	%eax	$1
CPY16	(%ecx)	%eax
SP_RD16	%eax	$21
PUSH16	%eax
SP_RD16	%eax	$33
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$27
SP_INC	$4
.LINE	125
SP_RD8	%ecx	$0
CMP8	%ecx	$1
JZ	@IC4
JNZ	@IC3
@IC4:	
.LINE	127
SP_STORE	%ecx
ADD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$1
CPY16	(%ecx)	%eax
SP_RD16	%eax	$24
PUSH16	%eax
SP_RD16	%eax	$33
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$30
SP_INC	$4
@IC3:	
@IC1:	
.LINE	130
SP_STORE	%eax
SP_STORE	%ecx
ADD16	%ecx	$30
CPY8	(%ecx)	(%eax)
SP_INC	$27
RTS	
.FUNC_END	"usbhost_connect_state"

.LINE	134
fat_attach:	
.GLOBAL	 DO_NOT_EXPORT  "fat_attach"

.VARIABLE	"hFAT"	16	"short"	0	0	2	0	0	0	138	
.VARIABLE	"fat_ioctl"	56	"_fat_ioctl_cb_t"	0	0	4	0	0	0	136	
.VARIABLE	"fat_att"	24	"_fatdrv_ioctl_cb_attach_t"	0	0	19	0	0	0	137	
.FUNCTION	"fat_attach"	
.RETURN "short"	16	0	0	38	0	0	0	
.PARAMETER	"hMSI"	16 "short"	0	0	40	0	0	0	134	
.PARAMETER	"devFAT"	8 "char"	0	0	42	0	0	0	134	
SP_DEC	$35
.LINE	142
SP_RD16	%eax	$42
PUSH8	%eax
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$1
SP_INC	$1
SP_RD16	%ecx	$0
SP_WR16	%ecx	$2
.LINE	145
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$11
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$13
LD8	(%ecx)	$1
.LINE	146
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$15
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$19
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	(%eax)
.LINE	147
SP_STORE	%ecx
ADD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$19
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$24
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$40
CPY16	(%ecx)	(%eax)
.LINE	148
SP_STORE	%ecx
ADD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$19
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$30
SP_STORE	%eax
ADD16	%eax	$28
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$30
LD8	(%ecx)	$0
.LINE	150
SP_STORE	%ecx
ADD16	%ecx	$32
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_RD16	%eax	$32
PUSH16	%eax
SP_RD16	%eax	$4
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$38
SP_INC	$4
SP_RD8	%ecx	$34
CMP8	%ecx	$0
JNZ	@IC8
JZ	@IC7
@IC8:	
.LINE	153
SP_RD16	%eax	$2
PUSH16	%eax
CALL	vos_dev_close
SP_INC	$2
.LINE	154
LD16	%ecx	$0
SP_WR16	%ecx	$2
@IC7:	
.LINE	157
SP_RD16	%eax	$2
SP_WR16	%eax	$38
SP_INC	$35
RTS	
.FUNC_END	"fat_attach"

.LINE	160
fat_detach:	
.GLOBAL	 DO_NOT_EXPORT  "fat_detach"

.VARIABLE	"fat_ioctl"	56	"_fat_ioctl_cb_t"	0	0	0	0	0	0	162	
.FUNCTION	"fat_detach"	
.RETURN "void"	0	0	0	25	0	0	0	
.PARAMETER	"hFAT"	16 "short"	0	0	25	0	0	0	160	
SP_DEC	$22
.LINE	164
SP_STORE	%ecx
ADD16	%ecx	$25
CMP16	(%ecx)	$0
JNZ	@IC12
JUMP	@IC11
@IC12:	
.LINE	166
SP_STORE	%ecx
ADD16	%ecx	$7
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$9
SP_STORE	%eax
ADD16	%eax	$7
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$9
LD8	(%ecx)	$2
.LINE	167
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$11
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$13
LD16	(%ecx)	$0
.LINE	168
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$15
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$17
LD16	(%ecx)	$0
.LINE	170
SP_STORE	%ecx
ADD16	%ecx	$19
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%eax	$19
PUSH16	%eax
SP_RD16	%eax	$27
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$25
SP_INC	$4
.LINE	171
SP_RD16	%eax	$25
PUSH16	%eax
CALL	vos_dev_close
SP_INC	$2
@IC11:	
.LINE	171
SP_INC	$22
RTS	
.FUNC_END	"fat_detach"

.LINE	176
boms_attach:	
.GLOBAL	 DO_NOT_EXPORT  "boms_attach"

.VARIABLE	"ifDisk"	32	"int"	1	0	0	0	0	0	178	
.VARIABLE	"hc_iocb_class"	24	"_usbhost_ioctl_cb_class_t"	0	0	4	0	0	0	180	
.VARIABLE	"hc_iocb"	80	"_usbhost_ioctl_cb_t"	0	0	19	0	0	0	179	
.VARIABLE	"hBOMS"	16	"short"	0	0	56	0	0	0	183	
.VARIABLE	"boms_att"	48	"_boms_ioctl_cb_attach_t"	0	0	58	0	0	0	182	
.VARIABLE	"boms_iocb"	40	"_msi_ioctl_cb_t"	0	0	72	0	0	0	181	
.FUNCTION	"boms_attach"	
.RETURN "short"	16	0	0	97	0	0	0	
.PARAMETER	"hUSB"	16 "short"	0	0	99	0	0	0	176	
.PARAMETER	"devBOMS"	8 "char"	0	0	101	0	0	0	176	
SP_DEC	$94
.LINE	178
LD32	%ecx	$0
SP_WR32	%ecx	$0
.LINE	186
SP_STORE	%ecx
ADD16	%ecx	$7
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$9
SP_STORE	%eax
ADD16	%eax	$7
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$9
LD8	(%ecx)	$8
.LINE	187
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$11
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$13
LD8	(%ecx)	$6
.LINE	188
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$15
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$17
LD8	(%ecx)	$80
.LINE	191
SP_STORE	%ecx
ADD16	%ecx	$29
SP_STORE	%eax
ADD16	%eax	$19
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$31
SP_STORE	%eax
ADD16	%eax	$29
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$31
LD8	(%ecx)	$35
.LINE	192
SP_STORE	%ecx
ADD16	%ecx	$33
SP_STORE	%eax
ADD16	%eax	$19
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$35
SP_STORE	%eax
ADD16	%eax	$33
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$37
SP_STORE	%eax
ADD16	%eax	$35
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$37
LD32	(%ecx)	$0
.LINE	193
SP_STORE	%ecx
ADD16	%ecx	$39
SP_STORE	%eax
ADD16	%eax	$19
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$41
SP_STORE	%eax
ADD16	%eax	$39
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$43
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$41
SP_STORE	%eax
ADD16	%eax	$43
CPY16	(%ecx)	(%eax)
.LINE	194
SP_STORE	%ecx
ADD16	%ecx	$45
SP_STORE	%eax
ADD16	%eax	$19
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$47
SP_STORE	%eax
ADD16	%eax	$45
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$49
SP_STORE	%eax
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$47
SP_STORE	%eax
ADD16	%eax	$49
CPY16	(%ecx)	(%eax)
.LINE	196
SP_STORE	%ecx
ADD16	%ecx	$51
SP_STORE	%eax
ADD16	%eax	$19
CPY16	(%ecx)	%eax
SP_RD16	%eax	$51
PUSH16	%eax
SP_RD16	%eax	$101
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$57
SP_INC	$4
SP_RD8	%ecx	$53
CMP8	%ecx	$0
JNZ	@IC14
JZ	@IC13
@IC14:	
.LINE	198
LD16	%eax	$0
SP_WR16	%eax	$97
SP_INC	$94
RTS	
@IC13:	
.LINE	202
SP_RD16	%eax	$101
PUSH8	%eax
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$55
SP_INC	$1
SP_RD16	%ecx	$54
SP_WR16	%ecx	$56
.LINE	205
SP_STORE	%ecx
ADD16	%ecx	$64
SP_STORE	%eax
ADD16	%eax	$58
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$66
SP_STORE	%eax
ADD16	%eax	$64
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$66
SP_STORE	%eax
ADD16	%eax	$99
CPY16	(%ecx)	(%eax)
.LINE	206
SP_STORE	%ecx
ADD16	%ecx	$68
SP_STORE	%eax
ADD16	%eax	$58
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$70
SP_STORE	%eax
ADD16	%eax	$68
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$70
SP_STORE	%eax
CPY32	(%ecx)	(%eax)
.LINE	208
SP_STORE	%ecx
ADD16	%ecx	$77
SP_STORE	%eax
ADD16	%eax	$72
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$79
SP_STORE	%eax
ADD16	%eax	$77
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$79
LD8	(%ecx)	$33
.LINE	209
SP_STORE	%ecx
ADD16	%ecx	$81
SP_STORE	%eax
ADD16	%eax	$72
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$83
SP_STORE	%eax
ADD16	%eax	$81
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$58
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$83
SP_STORE	%eax
ADD16	%eax	$85
CPY16	(%ecx)	(%eax)
.LINE	210
SP_STORE	%ecx
ADD16	%ecx	$87
SP_STORE	%eax
ADD16	%eax	$72
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$89
SP_STORE	%eax
ADD16	%eax	$87
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$89
LD16	(%ecx)	$0
.LINE	212
SP_STORE	%ecx
ADD16	%ecx	$91
SP_STORE	%eax
ADD16	%eax	$72
CPY16	(%ecx)	%eax
SP_RD16	%eax	$91
PUSH16	%eax
SP_RD16	%eax	$58
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$97
SP_INC	$4
SP_RD8	%ecx	$93
CMP8	%ecx	$0
JNZ	@IC18
JZ	@IC17
@IC18:	
.LINE	214
SP_RD16	%eax	$56
PUSH16	%eax
CALL	vos_dev_close
SP_INC	$2
.LINE	215
LD16	%ecx	$0
SP_WR16	%ecx	$56
@IC17:	
.LINE	218
SP_RD16	%eax	$56
SP_WR16	%eax	$97
SP_INC	$94
RTS	
.FUNC_END	"boms_attach"

.LINE	221
boms_detach:	
.GLOBAL	 DO_NOT_EXPORT  "boms_detach"

.VARIABLE	"boms_iocb"	40	"_msi_ioctl_cb_t"	0	0	0	0	0	0	223	
.FUNCTION	"boms_detach"	
.RETURN "void"	0	0	0	23	0	0	0	
.PARAMETER	"hBOMS"	16 "short"	0	0	23	0	0	0	221	
SP_DEC	$20
.LINE	225
SP_STORE	%ecx
ADD16	%ecx	$23
CMP16	(%ecx)	$0
JNZ	@IC22
JUMP	@IC21
@IC22:	
.LINE	227
SP_STORE	%ecx
ADD16	%ecx	$5
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$7
SP_STORE	%eax
ADD16	%eax	$5
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$7
LD8	(%ecx)	$34
.LINE	228
SP_STORE	%ecx
ADD16	%ecx	$9
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$9
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$11
LD16	(%ecx)	$0
.LINE	229
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$13
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$15
LD16	(%ecx)	$0
.LINE	231
SP_STORE	%ecx
ADD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%eax	$17
PUSH16	%eax
SP_RD16	%eax	$25
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$23
SP_INC	$4
.LINE	232
SP_RD16	%eax	$23
PUSH16	%eax
CALL	vos_dev_close
SP_INC	$2
@IC21:	
.LINE	232
SP_INC	$20
RTS	
.FUNC_END	"boms_detach"

.LINE	238
open_drivers:	
.GLOBAL	 DO_NOT_EXPORT  "open_drivers"

.FUNCTION	"open_drivers"	
.RETURN "void"	0	0	0	11	0	0	0	
SP_DEC	$8
.LINE	242
PUSH8	$0
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$1
SP_INC	$1
SP_RD16	hUSBHOST_1	$0
.LINE	243
PUSH8	$1
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$3
SP_INC	$1
SP_RD16	hUSBHOST_2	$2
.LINE	244
PUSH8	$2
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$5
SP_INC	$1
SP_RD16	hGPIO_PORT_A	$4
.LINE	245
PUSH8	$3
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$7
SP_INC	$1
SP_RD16	hTIMER_1	$6
.LINE	245
SP_INC	$8
RTS	
.FUNC_END	"open_drivers"

.LINE	249
attach_drivers:	
.GLOBAL	 DO_NOT_EXPORT  "attach_drivers"

.FUNCTION	"attach_drivers"	
.RETURN "void"	0	0	0	11	0	0	0	
SP_DEC	$8
.LINE	252
PUSH8	$6
PUSH16	hUSBHOST_1
SP_DEC	$2
CALL	boms_attach
POP16	%eax
SP_WR16	%eax	$3
SP_INC	$3
SP_RD16	hBOMS_1	$0
.LINE	253
PUSH8	$7
PUSH16	hUSBHOST_2
SP_DEC	$2
CALL	boms_attach
POP16	%eax
SP_WR16	%eax	$5
SP_INC	$3
SP_RD16	hBOMS_2	$2
.LINE	254
PUSH8	$4
PUSH16	hBOMS_1
SP_DEC	$2
CALL	fat_attach
POP16	%eax
SP_WR16	%eax	$7
SP_INC	$3
SP_RD16	hFAT_FILE_SYSTEM_1	$4
.LINE	255
PUSH8	$5
PUSH16	hBOMS_2
SP_DEC	$2
CALL	fat_attach
POP16	%eax
SP_WR16	%eax	$9
SP_INC	$3
SP_RD16	hFAT_FILE_SYSTEM_2	$6
.LINE	255
SP_INC	$8
RTS	
.FUNC_END	"attach_drivers"

.LINE	259
close_drivers:	
.GLOBAL	 DO_NOT_EXPORT  "close_drivers"

.FUNCTION	"close_drivers"	
.RETURN "void"	0	0	0	3	0	0	0	
.LINE	262
PUSH16	hUSBHOST_1
CALL	vos_dev_close
SP_INC	$2
.LINE	263
PUSH16	hUSBHOST_2
CALL	vos_dev_close
SP_INC	$2
.LINE	264
PUSH16	hGPIO_PORT_A
CALL	vos_dev_close
SP_INC	$2
.LINE	265
PUSH16	hTIMER_1
CALL	vos_dev_close
SP_INC	$2
.LINE	265
RTS	
.FUNC_END	"close_drivers"

.LINE	269
FatReadSector:	
.GLOBAL	 DO_NOT_EXPORT  "FatReadSector"

.VARIABLE	"st%FatReadSector%xfer"	224	"_msi_xfer_cb_t"	0	0	-1	0	0	0	272	static
.VARIABLE	"stat"	8	"char"	0	0	35	0	0	0	273	
.FUNCTION	"FatReadSector"	
.RETURN "char"	8	0	0	43	0	0	0	
.PARAMETER	"sec"	32 "long"	0	0	44	0	0	0	269	
.PARAMETER	"buffer"	16 "char"	0	1	48	0	0	1	269	
.PARAMETER	"sl"	16 "short"	0	0	50	0	0	0	269	
SP_DEC	$40
.LINE	275
SP_STORE	%ecx
LD16	(%ecx)	$st%FatReadSector%xfer
SP_STORE	%ecx
ADD16	%ecx	$2
SP_STORE	%eax
ADD16	%eax	$0
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$2
SP_STORE	%eax
ADD16	%eax	$44
CPY32	(%ecx)	(%eax)
.LINE	276
SP_STORE	%ecx
ADD16	%ecx	$4
LD16	(%ecx)	$st%FatReadSector%xfer
SP_STORE	%ecx
ADD16	%ecx	$6
SP_STORE	%eax
ADD16	%eax	$4
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$6
SP_STORE	%eax
ADD16	%eax	$48
CPY16	(%ecx)	(%eax)
.LINE	277
SP_STORE	%ecx
ADD16	%ecx	$8
LD16	(%ecx)	$st%FatReadSector%xfer
SP_STORE	%ecx
ADD16	%ecx	$10
SP_STORE	%eax
ADD16	%eax	$8
LD16	%ebx	$10
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$10
SP_STORE	%eax
ADD16	%eax	$50
CPY16	(%ecx)	(%eax)
.LINE	278
SP_STORE	%ecx
ADD16	%ecx	$12
LD16	(%ecx)	$st%FatReadSector%xfer
SP_STORE	%ecx
ADD16	%ecx	$14
SP_STORE	%eax
ADD16	%eax	$12
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$14
SP_STORE	%eax
ADD16	%eax	$50
CPY16	(%ecx)	(%eax)
.LINE	279
SP_STORE	%ecx
ADD16	%ecx	$16
LD16	(%ecx)	$st%FatReadSector%xfer
SP_STORE	%ecx
ADD16	%ecx	$18
SP_STORE	%eax
ADD16	%eax	$16
LD16	%ebx	$13
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$18
LD8	(%ecx)	$5
.LINE	280
SP_STORE	%ecx
ADD16	%ecx	$20
LD16	(%ecx)	$st%FatReadSector%xfer
SP_STORE	%ecx
ADD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$20
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$24
LD16	(%ecx)	$semRead
SP_RD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$24
CPY16	(%ecx)	(%eax)
.LINE	281
SP_STORE	%ecx
ADD16	%ecx	$26
LD16	(%ecx)	$st%FatReadSector%xfer
SP_STORE	%ecx
ADD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$26
LD16	%ebx	$12
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$28
LD8	(%ecx)	$7
.LINE	282
SP_STORE	%ecx
ADD16	%ecx	$30
LD16	(%ecx)	$st%FatReadSector%xfer
SP_RD16	%ecx	$30
SP_WR16	%ecx	$32
PUSH16	$0
PUSH16	$28
SP_RD16	%eax	$36
PUSH16	%eax
PUSH16	hBOMS_2
SP_DEC	$1
CALL	vos_dev_read
POP8	%eax
SP_WR8	%eax	$42
SP_INC	$8
SP_RD8	%ecx	$34
SP_WR8	%ecx	$35
.LINE	284
SP_RD8	%ecx	$35
CMP8	%ecx	$0
JZ	@IC25
JNZ	@IC24
@IC25:	
.LINE	286
LD8	%ecx	$0
SP_WR8	%ecx	$35
JUMP	@IC23
@IC24:	
.LINE	290
SP_STORE	%ecx
ADD16	%ecx	$36
SP_RD8	%eax	$35
AND32	%eax	$255
LD32	%ebx	$128
OR32	(%ecx)	%eax	%ebx
SP_RD8	%ecx	$36
SP_WR8	%ecx	$35
@IC23:	
.LINE	292
SP_STORE	%eax
ADD16	%eax	$35
SP_STORE	%ecx
ADD16	%ecx	$43
CPY8	(%ecx)	(%eax)
SP_INC	$40
RTS	
.FUNC_END	"FatReadSector"

.LINE	297
FatWriteSector:	
.GLOBAL	 DO_NOT_EXPORT  "FatWriteSector"

.VARIABLE	"st%FatWriteSector%xfer"	224	"_msi_xfer_cb_t"	0	0	-1	0	0	0	300	static
.VARIABLE	"status"	8	"char"	0	0	35	0	0	0	301	
.FUNCTION	"FatWriteSector"	
.RETURN "char"	8	0	0	43	0	0	0	
.PARAMETER	"sec"	32 "long"	0	0	44	0	0	0	297	
.PARAMETER	"buffer"	16 "char"	0	1	48	0	0	1	297	
.PARAMETER	"sl"	16 "short"	0	0	50	0	0	0	297	
SP_DEC	$40
.LINE	303
SP_STORE	%ecx
LD16	(%ecx)	$st%FatWriteSector%xfer
SP_STORE	%ecx
ADD16	%ecx	$2
SP_STORE	%eax
ADD16	%eax	$0
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$2
SP_STORE	%eax
ADD16	%eax	$44
CPY32	(%ecx)	(%eax)
.LINE	304
SP_STORE	%ecx
ADD16	%ecx	$4
LD16	(%ecx)	$st%FatWriteSector%xfer
SP_STORE	%ecx
ADD16	%ecx	$6
SP_STORE	%eax
ADD16	%eax	$4
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$6
SP_STORE	%eax
ADD16	%eax	$48
CPY16	(%ecx)	(%eax)
.LINE	305
SP_STORE	%ecx
ADD16	%ecx	$8
LD16	(%ecx)	$st%FatWriteSector%xfer
SP_STORE	%ecx
ADD16	%ecx	$10
SP_STORE	%eax
ADD16	%eax	$8
LD16	%ebx	$10
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$10
SP_STORE	%eax
ADD16	%eax	$50
CPY16	(%ecx)	(%eax)
.LINE	306
SP_STORE	%ecx
ADD16	%ecx	$12
LD16	(%ecx)	$st%FatWriteSector%xfer
SP_STORE	%ecx
ADD16	%ecx	$14
SP_STORE	%eax
ADD16	%eax	$12
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$14
SP_STORE	%eax
ADD16	%eax	$50
CPY16	(%ecx)	(%eax)
.LINE	307
SP_STORE	%ecx
ADD16	%ecx	$16
LD16	(%ecx)	$st%FatWriteSector%xfer
SP_STORE	%ecx
ADD16	%ecx	$18
SP_STORE	%eax
ADD16	%eax	$16
LD16	%ebx	$13
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$18
LD8	(%ecx)	$5
.LINE	308
SP_STORE	%ecx
ADD16	%ecx	$20
LD16	(%ecx)	$st%FatWriteSector%xfer
SP_STORE	%ecx
ADD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$20
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$24
LD16	(%ecx)	$semWrite
SP_RD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$24
CPY16	(%ecx)	(%eax)
.LINE	309
SP_STORE	%ecx
ADD16	%ecx	$26
LD16	(%ecx)	$st%FatWriteSector%xfer
SP_STORE	%ecx
ADD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$26
LD16	%ebx	$12
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$28
LD8	(%ecx)	$7
.LINE	310
SP_STORE	%ecx
ADD16	%ecx	$30
LD16	(%ecx)	$st%FatWriteSector%xfer
SP_RD16	%ecx	$30
SP_WR16	%ecx	$32
PUSH16	$0
PUSH16	$28
SP_RD16	%eax	$36
PUSH16	%eax
PUSH16	hBOMS_1
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$42
SP_INC	$8
SP_RD8	%ecx	$34
SP_WR8	%ecx	$35
.LINE	312
SP_RD8	%ecx	$35
CMP8	%ecx	$0
JZ	@IC30
JNZ	@IC29
@IC30:	
.LINE	314
LD8	%ecx	$0
SP_WR8	%ecx	$35
JUMP	@IC28
@IC29:	
.LINE	318
SP_STORE	%ecx
ADD16	%ecx	$36
SP_RD8	%eax	$35
AND32	%eax	$255
LD32	%ebx	$128
OR32	(%ecx)	%eax	%ebx
SP_RD8	%ecx	$36
SP_WR8	%ecx	$35
@IC28:	
.LINE	320
SP_STORE	%eax
ADD16	%eax	$35
SP_STORE	%ecx
ADD16	%ecx	$43
CPY8	(%ecx)	(%eax)
SP_INC	$40
RTS	
.FUNC_END	"FatWriteSector"

.LINE	326
firmware:	
.GLOBAL	 DO_NOT_EXPORT  "firmware"

.VARIABLE	"sector"	32	"long"	0	0	0	0	0	0	356	
.VARIABLE	"allDone"	16	"short"	1	0	4	0	0	0	359	
.VARIABLE	"pBuffer"	16	"char"	0	1	10	0	0	1	355	
.VARIABLE	"leds"	8	"char"	0	0	22	0	0	0	348	
.VARIABLE	"hc_iocb"	80	"_usbhost_ioctl_cb_t"	0	0	30	0	0	0	335	
.VARIABLE	"connectstate"	8	"char"	0	0	48	0	0	0	330	
.VARIABLE	"hc_iocb_class"	24	"_usbhost_ioctl_cb_class_t"	0	0	80	0	0	0	336	
.VARIABLE	"ifDev"	16	"void"	0	1	89	0	0	1	334	
.VARIABLE	"boms_iocb"	40	"_msi_ioctl_cb_t"	0	0	110	0	0	0	339	
.VARIABLE	"boms_att"	48	"_boms_ioctl_cb_attach_t"	0	0	123	0	0	0	340	
.VARIABLE	"status"	8	"char"	0	0	146	0	0	0	331	
.VARIABLE	"sectorSize2"	16	"short"	0	0	168	0	0	0	329	
.VARIABLE	"sectorSize1"	16	"short"	0	0	317	0	0	0	329	
.VARIABLE	"clusterSize"	16	"short"	0	0	328	0	0	0	357	
.VARIABLE	"semRead"	40	"_vos_semaphore_t"	0	0	330	0	0	0	354	
.VARIABLE	"semWrite"	40	"_vos_semaphore_t"	0	0	337	0	0	0	354	
.VARIABLE	"xfer"	224	"_msi_xfer_cb_t"	0	0	344	0	0	0	349	
.VARIABLE	"i"	32	"int"	1	0	402	0	0	0	360	
.FUNCTION	"firmware"	
.RETURN "void"	0	0	0	478	0	0	0	
SP_DEC	$255
SP_DEC	$220
.LINE	356
LD32	%ecx	$0
SP_WR32	%ecx	$0
.LINE	359
LD16	%ecx	$0
SP_WR16	%ecx	$4
.LINE	363
PUSH8	$1
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$7
SP_INC	$1
SP_RD16	hUSBHOST_2	$6
.LINE	366
PUSH16	$4096
SP_DEC	$2
CALL	malloc
POP16	%eax
SP_WR16	%eax	$10
SP_INC	$2
SP_RD16	%ecx	$8
SP_WR16	%ecx	$10
@IC33:	
.LINE	371
PUSH16	$250
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$14
SP_INC	$2
.LINE	372
SP_STORE	%ecx
ADD16	%ecx	$13
LD32	%eax	$0
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$17
LD16	(%ecx)	$led
SP_STORE	%ecx
ADD16	%ecx	$19
SP_STORE	%eax
ADD16	%eax	$17
SP_STORE	%ebx
ADD16	%ebx	$13
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$21
SP_RD16	%eax	$19
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$21
SP_WR8	%ecx	$22
SP_STORE	%ecx
ADD16	%ecx	$23
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
PUSH16	$0
PUSH16	$1
SP_RD16	%eax	$27
PUSH16	%eax
PUSH16	hGPIO_PORT_A
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$33
SP_INC	$8
.LINE	373
PUSH16	$250
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$28
SP_INC	$2
.LINE	374
LD8	%ecx	$0
SP_WR8	%ecx	$22
SP_STORE	%ecx
ADD16	%ecx	$27
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
PUSH16	$0
PUSH16	$1
SP_RD16	%eax	$31
PUSH16	%eax
PUSH16	hGPIO_PORT_A
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$37
SP_INC	$8
.LINE	378
SP_STORE	%ecx
ADD16	%ecx	$40
SP_STORE	%eax
ADD16	%eax	$30
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$40
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$42
LD8	(%ecx)	$16
.LINE	379
SP_STORE	%ecx
ADD16	%ecx	$44
SP_STORE	%eax
ADD16	%eax	$30
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$46
SP_STORE	%eax
ADD16	%eax	$44
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$49
SP_STORE	%eax
ADD16	%eax	$48
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$46
SP_STORE	%eax
ADD16	%eax	$49
CPY16	(%ecx)	(%eax)
.LINE	381
SP_STORE	%ecx
ADD16	%ecx	$51
SP_STORE	%eax
ADD16	%eax	$30
CPY16	(%ecx)	%eax
SP_RD16	%eax	$51
PUSH16	%eax
PUSH16	hUSBHOST_2
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$57
SP_INC	$4
.LINE	383
SP_RD8	%ecx	$48
CMP8	%ecx	$17
JZ	@IC37
JNZ	@IC36
@IC37:	
.LINE	385
SP_STORE	%ecx
ADD16	%ecx	$54
LD32	%eax	$1
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$58
LD16	(%ecx)	$led
SP_STORE	%ecx
ADD16	%ecx	$60
SP_STORE	%eax
ADD16	%eax	$58
SP_STORE	%ebx
ADD16	%ebx	$54
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$62
SP_RD16	%eax	$60
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$62
SP_WR8	%ecx	$22
SP_STORE	%ecx
ADD16	%ecx	$63
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
PUSH16	$0
PUSH16	$1
SP_RD16	%eax	$67
PUSH16	%eax
PUSH16	hGPIO_PORT_A
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$73
SP_INC	$8
.LINE	388
SP_STORE	%ecx
ADD16	%ecx	$66
SP_STORE	%eax
ADD16	%eax	$30
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$68
SP_STORE	%eax
ADD16	%eax	$66
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$68
LD8	(%ecx)	$35
.LINE	389
SP_STORE	%ecx
ADD16	%ecx	$70
SP_STORE	%eax
ADD16	%eax	$30
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$72
SP_STORE	%eax
ADD16	%eax	$70
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$74
SP_STORE	%eax
ADD16	%eax	$72
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$74
LD32	(%ecx)	$0
.LINE	390
SP_STORE	%ecx
ADD16	%ecx	$76
SP_STORE	%eax
ADD16	%eax	$30
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$78
SP_STORE	%eax
ADD16	%eax	$76
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$83
SP_STORE	%eax
ADD16	%eax	$80
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$78
SP_STORE	%eax
ADD16	%eax	$83
CPY16	(%ecx)	(%eax)
.LINE	391
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$30
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$87
SP_STORE	%eax
ADD16	%eax	$85
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$91
SP_STORE	%eax
ADD16	%eax	$89
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$87
SP_STORE	%eax
ADD16	%eax	$91
CPY16	(%ecx)	(%eax)
.LINE	392
SP_STORE	%ecx
ADD16	%ecx	$93
SP_STORE	%eax
ADD16	%eax	$80
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$95
SP_STORE	%eax
ADD16	%eax	$93
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$95
LD8	(%ecx)	$8
.LINE	393
SP_STORE	%ecx
ADD16	%ecx	$97
SP_STORE	%eax
ADD16	%eax	$80
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$99
SP_STORE	%eax
ADD16	%eax	$97
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$99
LD8	(%ecx)	$6
.LINE	394
SP_STORE	%ecx
ADD16	%ecx	$101
SP_STORE	%eax
ADD16	%eax	$80
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$103
SP_STORE	%eax
ADD16	%eax	$101
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$103
LD8	(%ecx)	$80
.LINE	396
SP_STORE	%ecx
ADD16	%ecx	$105
SP_STORE	%eax
ADD16	%eax	$30
CPY16	(%ecx)	%eax
SP_RD16	%eax	$105
PUSH16	%eax
PUSH16	hUSBHOST_2
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$111
SP_INC	$4
SP_RD8	%ecx	$107
CMP8	%ecx	$0
JNZ	@IC41
JZ	@IC40
@IC41:	
.LINE	398
JUMP	@IC35
@IC40:	
.LINE	402
PUSH8	$7
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$109
SP_INC	$1
SP_RD16	hBOMS_2	$108
.LINE	405
SP_STORE	%ecx
ADD16	%ecx	$115
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$117
SP_STORE	%eax
ADD16	%eax	$115
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$117
LD8	(%ecx)	$33
.LINE	406
SP_STORE	%ecx
ADD16	%ecx	$119
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$121
SP_STORE	%eax
ADD16	%eax	$119
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$129
SP_STORE	%eax
ADD16	%eax	$123
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$121
SP_STORE	%eax
ADD16	%eax	$129
CPY16	(%ecx)	(%eax)
.LINE	407
SP_STORE	%ecx
ADD16	%ecx	$131
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$133
SP_STORE	%eax
ADD16	%eax	$131
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$133
LD16	(%ecx)	$0
.LINE	408
SP_STORE	%ecx
ADD16	%ecx	$135
SP_STORE	%eax
ADD16	%eax	$123
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$137
SP_STORE	%eax
ADD16	%eax	$135
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$137
CPY16	(%ecx)	hUSBHOST_2
.LINE	409
SP_STORE	%ecx
ADD16	%ecx	$139
SP_STORE	%eax
ADD16	%eax	$123
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$141
SP_STORE	%eax
ADD16	%eax	$139
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$141
SP_RD16	%eax	$89
SHL32	%eax	$16
SAR32	%eax	$16
CPY32	(%ecx)	%eax
.LINE	411
SP_STORE	%ecx
ADD16	%ecx	$143
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_RD16	%eax	$143
PUSH16	%eax
PUSH16	hBOMS_2
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$149
SP_INC	$4
SP_RD8	%ecx	$145
SP_WR8	%ecx	$146
.LINE	412
SP_RD8	%ecx	$146
CMP8	%ecx	$0
JNZ	@IC45
JZ	@IC44
@IC45:	
.LINE	414
SP_STORE	%ecx
ADD16	%ecx	$147
LD32	%eax	$3
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$151
LD16	(%ecx)	$led
SP_STORE	%ecx
ADD16	%ecx	$153
SP_STORE	%eax
ADD16	%eax	$151
SP_STORE	%ebx
ADD16	%ebx	$147
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$155
SP_RD16	%eax	$153
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$155
SP_WR8	%ecx	$22
SP_STORE	%ecx
ADD16	%ecx	$156
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
PUSH16	$0
PUSH16	$1
SP_RD16	%eax	$160
PUSH16	%eax
PUSH16	hGPIO_PORT_A
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$166
SP_INC	$8
.LINE	415
PUSH16	$1000
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$161
SP_INC	$2
.LINE	416
JUMP	@IC35
@IC44:	
.LINE	419
SP_STORE	%ecx
ADD16	%ecx	$160
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$162
SP_STORE	%eax
ADD16	%eax	$160
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$162
LD8	(%ecx)	$20
.LINE	420
SP_STORE	%ecx
ADD16	%ecx	$164
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$166
SP_STORE	%eax
ADD16	%eax	$164
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$170
SP_STORE	%eax
ADD16	%eax	$168
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$166
SP_STORE	%eax
ADD16	%eax	$170
CPY16	(%ecx)	(%eax)
.LINE	421
SP_STORE	%ecx
ADD16	%ecx	$172
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_RD16	%eax	$172
PUSH16	%eax
PUSH16	hBOMS_2
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$178
SP_INC	$4
.LINE	424
PUSH8	$0
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$176
SP_INC	$1
SP_RD16	hUSBHOST_1	$175
.LINE	427
SP_STORE	%ecx
ADD16	%ecx	$177
SP_STORE	%eax
ADD16	%eax	$30
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$179
SP_STORE	%eax
ADD16	%eax	$177
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$179
LD8	(%ecx)	$16
.LINE	428
SP_STORE	%ecx
ADD16	%ecx	$181
SP_STORE	%eax
ADD16	%eax	$30
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$183
SP_STORE	%eax
ADD16	%eax	$181
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$185
SP_STORE	%eax
ADD16	%eax	$48
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$183
SP_STORE	%eax
ADD16	%eax	$185
CPY16	(%ecx)	(%eax)
@IC48:	
.LINE	432
SP_STORE	%ecx
ADD16	%ecx	$187
SP_STORE	%eax
ADD16	%eax	$30
CPY16	(%ecx)	%eax
SP_RD16	%eax	$187
PUSH16	%eax
PUSH16	hUSBHOST_1
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$193
SP_INC	$4
.LINE	433
PUSH16	$250
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$192
SP_INC	$2
.LINE	434
SP_STORE	%ecx
ADD16	%ecx	$191
LD32	%eax	$1
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$195
LD16	(%ecx)	$led
SP_STORE	%ecx
ADD16	%ecx	$197
SP_STORE	%eax
ADD16	%eax	$195
SP_STORE	%ebx
ADD16	%ebx	$191
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$199
SP_RD16	%eax	$197
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$199
SP_WR8	%ecx	$22
SP_STORE	%ecx
ADD16	%ecx	$200
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
PUSH16	$0
PUSH16	$1
SP_RD16	%eax	$204
PUSH16	%eax
PUSH16	hGPIO_PORT_A
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$210
SP_INC	$8
.LINE	435
PUSH16	$250
SP_DEC	$1
CALL	vos_delay_msecs
POP8	%eax
SP_WR8	%eax	$205
SP_INC	$2
.LINE	436
LD8	%ecx	$0
SP_WR8	%ecx	$22
SP_STORE	%ecx
ADD16	%ecx	$204
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
PUSH16	$0
PUSH16	$1
SP_RD16	%eax	$208
PUSH16	%eax
PUSH16	hGPIO_PORT_A
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$214
SP_INC	$8
@IC49:	
.LINE	437
SP_RD8	%ecx	$48
CMP8	%ecx	$17
JNZ	@IC48
JZ	@IC50
@IC50:	
.LINE	439
SP_STORE	%ecx
ADD16	%ecx	$207
LD32	%eax	$1
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$211
LD16	(%ecx)	$led
SP_STORE	%ecx
ADD16	%ecx	$213
SP_STORE	%eax
ADD16	%eax	$211
SP_STORE	%ebx
ADD16	%ebx	$207
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$215
SP_RD16	%eax	$213
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$215
SP_WR8	%ecx	$22
SP_STORE	%ecx
ADD16	%ecx	$216
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
PUSH16	$0
PUSH16	$1
SP_RD16	%eax	$220
PUSH16	%eax
PUSH16	hGPIO_PORT_A
SP_DEC	$1
CALL	vos_dev_write
POP8	%eax
SP_WR8	%eax	$226
SP_INC	$8
.LINE	443
SP_STORE	%ecx
ADD16	%ecx	$219
SP_STORE	%eax
ADD16	%eax	$30
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$221
SP_STORE	%eax
ADD16	%eax	$219
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$221
LD8	(%ecx)	$35
.LINE	444
SP_STORE	%ecx
ADD16	%ecx	$223
SP_STORE	%eax
ADD16	%eax	$30
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$225
SP_STORE	%eax
ADD16	%eax	$223
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$227
SP_STORE	%eax
ADD16	%eax	$225
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$227
LD32	(%ecx)	$0
.LINE	445
SP_STORE	%ecx
ADD16	%ecx	$229
SP_STORE	%eax
ADD16	%eax	$30
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$231
SP_STORE	%eax
ADD16	%eax	$229
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$233
SP_STORE	%eax
ADD16	%eax	$80
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$231
SP_STORE	%eax
ADD16	%eax	$233
CPY16	(%ecx)	(%eax)
.LINE	446
SP_STORE	%ecx
ADD16	%ecx	$235
SP_STORE	%eax
ADD16	%eax	$30
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$237
SP_STORE	%eax
ADD16	%eax	$235
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$239
SP_STORE	%eax
ADD16	%eax	$89
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$237
SP_STORE	%eax
ADD16	%eax	$239
CPY16	(%ecx)	(%eax)
.LINE	447
SP_STORE	%ecx
ADD16	%ecx	$241
SP_STORE	%eax
ADD16	%eax	$80
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$243
SP_STORE	%eax
ADD16	%eax	$241
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$243
LD8	(%ecx)	$8
.LINE	448
SP_STORE	%ecx
ADD16	%ecx	$245
SP_STORE	%eax
ADD16	%eax	$80
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$247
SP_STORE	%eax
ADD16	%eax	$245
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$247
LD8	(%ecx)	$6
.LINE	449
SP_STORE	%ecx
ADD16	%ecx	$249
SP_STORE	%eax
ADD16	%eax	$80
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$251
SP_STORE	%eax
ADD16	%eax	$249
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$251
LD8	(%ecx)	$80
.LINE	451
SP_STORE	%ecx
ADD16	%ecx	$253
SP_STORE	%eax
ADD16	%eax	$30
CPY16	(%ecx)	%eax
SP_RD16	%eax	$253
PUSH16	%eax
PUSH16	hUSBHOST_1
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$260
POP8	(%eax)
SP_INC	$4
SP_RD8	%ecx	$255
CMP8	%ecx	$0
JNZ	@IC54
JZ	@IC53
@IC54:	
.LINE	453
SP_STORE	%ecx
ADD16	%ecx	$256
LD32	%eax	$3
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$260
LD16	(%ecx)	$led
SP_STORE	%ecx
ADD16	%ecx	$262
SP_STORE	%eax
ADD16	%eax	$260
SP_STORE	%ebx
ADD16	%ebx	$256
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$264
SP_STORE	%eax
ADD16	%eax	$262
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$264
CPY8	%ecx	(%eax)
SP_WR8	%ecx	$22
SP_STORE	%ecx
ADD16	%ecx	$265
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
PUSH16	$0
PUSH16	$1
SP_STORE	%eax
ADD16	%eax	$269
PUSH16	(%eax)
PUSH16	hGPIO_PORT_A
SP_DEC	$1
CALL	vos_dev_write
SP_STORE	%eax
ADD16	%eax	$276
POP8	(%eax)
SP_INC	$8
.LINE	454
PUSH16	$1000
SP_DEC	$1
CALL	vos_delay_msecs
SP_STORE	%eax
ADD16	%eax	$271
POP8	(%eax)
SP_INC	$2
.LINE	455
JUMP	@IC35
@IC53:	
.LINE	459
PUSH8	$6
SP_DEC	$2
CALL	vos_dev_open
SP_STORE	%eax
ADD16	%eax	$272
POP16	(%eax)
SP_INC	$1
SP_STORE	%eax
ADD16	%eax	$269
CPY16	hBOMS_1	(%eax)
.LINE	462
SP_STORE	%ecx
ADD16	%ecx	$271
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$273
SP_STORE	%eax
ADD16	%eax	$271
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$273
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$33
.LINE	463
SP_STORE	%ecx
ADD16	%ecx	$275
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$277
SP_STORE	%eax
ADD16	%eax	$275
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$279
SP_STORE	%eax
ADD16	%eax	$123
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$277
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$279
CPY16	(%ecx)	(%eax)
.LINE	464
SP_STORE	%ecx
ADD16	%ecx	$281
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$283
SP_STORE	%eax
ADD16	%eax	$281
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$283
CPY16	%ecx	(%ecx)
LD16	(%ecx)	$0
.LINE	465
SP_STORE	%ecx
ADD16	%ecx	$285
SP_STORE	%eax
ADD16	%eax	$123
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$287
SP_STORE	%eax
ADD16	%eax	$285
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$287
CPY16	%ecx	(%ecx)
CPY16	(%ecx)	hUSBHOST_1
.LINE	466
SP_STORE	%ecx
ADD16	%ecx	$289
SP_STORE	%eax
ADD16	%eax	$123
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$291
SP_STORE	%eax
ADD16	%eax	$289
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$291
CPY16	%ecx	(%ecx)
SP_RD16	%eax	$89
SHL32	%eax	$16
SAR32	%eax	$16
CPY32	(%ecx)	%eax
.LINE	468
SP_STORE	%ecx
ADD16	%ecx	$293
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$293
PUSH16	(%eax)
PUSH16	hBOMS_1
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$300
POP8	(%eax)
SP_INC	$4
SP_STORE	%eax
ADD16	%eax	$295
CPY8	%ecx	(%eax)
SP_WR8	%ecx	$146
.LINE	469
SP_RD8	%ecx	$146
CMP8	%ecx	$0
JNZ	@IC58
JZ	@IC57
@IC58:	
.LINE	471
SP_STORE	%ecx
ADD16	%ecx	$296
LD32	%eax	$3
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$300
LD16	(%ecx)	$led
SP_STORE	%ecx
ADD16	%ecx	$302
SP_STORE	%eax
ADD16	%eax	$300
SP_STORE	%ebx
ADD16	%ebx	$296
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$304
SP_STORE	%eax
ADD16	%eax	$302
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$304
CPY8	%ecx	(%eax)
SP_WR8	%ecx	$22
SP_STORE	%ecx
ADD16	%ecx	$305
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
PUSH16	$0
PUSH16	$1
SP_STORE	%eax
ADD16	%eax	$309
PUSH16	(%eax)
PUSH16	hGPIO_PORT_A
SP_DEC	$1
CALL	vos_dev_write
SP_STORE	%eax
ADD16	%eax	$316
POP8	(%eax)
SP_INC	$8
.LINE	472
PUSH16	$1000
SP_DEC	$1
CALL	vos_delay_msecs
SP_STORE	%eax
ADD16	%eax	$311
POP8	(%eax)
SP_INC	$2
.LINE	473
JUMP	@IC35
@IC57:	
.LINE	476
SP_STORE	%ecx
ADD16	%ecx	$309
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$311
SP_STORE	%eax
ADD16	%eax	$309
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$311
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$20
.LINE	477
SP_STORE	%ecx
ADD16	%ecx	$313
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$315
SP_STORE	%eax
ADD16	%eax	$313
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$319
SP_STORE	%eax
ADD16	%eax	$317
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$315
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$319
CPY16	(%ecx)	(%eax)
.LINE	478
SP_STORE	%ecx
ADD16	%ecx	$321
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$321
PUSH16	(%eax)
PUSH16	hBOMS_1
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$328
POP8	(%eax)
SP_INC	$4
.LINE	479
SP_STORE	%ecx
ADD16	%ecx	$324
SP_STORE	%ebx
ADD16	%ebx	$317
CPY16	%ebx	(%ebx)
AND32	%ebx	$65535
LD32	%eax	$4096
DIV32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$328
SP_STORE	%eax
ADD16	%eax	$324
CPY16	(%ecx)	(%eax)
.LINE	482
SP_STORE	%ecx
ADD16	%ecx	$335
SP_STORE	%eax
ADD16	%eax	$330
CPY16	(%ecx)	%eax
PUSH16	$0
SP_STORE	%eax
ADD16	%eax	$337
PUSH16	(%eax)
CALL	vos_init_semaphore
SP_INC	$4
.LINE	483
SP_STORE	%ecx
ADD16	%ecx	$342
SP_STORE	%eax
ADD16	%eax	$337
CPY16	(%ecx)	%eax
PUSH16	$0
SP_STORE	%eax
ADD16	%eax	$344
PUSH16	(%eax)
CALL	vos_init_semaphore
SP_INC	$4
.LINE	484
SP_STORE	%ecx
ADD16	%ecx	$372
SP_STORE	%eax
ADD16	%eax	$344
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$374
SP_STORE	%eax
ADD16	%eax	$372
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$374
CPY16	%ecx	(%ecx)
SP_STORE	%eax
CPY32	(%ecx)	(%eax)
.LINE	485
SP_STORE	%ecx
ADD16	%ecx	$376
SP_STORE	%eax
ADD16	%eax	$344
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$378
SP_STORE	%eax
ADD16	%eax	$376
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$378
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$10
CPY16	(%ecx)	(%eax)
.LINE	486
SP_STORE	%ecx
ADD16	%ecx	$380
SP_STORE	%eax
ADD16	%eax	$344
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$382
SP_STORE	%eax
ADD16	%eax	$380
LD16	%ebx	$10
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$382
CPY16	%ecx	(%ecx)
LD16	(%ecx)	$4096
.LINE	487
SP_STORE	%ecx
ADD16	%ecx	$384
SP_STORE	%eax
ADD16	%eax	$344
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$386
SP_STORE	%eax
ADD16	%eax	$384
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$386
CPY16	%ecx	(%ecx)
LD16	(%ecx)	$4096
.LINE	488
SP_STORE	%ecx
ADD16	%ecx	$388
SP_STORE	%eax
ADD16	%eax	$344
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$390
SP_STORE	%eax
ADD16	%eax	$388
LD16	%ebx	$13
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$390
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$5
.LINE	489
SP_STORE	%ecx
ADD16	%ecx	$392
SP_STORE	%eax
ADD16	%eax	$344
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$394
SP_STORE	%eax
ADD16	%eax	$392
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$396
SP_STORE	%eax
ADD16	%eax	$330
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$394
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$396
CPY16	(%ecx)	(%eax)
.LINE	490
SP_STORE	%ecx
ADD16	%ecx	$398
SP_STORE	%eax
ADD16	%eax	$344
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$400
SP_STORE	%eax
ADD16	%eax	$398
LD16	%ebx	$12
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$400
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$7
@IC61:	
.LINE	496
SP_STORE	%ecx
ADD16	%ecx	$402
LD32	(%ecx)	$0
@IC64:	
SP_STORE	%ecx
ADD16	%ecx	$402
CMP32	(%ecx)	$500
JLTS	@IC66
JUMP	@IC65
@IC66:	
.LINE	498
PUSH16	$4096
SP_RD16	%eax	$12
PUSH16	%eax
SP_RD32	%eax	$4
PUSH32	%eax
SP_DEC	$1
CALL	FatReadSector
SP_STORE	%eax
ADD16	%eax	$415
POP8	(%eax)
SP_INC	$8
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%ecx	(%eax)
SP_WR8	%ecx	$146
.LINE	499
SP_RD8	%ecx	$146
CMP8	%ecx	$0
JZ	@IC72
JNZ	@IC71
@IC72:	
.LINE	501
PUSH16	$4096
SP_RD16	%eax	$12
PUSH16	%eax
SP_RD32	%eax	$4
PUSH32	%eax
SP_DEC	$1
CALL	FatWriteSector
SP_STORE	%eax
ADD16	%eax	$416
POP8	(%eax)
SP_INC	$8
SP_STORE	%eax
ADD16	%eax	$407
CPY8	%ecx	(%eax)
SP_WR8	%ecx	$146
JUMP	@IC70
@IC71:	
.LINE	504
LD16	%ecx	$1
SP_WR16	%ecx	$4
.LINE	505
JUMP	@IC65
@IC70:	
.LINE	507
SP_STORE	%ecx
ADD16	%ecx	$408
SP_STORE	%eax
SP_STORE	%ebx
ADD16	%ebx	$328
CPY16	%ebx	(%ebx)
AND32	%ebx	$65535
ADD32	(%ecx)	(%eax)	%ebx
SP_STORE	%eax
ADD16	%eax	$408
CPY32	%ecx	(%eax)
SP_WR32	%ecx	$0
@IC67:	
.LINE	496
SP_STORE	%ecx
ADD16	%ecx	$412
SP_STORE	%eax
ADD16	%eax	$402
CPY32	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$402
INC32	(%eax)	$1
JUMP	@IC64
@IC65:	
.LINE	509
SP_STORE	%ecx
ADD16	%ecx	$416
CPY16	(%ecx)	ledStep
INC16	ledStep	$1
.LINE	510
SP_STORE	%ecx
ADD16	%ecx	$418
CPY16	%eax	ledStep
AND32	%eax	$65535
LD32	%ebx	$5
REM32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$422
SP_STORE	%eax
ADD16	%eax	$418
LD32	%ebx	$1
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$426
LD16	(%ecx)	$led
SP_STORE	%ecx
ADD16	%ecx	$428
SP_STORE	%eax
ADD16	%eax	$426
SP_STORE	%ebx
ADD16	%ebx	$422
ADD16	(%ecx)	(%eax)	(%ebx)
PUSH16	$0
PUSH16	$1
SP_STORE	%eax
ADD16	%eax	$432
PUSH16	(%eax)
PUSH16	hGPIO_PORT_A
SP_DEC	$1
CALL	vos_dev_write
SP_STORE	%eax
ADD16	%eax	$439
POP8	(%eax)
SP_INC	$8
@IC62:	
.LINE	511
SP_RD8	%ecx	$146
CMP8	%ecx	$0
JZ	@IC75
JNZ	@IC63
@IC75:	
SP_STORE	%ecx
ADD16	%ecx	$4
CMP16	(%ecx)	$0
JNZ	@IC63
JUMP	@IC61
@IC63:	
.LINE	514
LD16	%ecx	$1
SP_WR16	%ecx	$4
.LINE	516
SP_STORE	%ecx
ADD16	%ecx	$431
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$433
SP_STORE	%eax
ADD16	%eax	$431
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$433
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$34
.LINE	517
SP_STORE	%ecx
ADD16	%ecx	$435
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$435
PUSH16	(%eax)
PUSH16	hBOMS_2
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$442
POP8	(%eax)
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$437
CMP8	(%ecx)	$0
JNZ	@IC79
JZ	@IC78
@IC79:	
.LINE	519
SP_STORE	%ecx
ADD16	%ecx	$438
LD32	%eax	$3
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$442
LD16	(%ecx)	$led
SP_STORE	%ecx
ADD16	%ecx	$444
SP_STORE	%eax
ADD16	%eax	$442
SP_STORE	%ebx
ADD16	%ebx	$438
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$446
SP_STORE	%eax
ADD16	%eax	$444
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$446
CPY8	%ecx	(%eax)
SP_WR8	%ecx	$22
SP_STORE	%ecx
ADD16	%ecx	$447
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
PUSH16	$0
PUSH16	$1
SP_STORE	%eax
ADD16	%eax	$451
PUSH16	(%eax)
PUSH16	hGPIO_PORT_A
SP_DEC	$1
CALL	vos_dev_write
SP_STORE	%eax
ADD16	%eax	$458
POP8	(%eax)
SP_INC	$8
.LINE	520
PUSH16	$1000
SP_DEC	$1
CALL	vos_delay_msecs
SP_STORE	%eax
ADD16	%eax	$453
POP8	(%eax)
SP_INC	$2
.LINE	521
JUMP	@IC35
@IC78:	
.LINE	523
PUSH16	hBOMS_2
CALL	vos_dev_close
SP_INC	$2
.LINE	525
SP_STORE	%ecx
ADD16	%ecx	$451
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$453
SP_STORE	%eax
ADD16	%eax	$451
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$453
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$34
.LINE	526
SP_STORE	%ecx
ADD16	%ecx	$455
SP_STORE	%eax
ADD16	%eax	$110
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$455
PUSH16	(%eax)
PUSH16	hBOMS_1
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$462
POP8	(%eax)
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$457
CMP8	(%ecx)	$0
JNZ	@IC83
JZ	@IC82
@IC83:	
.LINE	528
SP_STORE	%ecx
ADD16	%ecx	$458
LD32	%eax	$3
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$462
LD16	(%ecx)	$led
SP_STORE	%ecx
ADD16	%ecx	$464
SP_STORE	%eax
ADD16	%eax	$462
SP_STORE	%ebx
ADD16	%ebx	$458
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$466
SP_STORE	%eax
ADD16	%eax	$464
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$466
CPY8	%ecx	(%eax)
SP_WR8	%ecx	$22
SP_STORE	%ecx
ADD16	%ecx	$467
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
PUSH16	$0
PUSH16	$1
SP_STORE	%eax
ADD16	%eax	$471
PUSH16	(%eax)
PUSH16	hGPIO_PORT_A
SP_DEC	$1
CALL	vos_dev_write
SP_STORE	%eax
ADD16	%eax	$478
POP8	(%eax)
SP_INC	$8
.LINE	529
PUSH16	$1000
SP_DEC	$1
CALL	vos_delay_msecs
SP_STORE	%eax
ADD16	%eax	$473
POP8	(%eax)
SP_INC	$2
.LINE	530
JUMP	@IC35
@IC82:	
.LINE	532
PUSH16	hBOMS_1
CALL	vos_dev_close
SP_INC	$2
.LINE	533
LD8	%ecx	$0
SP_WR8	%ecx	$22
SP_STORE	%ecx
ADD16	%ecx	$471
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
PUSH16	$0
PUSH16	$1
SP_STORE	%eax
ADD16	%eax	$475
PUSH16	(%eax)
PUSH16	hGPIO_PORT_A
SP_DEC	$1
CALL	vos_dev_write
SP_STORE	%eax
ADD16	%eax	$482
POP8	(%eax)
SP_INC	$8
.LINE	534
PUSH8	$2
SP_DEC	$1
CALL	vos_power_down
SP_STORE	%eax
ADD16	%eax	$476
POP8	(%eax)
SP_INC	$1
@IC36:	
@IC34:	
.LINE	536
SP_STORE	%ecx
ADD16	%ecx	$4
CMP16	(%ecx)	$0
JNZ	@IC35
JUMP	@IC33
@IC35:	
.LINE	536
SP_INC	$255
SP_INC	$220
RTS	
.FUNC_END	"firmware"

