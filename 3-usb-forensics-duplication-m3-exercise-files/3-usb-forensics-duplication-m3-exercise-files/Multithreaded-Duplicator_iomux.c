/*
** Multithreaded-Duplicator_iomux.c
**
** C Source File
**
** Part of solution Double-buffered and multi-threaded in project Multithreaded-Duplicator
*/
#include "vos.h";

void iomux_setup(void)
{
	unsigned char packageType;

	packageType = vos_get_package_type();
	if(packageType == VINCULUM_II_64_PIN)
	{
		// GPIO Port A 3 to pin 56 as Output.
		vos_iomux_define_output(56, IOMUX_OUT_GPIO_PORT_A_3);
		// GPIO Port A 4 to pin 61 as Output.
		vos_iomux_define_output(61, IOMUX_OUT_GPIO_PORT_A_4);
		// GPIO Port A 5 to pin 62 as Output.
		vos_iomux_define_output(62, IOMUX_OUT_GPIO_PORT_A_5);
		// GPIO Port A 6 to pin 63 as Output.
		vos_iomux_define_output(63, IOMUX_OUT_GPIO_PORT_A_6);
		// GPIO Port A 7 to pin 64 as Output.
		vos_iomux_define_output(64, IOMUX_OUT_GPIO_PORT_A_7);

		// GPIO port A bit 0 to pin 15
		vos_iomux_define_output(15,IOMUX_OUT_GPIO_PORT_B_0); // DB4
        // GPIO port A bit 1 to pin 16
		vos_iomux_define_output(16,IOMUX_OUT_GPIO_PORT_B_1); // DB5
		// GPIO port A bit 2 to pin 17
		vos_iomux_define_output(17,IOMUX_OUT_GPIO_PORT_B_2); // DB6
		// GPIO port A bit 3 to pin 18
		vos_iomux_define_output(18,IOMUX_OUT_GPIO_PORT_B_3); // DB7
		// GPIO port A bit 4 to pin 19
		vos_iomux_define_output(19,IOMUX_OUT_GPIO_PORT_B_4); // RS
		// GPIO port A bit 5 to pin 20
		vos_iomux_define_output(20,IOMUX_OUT_GPIO_PORT_B_5); // E

	} else if(packageType == VINCULUM_II_32_PIN)
	{
		// GPIO Port A 3 to pin 56 as Output.
		vos_iomux_define_output(15, IOMUX_OUT_GPIO_PORT_A_3);
		// GPIO Port A 4 to pin 61 as Output.
		vos_iomux_define_output(23, IOMUX_OUT_GPIO_PORT_A_4);
		// GPIO Port A 5 to pin 62 as Output.
		vos_iomux_define_output(24, IOMUX_OUT_GPIO_PORT_A_5);
		// GPIO Port A 6 to pin 63 as Output.
		vos_iomux_define_output(25, IOMUX_OUT_GPIO_PORT_A_6);
		// GPIO Port A 7 to pin 64 as Output.
		vos_iomux_define_output(26, IOMUX_OUT_GPIO_PORT_A_7);
	}
}

