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
static const char *ng0 = "/home/shinno/cpu/sowaka/hannya/conv.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;
extern char *WORK_P_1001657109;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
unsigned char ieee_p_1242562249_sub_1434214030532789707_1035706684(char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1987757588013599599_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_3065688369758319528_1035706684(char *, char *, char *, char *);
char *ieee_p_1242562249_sub_8645934262925994370_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
int work_p_1001657109_sub_15601711404661061477_463582244(char *, char *);


static void work_a_0679971789_2372691052_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6488);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(41, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = (31 - 31);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    t9 = *((unsigned char *)t3);
    t10 = (t0 + 6616);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t9;
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t6 = (31 - 30);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t3 + t8);
    t4 = (t0 + 6680);
    t10 = (t4 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 31U);
    xsi_driver_first_trans_fast(t4);
    goto LAB3;

}

static void work_a_0679971789_2372691052_p_1(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t6;
    char *t7;
    unsigned int t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    int t20;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t0 + 10344U);
    t1 = xsi_base_array_concat(t1, t5, t6, (char)99, t3, (char)97, t4, t7, (char)101);
    t8 = (1U + 31U);
    t9 = (t0 + 3728U);
    t10 = *((char **)t9);
    t11 = 1;
    if (t8 == 32U)
        goto LAB5;

LAB6:    t11 = 0;

LAB7:    if (t11 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 6744);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB3:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t0 + 10344U);
    t1 = xsi_base_array_concat(t1, t5, t6, (char)99, t3, (char)97, t4, t7, (char)101);
    t8 = (1U + 31U);
    t9 = (t0 + 3848U);
    t10 = *((char **)t9);
    t11 = 1;
    if (t8 == 32U)
        goto LAB14;

LAB15:    t11 = 0;

LAB16:    if (t11 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 6808);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB12:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t11 = (t3 == (unsigned char)2);
    if (t11 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 10344U);
    t4 = ieee_p_1242562249_sub_3065688369758319528_1035706684(IEEE_P_1242562249, t5, t2, t1);
    t6 = (t0 + 6872);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    memcpy(t13, t4, 31U);
    xsi_driver_first_trans_fast(t6);

LAB21:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t19 = work_p_1001657109_sub_15601711404661061477_463582244(WORK_P_1001657109, t2);
    t1 = (t0 + 6936);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((int *)t9) = t19;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t19 = *((int *)t2);
    t20 = (127 + t19);
    t1 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t5, t20, 8);
    t4 = (t0 + 7000);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    t1 = (t0 + 6504);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t14 = (t0 + 6744);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t14);
    goto LAB3;

LAB5:    t12 = 0;

LAB8:    if (t12 < t8)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t9 = (t1 + t12);
    t13 = (t10 + t12);
    if (*((unsigned char *)t9) != *((unsigned char *)t13))
        goto LAB6;

LAB10:    t12 = (t12 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(57, ng0);
    t14 = (t0 + 6808);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t14);
    goto LAB12;

LAB14:    t12 = 0;

LAB17:    if (t12 < t8)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t9 = (t1 + t12);
    t13 = (t10 + t12);
    if (*((unsigned char *)t9) != *((unsigned char *)t13))
        goto LAB15;

LAB19:    t12 = (t12 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t1 = (t0 + 6872);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 31U);
    xsi_driver_first_trans_fast(t1);
    goto LAB21;

}

static void work_a_0679971789_2372691052_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;

LAB0:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6520);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(77, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (t0 + 7064);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 7128);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 7192);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 7256);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 3112U);
    t3 = *((char **)t1);
    t1 = (t0 + 7320);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 31U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 3432U);
    t3 = *((char **)t1);
    t10 = *((int *)t3);
    t1 = (t0 + 7384);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t10;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}

