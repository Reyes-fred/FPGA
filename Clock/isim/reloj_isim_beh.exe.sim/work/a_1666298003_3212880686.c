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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Alfredo/Documents/Diseno Logico y Digital/ProyectoFinal/contador_reloj.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1666298003_3212880686_p_0(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    char *t20;
    unsigned char t21;
    unsigned char t22;
    unsigned char t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4944);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 8536);
    t6 = (t0 + 5088);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 3U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 8539);
    t5 = (t0 + 5152);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 8543);
    t5 = (t0 + 5216);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 8546);
    t5 = (t0 + 5280);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 2152U);
    t5 = *((char **)t2);
    t2 = (t0 + 8464U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t11, t5, t2, 1);
    t7 = (t11 + 12U);
    t12 = *((unsigned int *)t7);
    t13 = (1U * t12);
    t4 = (4U != t13);
    if (t4 == 1)
        goto LAB7;

LAB8:    t8 = (t0 + 5280);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 4U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 8464U);
    t3 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, 9);
    if (t3 != 0)
        goto LAB9;

LAB11:
LAB10:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 8448U);
    t4 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, 5);
    if (t4 == 1)
        goto LAB17;

LAB18:    t3 = (unsigned char)0;

LAB19:    if (t3 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 8496U);
    t3 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, 9);
    if (t3 != 0)
        goto LAB22;

LAB24:
LAB23:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8480U);
    t18 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, 2);
    if (t18 == 1)
        goto LAB36;

LAB37:    t17 = (unsigned char)0;

LAB38:    if (t17 == 1)
        goto LAB33;

LAB34:    t4 = (unsigned char)0;

LAB35:    if (t4 == 1)
        goto LAB30;

LAB31:    t3 = (unsigned char)0;

LAB32:    if (t3 != 0)
        goto LAB27;

LAB29:
LAB28:    goto LAB3;

LAB7:    xsi_size_not_matching(4U, t13, 0);
    goto LAB8;

LAB9:    xsi_set_current_line(46, ng0);
    t5 = (t0 + 1992U);
    t6 = *((char **)t5);
    t5 = (t0 + 8448U);
    t7 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t11, t6, t5, 1);
    t8 = (t11 + 12U);
    t12 = *((unsigned int *)t8);
    t13 = (1U * t12);
    t4 = (3U != t13);
    if (t4 == 1)
        goto LAB12;

LAB13:    t9 = (t0 + 5216);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 3U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 8550);
    t5 = (t0 + 5280);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB10;

LAB12:    xsi_size_not_matching(3U, t13, 0);
    goto LAB13;

LAB14:    xsi_set_current_line(51, ng0);
    t7 = (t0 + 2472U);
    t8 = *((char **)t7);
    t7 = (t0 + 8496U);
    t9 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t11, t8, t7, 1);
    t10 = (t11 + 12U);
    t12 = *((unsigned int *)t10);
    t13 = (1U * t12);
    t18 = (4U != t13);
    if (t18 == 1)
        goto LAB20;

LAB21:    t14 = (t0 + 5152);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 4U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 8554);
    t5 = (t0 + 5216);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB15;

LAB17:    t5 = (t0 + 2152U);
    t6 = *((char **)t5);
    t5 = (t0 + 8464U);
    t17 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t6, t5, 9);
    t3 = t17;
    goto LAB19;

LAB20:    xsi_size_not_matching(4U, t13, 0);
    goto LAB21;

LAB22:    xsi_set_current_line(55, ng0);
    t5 = (t0 + 2312U);
    t6 = *((char **)t5);
    t5 = (t0 + 8480U);
    t7 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t11, t6, t5, 1);
    t8 = (t11 + 12U);
    t12 = *((unsigned int *)t8);
    t13 = (1U * t12);
    t4 = (3U != t13);
    if (t4 == 1)
        goto LAB25;

LAB26:    t9 = (t0 + 5088);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 3U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 8557);
    t5 = (t0 + 5152);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB23;

LAB25:    xsi_size_not_matching(3U, t13, 0);
    goto LAB26;

LAB27:    xsi_set_current_line(60, ng0);
    t14 = (t0 + 8561);
    t16 = (t0 + 5088);
    t19 = (t16 + 56U);
    t20 = *((char **)t19);
    t24 = (t20 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t14, 3U);
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 8564);
    t5 = (t0 + 5152);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB28;

LAB30:    t9 = (t0 + 2152U);
    t10 = *((char **)t9);
    t9 = (t0 + 8464U);
    t23 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t10, t9, 9);
    t3 = t23;
    goto LAB32;

LAB33:    t7 = (t0 + 1992U);
    t8 = *((char **)t7);
    t7 = (t0 + 8448U);
    t22 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t8, t7, 5);
    t4 = t22;
    goto LAB35;

LAB36:    t5 = (t0 + 2472U);
    t6 = *((char **)t5);
    t5 = (t0 + 8496U);
    t21 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t6, t5, 3);
    t17 = t21;
    goto LAB38;

}

static void work_a_1666298003_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(67, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 5344);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4960);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1666298003_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5408);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4976);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1666298003_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(69, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 5472);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4992);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1666298003_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(70, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 5536);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5008);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1666298003_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1666298003_3212880686_p_0,(void *)work_a_1666298003_3212880686_p_1,(void *)work_a_1666298003_3212880686_p_2,(void *)work_a_1666298003_3212880686_p_3,(void *)work_a_1666298003_3212880686_p_4};
	xsi_register_didat("work_a_1666298003_3212880686", "isim/reloj_isim_beh.exe.sim/work/a_1666298003_3212880686.didat");
	xsi_register_executes(pe);
}
