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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/shinno/cpu/sowaka/hannya/testbench.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );
int ieee_p_3620187407_sub_5109402382352621412_3965413181(char *, char *, char *);
unsigned char ieee_p_3620187407_sub_970026081990077040_3965413181(char *, char *, char *, int );


static void work_a_1556626461_1949178628_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(88, ng0);

LAB3:    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t1 = (t0 + 8456U);
    t4 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 11, 1, t4);
    t7 = (32U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 5080);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 32U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 4968);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1556626461_1949178628_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(89, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = (31 - 7);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 5144);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 4984);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1556626461_1949178628_p_2(char *t0)
{
    char t24[16];
    char t36[16];
    char t38[16];
    char *t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    int t17;
    int t18;
    char *t19;
    char *t20;
    int t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t37;

LAB0:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5000);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(93, ng0);
    t4 = (t0 + 2152U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    if (t7 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 5208);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB6:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t1 = (t0 + 8955);
    t15 = xsi_mem_cmp(t1, t4, 5U);
    if (t15 == 1)
        goto LAB12;

LAB18:    t8 = (t0 + 8960);
    t16 = xsi_mem_cmp(t8, t4, 5U);
    if (t16 == 1)
        goto LAB13;

LAB19:    t11 = (t0 + 8965);
    t17 = xsi_mem_cmp(t11, t4, 5U);
    if (t17 == 1)
        goto LAB14;

LAB20:    t13 = (t0 + 8970);
    t18 = xsi_mem_cmp(t13, t4, 5U);
    if (t18 == 1)
        goto LAB15;

LAB21:    t19 = (t0 + 8975);
    t21 = xsi_mem_cmp(t19, t4, 5U);
    if (t21 == 1)
        goto LAB16;

LAB22:
LAB17:    xsi_set_current_line(130, ng0);
    t1 = (t0 + 2312U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t3 = (t2 == (unsigned char)3);
    if (t3 != 0)
        goto LAB47;

LAB49:
LAB48:
LAB11:    goto LAB3;

LAB5:    xsi_set_current_line(94, ng0);
    t10 = (t0 + 5208);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t10);
    goto LAB6;

LAB8:    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t4 = (t0 + 8392U);
    t9 = ieee_p_3620187407_sub_970026081990077040_3965413181(IEEE_P_3620187407, t8, t4, 6);
    t3 = t9;
    goto LAB10;

LAB12:    xsi_set_current_line(100, ng0);
    t22 = (t0 + 2312U);
    t23 = *((char **)t22);
    t2 = *((unsigned char *)t23);
    t3 = (t2 == (unsigned char)3);
    if (t3 != 0)
        goto LAB24;

LAB26:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t1 = (t0 + 5336);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 32U);
    xsi_driver_first_trans_fast(t1);

LAB25:    goto LAB11;

LAB13:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 2312U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t3 = (t2 == (unsigned char)3);
    if (t3 != 0)
        goto LAB31;

LAB33:
LAB32:    goto LAB11;

LAB14:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 2312U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t3 = (t2 == (unsigned char)3);
    if (t3 != 0)
        goto LAB39;

LAB41:    xsi_set_current_line(121, ng0);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t1 = (t0 + 5336);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 32U);
    xsi_driver_first_trans_fast(t1);

LAB40:    goto LAB11;

LAB15:    xsi_set_current_line(124, ng0);
    t1 = (t0 + 2312U);
    t4 = *((char **)t1);
    t2 = *((unsigned char *)t4);
    t3 = (t2 == (unsigned char)3);
    if (t3 != 0)
        goto LAB44;

LAB46:
LAB45:    goto LAB11;

LAB16:    xsi_set_current_line(128, ng0);
    goto LAB11;

LAB23:;
LAB24:    xsi_set_current_line(101, ng0);
    t22 = (t0 + 1192U);
    t25 = *((char **)t22);
    t22 = (t0 + 8392U);
    t26 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t24, t25, t22, 1);
    t27 = (t24 + 12U);
    t28 = *((unsigned int *)t27);
    t29 = (1U * t28);
    t6 = (5U != t29);
    if (t6 == 1)
        goto LAB27;