static void work_a_0679971789_2372691052_p_3(char *t0)
{
    char t8[16];
    char t10[16];
    char t15[16];
    char t30[16];
    char t33[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    char *t16;
    int t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    int t22;
    int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t34;
    char *t35;
    unsigned int t36;

LAB0:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t13 = *((int *)t2);
    t3 = (t13 < 24);
    if (t3 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 10376U);
    t5 = (t0 + 3272U);
    t6 = *((char **)t5);
    t13 = *((int *)t6);
    t17 = (t13 - 24);
    t5 = ieee_p_1242562249_sub_8645934262925994370_1035706684(IEEE_P_1242562249, t8, t2, t1, t17);
    t7 = (t0 + 4328U);
    t9 = *((char **)t7);
    t7 = (t9 + 0);
    t11 = (t8 + 12U);
    t14 = *((unsigned int *)t11);
    t14 = (t14 * 1U);
    memcpy(t7, t5, t14);
    xsi_set_current_line(104, ng0);
    t1 = (t0 + 4328U);
    t2 = *((char **)t1);
    t14 = (30 - 24);
    t19 = (t14 * 1U);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t5 = (t0 + 4208U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    memcpy(t5, t1, 25U);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 4208U);
    t2 = *((char **)t1);
    t13 = (0 - 24);
    t14 = (t13 * -1);
    t19 = (1U * t14);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 4208U);
    t2 = *((char **)t1);
    t14 = (24 - 23);
    t19 = (t14 * 1U);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t5 = (t0 + 4088U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    memcpy(t5, t1, 23U);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 4448U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    memcpy(t1, t2, 8U);

LAB11:
LAB8:
LAB3:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4448U);
    t5 = *((char **)t1);
    t6 = ((IEEE_P_1242562249) + 2976);
    t7 = (t0 + 10472U);
    t1 = xsi_base_array_concat(t1, t8, t6, (char)99, t3, (char)97, t5, t7, (char)101);
    t9 = (t0 + 4088U);
    t11 = *((char **)t9);
    t12 = ((IEEE_P_1242562249) + 2976);
    t16 = (t0 + 10424U);
    t9 = xsi_base_array_concat(t9, t10, t12, (char)97, t1, t8, (char)97, t11, t16, (char)101);
    t18 = (t0 + 7448);
    t25 = (t18 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t9, 32U);
    xsi_driver_first_trans_fast_port(t18);
    t1 = (t0 + 6536);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 10835);
    t6 = (t0 + 4448U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 8U);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 10843);
    t5 = (t0 + 10846);
    t9 = ((IEEE_P_1242562249) + 2976);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 2;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (2 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t15 + 0U);
    t16 = (t12 + 0U);
    *((int *)t16) = 0;
    t16 = (t12 + 4U);
    *((int *)t16) = 19;
    t16 = (t12 + 8U);
    *((int *)t16) = 1;
    t17 = (19 - 0);
    t14 = (t17 * 1);
    t14 = (t14 + 1);
    t16 = (t12 + 12U);
    *((unsigned int *)t16) = t14;
    t7 = xsi_base_array_concat(t7, t8, t9, (char)97, t1, t10, (char)97, t5, t15, (char)101);
    t16 = (t0 + 4088U);
    t18 = *((char **)t16);
    t16 = (t18 + 0);
    t14 = (3U + 20U);
    memcpy(t16, t7, t14);
    goto LAB3;

LAB5:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 10866);
    t6 = (t0 + 4448U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 8U);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 10874);
    t5 = (t0 + 10877);
    t9 = ((IEEE_P_1242562249) + 2976);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 2;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (2 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t15 + 0U);
    t16 = (t12 + 0U);
    *((int *)t16) = 0;
    t16 = (t12 + 4U);
    *((int *)t16) = 19;
    t16 = (t12 + 8U);
    *((int *)t16) = 1;
    t17 = (19 - 0);
    t14 = (t17 * 1);
    t14 = (t14 + 1);
    t16 = (t12 + 12U);
    *((unsigned int *)t16) = t14;
    t7 = xsi_base_array_concat(t7, t8, t9, (char)97, t1, t10, (char)97, t5, t15, (char)101);
    t16 = (t0 + 4088U);
    t18 = *((char **)t16);
    t16 = (t18 + 0);
    t14 = (3U + 20U);
    memcpy(t16, t7, t14);
    goto LAB3;

