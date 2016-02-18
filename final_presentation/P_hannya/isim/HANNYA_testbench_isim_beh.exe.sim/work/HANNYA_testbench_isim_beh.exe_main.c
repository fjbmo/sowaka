/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *STD_TEXTIO;
char *IEEE_P_1242562249;
char *WORK_P_1001657109;
char *IEEE_P_0017514958;
char *SYNOPSYS_P_3308480207;
char *WORK_P_0974807720;
char *IEEE_P_3564397177;
char *UNISIM_P_0947159679;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    unisim_p_0947159679_init();
    work_a_3793993212_0666576766_init();
    ieee_p_1242562249_init();
    work_p_0974807720_init();
    xilinxcorelib_a_1588091212_3212880686_init();
    xilinxcorelib_a_1111989926_3212880686_init();
    xilinxcorelib_a_1800005126_3212880686_init();
    xilinxcorelib_a_1478048028_3212880686_init();
    work_a_2744216803_1524881414_init();
    xilinxcorelib_a_3299055438_3212880686_init();
    xilinxcorelib_a_3236003237_3212880686_init();
    xilinxcorelib_a_2820571294_3212880686_init();
    work_a_0942274025_0707306708_init();
    work_a_3993381575_1910604024_init();
    std_textio_init();
    ieee_p_3564397177_init();
    xilinxcorelib_a_2748139429_2959432447_init();
    xilinxcorelib_a_1001158583_1709443946_init();
    xilinxcorelib_a_1192436921_0543512595_init();
    xilinxcorelib_a_0577795894_3212880686_init();
    work_a_0101737298_3564381859_init();
    work_a_0813801966_1262425856_init();
    work_a_3379253520_3436582701_init();
    synopsys_p_3308480207_init();
    ieee_p_0017514958_init();
    work_p_1001657109_init();
    work_a_2022213624_0197700266_init();
    work_a_0019291633_0197700266_init();
    work_a_4091908950_3212880686_init();
    work_a_1465883779_2485655836_init();
    work_a_0937468928_3212880686_init();
    work_a_1144957790_2485655836_init();
    work_a_0679971789_2372691052_init();
    work_a_0245094177_2372691052_init();
    work_a_0832606739_2725559894_init();
    work_a_3501706103_1774216237_init();
    work_a_3620454418_3411330492_init();
    work_a_1556626461_1949178628_init();


    xsi_register_tops("work_a_1556626461_1949178628");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    WORK_P_1001657109 = xsi_get_engine_memory("work_p_1001657109");
    IEEE_P_0017514958 = xsi_get_engine_memory("ieee_p_0017514958");
    SYNOPSYS_P_3308480207 = xsi_get_engine_memory("synopsys_p_3308480207");
    WORK_P_0974807720 = xsi_get_engine_memory("work_p_0974807720");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");

    return xsi_run_simulation(argc, argv);

}