LAB28:    t30 = (t0 + 5272);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t26, 5U);
    xsi_driver_first_trans_fast(t30);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 8980);
    t5 = (t0 + 1512U);
    t8 = *((char **)t5);
    t28 = (31 - 31);
    t29 = (t28 * 1U);
    t35 = (0 + t29);
    t5 = (t8 + t35);
    t11 = ((IEEE_P_2592010699) + 4000);
    t12 = (t36 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 7;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t15 = (7 - 0);
    t37 = (t15 * 1);
    t37 = (t37 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t37;
    t13 = (t38 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 31;
    t14 = (t13 + 4U);
    *((int *)t14) = 8;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t16 = (8 - 31);
    t37 = (t16 * -1);
    t37 = (t37 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t37;
    t10 = xsi_base_array_concat(t10, t24, t11, (char)97, t1, t36, (char)97, t5, t38, (char)101);
    t37 = (8U + 24U);
    t2 = (32U != t37);
    if (t2 == 1)
        goto LAB29;

LAB30:    t14 = (t0 + 5336);
    t19 = (t14 + 56U);
    t20 = *((char **)t19);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t10, 32U);
    xsi_driver_first_trans_fast(t14);
    goto LAB25;

LAB27:    xsi_size_not_matching(5U, t29, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(32U, t37, 0);
    goto LAB30;

LAB31:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t1 = (t0 + 8456U);
    t6 = ieee_p_3620187407_sub_970026081990077040_3965413181(IEEE_P_3620187407, t5, t1, 11);
    if (t6 != 0)
        goto LAB34;

LAB36:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 8993);
    t5 = (t0 + 5272);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 5U);
    xsi_driver_first_trans_fast(t5);

LAB35:    goto LAB32;

LAB34:    xsi_set_current_line(109, ng0);
    t8 = (t0 + 8988);
    t11 = (t0 + 5272);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t19 = *((char **)t14);
    memcpy(t19, t8, 5U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(110, ng0);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t1 = (t0 + 8456U);
    t5 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t24, t4, t1, 1);
    t8 = (t24 + 12U);
    t28 = *((unsigned int *)t8);
    t29 = (1U * t28);
    t2 = (8U != t29);
    if (t2 == 1)
        goto LAB37;

LAB38:    t10 = (t0 + 5400);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 8U);
    xsi_driver_first_trans_fast(t10);
    goto LAB35;

LAB37:    xsi_size_not_matching(8U, t29, 0);
    goto LAB38;

LAB39:    xsi_set_current_line(118, ng0);
    t1 = (t0 + 8998);
    t8 = (t0 + 5272);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 5U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(119, ng0);
    t1 = (t0 + 9003);
    t5 = (t0 + 1512U);
    t8 = *((char **)t5);
    t28 = (31 - 31);
    t29 = (t28 * 1U);
    t35 = (0 + t29);
    t5 = (t8 + t35);
    t11 = ((IEEE_P_2592010699) + 4000);
    t12 = (t36 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 7;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t15 = (7 - 0);
    t37 = (t15 * 1);
    t37 = (t37 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t37;
    t13 = (t38 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 31;
    t14 = (t13 + 4U);
    *((int *)t14) = 8;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t16 = (8 - 31);
    t37 = (t16 * -1);
    t37 = (t37 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t37;
    t10 = xsi_base_array_concat(t10, t24, t11, (char)97, t1, t36, (char)97, t5, t38, (char)101);
    t37 = (8U + 24U);
    t2 = (32U != t37);
    if (t2 == 1)
        goto LAB42;

LAB43:    t14 = (t0 + 5336);
    t19 = (t14 + 56U);
    t20 = *((char **)t19);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t10, 32U);
    xsi_driver_first_trans_fast(t14);
    goto LAB40;

LAB42:    xsi_size_not_matching(32U, t37, 0);
    goto LAB43;

LAB44:    xsi_set_current_line(125, ng0);
    t1 = (t0 + 9011);
    t8 = (t0 + 5272);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 5U);
    xsi_driver_first_trans_fast(t8);
    goto LAB45;

LAB47:    xsi_set_current_line(131, ng0);
    t1 = (t0 + 9016);
    t8 = (t0 + 1512U);
    t10 = *((char **)t8);
    t28 = (31 - 31);
    t29 = (t28 * 1U);
    t35 = (0 + t29);
    t8 = (t10 + t35);
    t12 = ((IEEE_P_2592010699) + 4000);
    t13 = (t36 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 7;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (7 - 0);
    t37 = (t15 * 1);
    t37 = (t37 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t37;
    t14 = (t38 + 0U);
    t19 = (t14 + 0U);
    *((int *)t19) = 31;
    t19 = (t14 + 4U);
    *((int *)t19) = 8;
    t19 = (t14 + 8U);
    *((int *)t19) = -1;
    t16 = (8 - 31);
    t37 = (t16 * -1);
    t37 = (t37 + 1);
    t19 = (t14 + 12U);
    *((unsigned int *)t19) = t37;
    t11 = xsi_base_array_concat(t11, t24, t12, (char)97, t1, t36, (char)97, t8, t38, (char)101);
    t37 = (8U + 24U);
    t6 = (32U != t37);
    if (t6 == 1)
        goto LAB50;

LAB51:    t19 = (t0 + 5336);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    t23 = (t22 + 56U);
    t25 = *((char **)t23);
    memcpy(t25, t11, 32U);
    xsi_driver_first_trans_fast(t19);
    xsi_set_current_line(132, ng0);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t1 = (t0 + 8392U);
    t5 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t24, t4, t1, 1);
    t8 = (t24 + 12U);
    t28 = *((unsigned int *)t8);
    t29 = (1U * t28);
    t2 = (5U != t29);
    if (t2 == 1)
        goto LAB52;

LAB53:    t10 = (t0 + 5272);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 5U);
    xsi_driver_first_trans_fast(t10);
    goto LAB48;

LAB50:    xsi_size_not_matching(32U, t37, 0);
    goto LAB51;

LAB52:    xsi_size_not_matching(5U, t29, 0);
    goto LAB53;

}

static void work_a_1556626461_1949178628_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 4648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(140, ng0);
    t2 = (t0 + 5464);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(141, ng0);
    t7 = (5 * 1000LL);
    t2 = (t0 + 4456);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(142, ng0);
    t2 = (t0 + 5464);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(143, ng0);
    t7 = (5 * 1000LL);
    t2 = (t0 + 4456);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}


extern void work_a_1556626461_1949178628_init()
{
	static char *pe[] = {(void *)work_a_1556626461_1949178628_p_0,(void *)work_a_1556626461_1949178628_p_1,(void *)work_a_1556626461_1949178628_p_2,(void *)work_a_1556626461_1949178628_p_3};
	xsi_register_didat("work_a_1556626461_1949178628", "isim/HANNYA_testbench_isim_beh.exe.sim/work/a_1556626461_1949178628.didat");
	xsi_register_executes(pe);
}