LAB7:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2952U);
    t5 = *((char **)t1);
    t14 = (30 - 22);
    t19 = (t14 * 1U);
    t20 = (0 + t19);
    t1 = (t5 + t20);
    t6 = (t10 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 22;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t17 = (0 - 22);
    t21 = (t17 * -1);
    t21 = (t21 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t21;
    t7 = (t0 + 3272U);
    t9 = *((char **)t7);
    t22 = *((int *)t9);
    t23 = (23 - t22);
    t7 = ieee_p_1242562249_sub_1987757588013599599_1035706684(IEEE_P_1242562249, t8, t1, t10, t23);
    t11 = (t0 + 4088U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t16 = (t8 + 12U);
    t21 = *((unsigned int *)t16);
    t21 = (t21 * 1U);
    memcpy(t11, t7, t21);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 4448U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    memcpy(t1, t2, 8U);
    goto LAB8;

LAB10:    xsi_set_current_line(106, ng0);
    t5 = (t0 + 4208U);
    t6 = *((char **)t5);
    t5 = (t0 + 10440U);
    t7 = (t0 + 10897);
    t12 = ((IEEE_P_1242562249) + 2976);
    t16 = (t10 + 0U);
    t18 = (t16 + 0U);
    *((int *)t18) = 0;
    t18 = (t16 + 4U);
    *((int *)t18) = 23;
    t18 = (t16 + 8U);
    *((int *)t18) = 1;
    t17 = (23 - 0);
    t21 = (t17 * 1);
    t21 = (t21 + 1);
    t18 = (t16 + 12U);
    *((unsigned int *)t18) = t21;
    t11 = xsi_base_array_concat(t11, t8, t12, (char)99, (unsigned char)3, (char)97, t7, t10, (char)101);
    t24 = ieee_p_1242562249_sub_1434214030532789707_1035706684(IEEE_P_1242562249, t6, t5, t11, t8);
    if (t24 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(110, ng0);
    t1 = (t0 + 4208U);
    t2 = *((char **)t1);
    t14 = (24 - 23);
    t19 = (t14 * 1U);
    t20 = (0 + t19);
    t1 = (t2 + t20);
    t5 = (t10 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 23;
    t6 = (t5 + 4U);
    *((int *)t6) = 1;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t13 = (1 - 23);
    t21 = (t13 * -1);
    t21 = (t21 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t21;
    t6 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t8, t1, t10, 1);
    t7 = (t0 + 4088U);
    t9 = *((char **)t7);
    t7 = (t9 + 0);
    t11 = (t8 + 12U);
    t21 = *((unsigned int *)t11);
    t36 = (1U * t21);
    memcpy(t7, t6, t36);
    xsi_set_current_line(111, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 4448U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    memcpy(t1, t2, 8U);

LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(107, ng0);
    t18 = (t0 + 10921);
    t26 = (t0 + 10924);
    t29 = ((IEEE_P_1242562249) + 2976);
    t31 = (t30 + 0U);
    t32 = (t31 + 0U);
    *((int *)t32) = 0;
    t32 = (t31 + 4U);
    *((int *)t32) = 2;
    t32 = (t31 + 8U);
    *((int *)t32) = 1;
    t22 = (2 - 0);
    t21 = (t22 * 1);
    t21 = (t21 + 1);
    t32 = (t31 + 12U);
    *((unsigned int *)t32) = t21;
    t32 = (t33 + 0U);
    t34 = (t32 + 0U);
    *((int *)t34) = 0;
    t34 = (t32 + 4U);
    *((int *)t34) = 19;
    t34 = (t32 + 8U);
    *((int *)t34) = 1;
    t23 = (19 - 0);
    t21 = (t23 * 1);
    t21 = (t21 + 1);
    t34 = (t32 + 12U);
    *((unsigned int *)t34) = t21;
    t28 = xsi_base_array_concat(t28, t15, t29, (char)97, t18, t30, (char)97, t26, t33, (char)101);
    t34 = (t0 + 4088U);
    t35 = *((char **)t34);
    t34 = (t35 + 0);
    t21 = (3U + 20U);
    memcpy(t34, t28, t21);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 10360U);
    t5 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t8, t2, t1, 1);
    t6 = (t0 + 4448U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    t9 = (t8 + 12U);
    t14 = *((unsigned int *)t9);
    t19 = (1U * t14);
    memcpy(t6, t5, t19);
    goto LAB14;

}


extern void work_a_0679971789_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0679971789_2372691052_p_0,(void *)work_a_0679971789_2372691052_p_1,(void *)work_a_0679971789_2372691052_p_2,(void *)work_a_0679971789_2372691052_p_3};
	xsi_register_didat("work_a_0679971789_2372691052", "isim/HANNYA_testbench_isim_beh.exe.sim/work/a_0679971789_2372691052.didat");
	xsi_register_executes(pe);
}
