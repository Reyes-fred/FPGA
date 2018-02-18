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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "B:/Documentos/BUAP/6. Otonio 2014/1. Disenio Logico y Digital/Practicas de Laboratorio/Practica 5/Proyecto ISE/contador0-99/Mux2x1.vhd";



static void work_a_0734482308_3212880686_p_0(char *t0)
{
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
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t10 = (t0 + 684U);
    t11 = *((char **)t10);
    t10 = (t0 + 1768);
    t12 = (t10 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 4U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t16 = (t0 + 1724);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 592U);
    t5 = *((char **)t1);
    t1 = (t0 + 1768);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_0734482308_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0734482308_3212880686_p_0};
	xsi_register_didat("work_a_0734482308_3212880686", "isim/Contador_top_isim_beh.exe.sim/work/a_0734482308_3212880686.didat");
	xsi_register_executes(pe);
}
