
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438010f 	lu12i.w	$r15,114696(0x1c008)
1c00000c:	039d51ef 	ori	$r15,$r15,0x754
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	0381e1ef 	ori	$r15,$r15,0x78
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038c31ad 	ori	$r13,$r13,0x30c
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	543b3c00 	bl	15164(0x3b3c) # 1c004bcc <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	543b8400 	bl	15236(0x3b84) # 1c004c1c <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	543c1000 	bl	15376(0x3c10) # 1c004cb0 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	543c4400 	bl	15428(0x3c44) # 1c004cec <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	543a6400 	bl	14948(0x3a64) # 1c004b14 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	543e8800 	bl	16008(0x3e88) # 1c004f40 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543cfc00 	bl	15612(0x3cfc) # 1c004dc4 <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b68084 	ld.w	$r4,$r4,-608(0xda0)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54017000 	bl	368(0x170) # 1c0014c0 <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54015800 	bl	344(0x158) # 1c0014c0 <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014000 	bl	320(0x140) # 1c0014c0 <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54012c00 	bl	300(0x12c) # 1c0014c0 <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54011400 	bl	276(0x114) # 1c0014c0 <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	541e2c00 	bl	7724(0x1e2c) # 1c003200 <DisableInt>
1c0013d8:	541d8c00 	bl	7564(0x1d8c) # 1c003164 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	54267c00 	bl	9852(0x267c) # 1c003a5c <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	5425bc00 	bl	9660(0x25bc) # 1c0039a4 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	54177000 	bl	6000(0x1770) # 1c002b64 <Uart1_init>
1c0013f8:	541ffc00 	bl	8188(0x1ffc) # 1c0033f4 <ls1x_logo>
1c0013fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001400:	0380118c 	ori	$r12,$r12,0x4
1c001404:	2880018e 	ld.w	$r14,$r12,0
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001414:	001535cd 	or	$r13,$r14,$r13
1c001418:	2980018d 	st.w	$r13,$r12,0
1c00141c:	541e0800 	bl	7688(0x1e08) # 1c003224 <EnableInt>
1c001420:	54209c00 	bl	8348(0x209c) # 1c0034bc <open_count>
1c001424:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001428:	541e6400 	bl	7780(0x1e64) # 1c00328c <Wake_Set>
1c00142c:	54260400 	bl	9732(0x2604) # 1c003a30 <WDG_DogFeed>
1c001430:	541f0800 	bl	7944(0x1f08) # 1c003338 <PMU_GetRstRrc>
1c001434:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00143c:	44003180 	bnez	$r12,48(0x30) # 1c00146c <bsp_init+0xa8>
1c001440:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001444:	02937084 	addi.w	$r4,$r4,1244(0x4dc)
1c001448:	54074c00 	bl	1868(0x74c) # 1c001b94 <myprintf>
1c00144c:	541f5800 	bl	8024(0x1f58) # 1c0033a4 <PMU_GetBootSpiStatus>
1c001450:	0015008c 	move	$r12,$r4
1c001454:	40001180 	beqz	$r12,16(0x10) # 1c001464 <bsp_init+0xa0>
1c001458:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00145c:	02935084 	addi.w	$r4,$r4,1236(0x4d4)
1c001460:	54073400 	bl	1844(0x734) # 1c001b94 <myprintf>
1c001464:	54488000 	bl	18560(0x4880) # 1c005ce4 <main>
1c001468:	50004000 	b	64(0x40) # 1c0014a8 <bsp_init+0xe4>
1c00146c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001470:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001474:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00148c <bsp_init+0xc8>
1c001478:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00147c:	02930084 	addi.w	$r4,$r4,1216(0x4c0)
1c001480:	54071400 	bl	1812(0x714) # 1c001b94 <myprintf>
1c001484:	54486000 	bl	18528(0x4860) # 1c005ce4 <main>
1c001488:	50002000 	b	32(0x20) # 1c0014a8 <bsp_init+0xe4>
1c00148c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001490:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001494:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014a8 <bsp_init+0xe4>
1c001498:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00149c:	0292c084 	addi.w	$r4,$r4,1200(0x4b0)
1c0014a0:	5406f400 	bl	1780(0x6f4) # 1c001b94 <myprintf>
1c0014a4:	57fd43ff 	bl	-704(0xffffd40) # 1c0011e4 <cpu_sleep>
1c0014a8:	0015000c 	move	$r12,$r0
1c0014ac:	00150184 	move	$r4,$r12
1c0014b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014bc:	4c000020 	jirl	$r0,$r1,0

1c0014c0 <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014c4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014d0:	001500ac 	move	$r12,$r5
1c0014d4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014d8:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014dc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014e4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014ec:	2880018c 	ld.w	$r12,$r12,0
1c0014f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0014f4:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c0014f8:	50006c00 	b	108(0x6c) # 1c001564 <AFIO_RemapConfig+0xa4>
1c0014fc:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c001500:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001504:	001831ac 	sra.w	$r12,$r13,$r12
1c001508:	0340058c 	andi	$r12,$r12,0x1
1c00150c:	40004d80 	beqz	$r12,76(0x4c) # 1c001558 <AFIO_RemapConfig+0x98>
1c001510:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001514:	0040858c 	slli.w	$r12,$r12,0x1
1c001518:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00151c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001520:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001524:	001731ac 	sll.w	$r12,$r13,$r12
1c001528:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00152c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001530:	0014300c 	nor	$r12,$r0,$r12
1c001534:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001538:	0014b1ac 	and	$r12,$r13,$r12
1c00153c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001540:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001544:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001548:	001731ac 	sll.w	$r12,$r13,$r12
1c00154c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001550:	001531ac 	or	$r12,$r13,$r12
1c001554:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001558:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00155c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001560:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001564:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001568:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00156c:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c0014fc <AFIO_RemapConfig+0x3c>
1c001570:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001574:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001578:	2980018d 	st.w	$r13,$r12,0
1c00157c:	03400000 	andi	$r0,$r0,0x0
1c001580:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001584:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001588:	4c000020 	jirl	$r0,$r1,0

1c00158c <gpio_get_pin>:
gpio_get_pin():
1c00158c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001590:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001594:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001598:	0015008c 	move	$r12,$r4
1c00159c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015a0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015a8:	0382018c 	ori	$r12,$r12,0x80
1c0015ac:	001031ac 	add.w	$r12,$r13,$r12
1c0015b0:	29000180 	st.b	$r0,$r12,0
1c0015b4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015bc:	0382018c 	ori	$r12,$r12,0x80
1c0015c0:	001031ac 	add.w	$r12,$r13,$r12
1c0015c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0015c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015cc:	00150184 	move	$r4,$r12
1c0015d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0015d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0015d8:	4c000020 	jirl	$r0,$r1,0

1c0015dc <gpio_write_pin>:
gpio_write_pin():
1c0015dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0015e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015e8:	0015008c 	move	$r12,$r4
1c0015ec:	001500ad 	move	$r13,$r5
1c0015f0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015f4:	001501ac 	move	$r12,$r13
1c0015f8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0015fc:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c001600:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001604:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c001628 <gpio_write_pin+0x4c>
1c001608:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00160c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001610:	0382018c 	ori	$r12,$r12,0x80
1c001614:	001031ac 	add.w	$r12,$r13,$r12
1c001618:	0015018d 	move	$r13,$r12
1c00161c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001620:	290001ac 	st.b	$r12,$r13,0
1c001624:	50002000 	b	32(0x20) # 1c001644 <gpio_write_pin+0x68>
1c001628:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00162c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001630:	0382018c 	ori	$r12,$r12,0x80
1c001634:	001031ac 	add.w	$r12,$r13,$r12
1c001638:	0015018d 	move	$r13,$r12
1c00163c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001640:	290001ac 	st.b	$r12,$r13,0
1c001644:	03400000 	andi	$r0,$r0,0x0
1c001648:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00164c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001650:	4c000020 	jirl	$r0,$r1,0

1c001654 <gpio_pin_remap>:
gpio_pin_remap():
1c001654:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001658:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00165c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001660:	0015008c 	move	$r12,$r4
1c001664:	001500ad 	move	$r13,$r5
1c001668:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00166c:	001501ac 	move	$r12,$r13
1c001670:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001674:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001678:	0044918c 	srli.w	$r12,$r12,0x4
1c00167c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001680:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001684:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001688:	03403d8c 	andi	$r12,$r12,0xf
1c00168c:	0040858c 	slli.w	$r12,$r12,0x1
1c001690:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001694:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001698:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c00169c:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c001850 <gpio_pin_remap+0x1fc>
1c0016a0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0016a8:	580089ac 	beq	$r13,$r12,136(0x88) # 1c001730 <gpio_pin_remap+0xdc>
1c0016ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016b0:	40002180 	beqz	$r12,32(0x20) # 1c0016d0 <gpio_pin_remap+0x7c>
1c0016b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016b8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0016bc:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c001790 <gpio_pin_remap+0x13c>
1c0016c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016c4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0016c8:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017f0 <gpio_pin_remap+0x19c>
1c0016cc:	50018800 	b	392(0x188) # 1c001854 <gpio_pin_remap+0x200>
1c0016d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016d4:	0380418c 	ori	$r12,$r12,0x10
1c0016d8:	2880018d 	ld.w	$r13,$r12,0
1c0016dc:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016e4:	001731cc 	sll.w	$r12,$r14,$r12
1c0016e8:	0014300c 	nor	$r12,$r0,$r12
1c0016ec:	0015018e 	move	$r14,$r12
1c0016f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016f4:	0380418c 	ori	$r12,$r12,0x10
1c0016f8:	0014b9ad 	and	$r13,$r13,$r14
1c0016fc:	2980018d 	st.w	$r13,$r12,0
1c001700:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001704:	0380418c 	ori	$r12,$r12,0x10
1c001708:	2880018d 	ld.w	$r13,$r12,0
1c00170c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001710:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001714:	001731cc 	sll.w	$r12,$r14,$r12
1c001718:	0015018e 	move	$r14,$r12
1c00171c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001720:	0380418c 	ori	$r12,$r12,0x10
1c001724:	001539ad 	or	$r13,$r13,$r14
1c001728:	2980018d 	st.w	$r13,$r12,0
1c00172c:	50012800 	b	296(0x128) # 1c001854 <gpio_pin_remap+0x200>
1c001730:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001734:	0380518c 	ori	$r12,$r12,0x14
1c001738:	2880018d 	ld.w	$r13,$r12,0
1c00173c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001740:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001744:	001731cc 	sll.w	$r12,$r14,$r12
1c001748:	0014300c 	nor	$r12,$r0,$r12
1c00174c:	0015018e 	move	$r14,$r12
1c001750:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001754:	0380518c 	ori	$r12,$r12,0x14
1c001758:	0014b9ad 	and	$r13,$r13,$r14
1c00175c:	2980018d 	st.w	$r13,$r12,0
1c001760:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001764:	0380518c 	ori	$r12,$r12,0x14
1c001768:	2880018d 	ld.w	$r13,$r12,0
1c00176c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001770:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001774:	001731cc 	sll.w	$r12,$r14,$r12
1c001778:	0015018e 	move	$r14,$r12
1c00177c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001780:	0380518c 	ori	$r12,$r12,0x14
1c001784:	001539ad 	or	$r13,$r13,$r14
1c001788:	2980018d 	st.w	$r13,$r12,0
1c00178c:	5000c800 	b	200(0xc8) # 1c001854 <gpio_pin_remap+0x200>
1c001790:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001794:	0380618c 	ori	$r12,$r12,0x18
1c001798:	2880018d 	ld.w	$r13,$r12,0
1c00179c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017a4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017a8:	0014300c 	nor	$r12,$r0,$r12
1c0017ac:	0015018e 	move	$r14,$r12
1c0017b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017b4:	0380618c 	ori	$r12,$r12,0x18
1c0017b8:	0014b9ad 	and	$r13,$r13,$r14
1c0017bc:	2980018d 	st.w	$r13,$r12,0
1c0017c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017c4:	0380618c 	ori	$r12,$r12,0x18
1c0017c8:	2880018d 	ld.w	$r13,$r12,0
1c0017cc:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017d4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017d8:	0015018e 	move	$r14,$r12
1c0017dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017e0:	0380618c 	ori	$r12,$r12,0x18
1c0017e4:	001539ad 	or	$r13,$r13,$r14
1c0017e8:	2980018d 	st.w	$r13,$r12,0
1c0017ec:	50006800 	b	104(0x68) # 1c001854 <gpio_pin_remap+0x200>
1c0017f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017f4:	0380718c 	ori	$r12,$r12,0x1c
1c0017f8:	2880018d 	ld.w	$r13,$r12,0
1c0017fc:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001800:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001804:	001731cc 	sll.w	$r12,$r14,$r12
1c001808:	0014300c 	nor	$r12,$r0,$r12
1c00180c:	0015018e 	move	$r14,$r12
1c001810:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001814:	0380718c 	ori	$r12,$r12,0x1c
1c001818:	0014b9ad 	and	$r13,$r13,$r14
1c00181c:	2980018d 	st.w	$r13,$r12,0
1c001820:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001824:	0380718c 	ori	$r12,$r12,0x1c
1c001828:	2880018d 	ld.w	$r13,$r12,0
1c00182c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001830:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001834:	001731cc 	sll.w	$r12,$r14,$r12
1c001838:	0015018e 	move	$r14,$r12
1c00183c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001840:	0380718c 	ori	$r12,$r12,0x1c
1c001844:	001539ad 	or	$r13,$r13,$r14
1c001848:	2980018d 	st.w	$r13,$r12,0
1c00184c:	50000800 	b	8(0x8) # 1c001854 <gpio_pin_remap+0x200>
1c001850:	03400000 	andi	$r0,$r0,0x0
1c001854:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001858:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00185c:	4c000020 	jirl	$r0,$r1,0

1c001860 <gpio_set_direction>:
gpio_set_direction():
1c001860:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001864:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001868:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00186c:	0015008c 	move	$r12,$r4
1c001870:	001500ad 	move	$r13,$r5
1c001874:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001878:	001501ac 	move	$r12,$r13
1c00187c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001880:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001884:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001888:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c00188c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001890:	6800658d 	bltu	$r12,$r13,100(0x64) # 1c0018f4 <gpio_set_direction+0x94>
1c001894:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001898:	0381018c 	ori	$r12,$r12,0x40
1c00189c:	2880018d 	ld.w	$r13,$r12,0
1c0018a0:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018a8:	001731cc 	sll.w	$r12,$r14,$r12
1c0018ac:	0014300c 	nor	$r12,$r0,$r12
1c0018b0:	0015018e 	move	$r14,$r12
1c0018b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018b8:	0381018c 	ori	$r12,$r12,0x40
1c0018bc:	0014b9ad 	and	$r13,$r13,$r14
1c0018c0:	2980018d 	st.w	$r13,$r12,0
1c0018c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018c8:	0381018c 	ori	$r12,$r12,0x40
1c0018cc:	2880018d 	ld.w	$r13,$r12,0
1c0018d0:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0018d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018d8:	001731cc 	sll.w	$r12,$r14,$r12
1c0018dc:	0015018e 	move	$r14,$r12
1c0018e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018e4:	0381018c 	ori	$r12,$r12,0x40
1c0018e8:	001539ad 	or	$r13,$r13,$r14
1c0018ec:	2980018d 	st.w	$r13,$r12,0
1c0018f0:	50008c00 	b	140(0x8c) # 1c00197c <gpio_set_direction+0x11c>
1c0018f4:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0018f8:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0018fc:	6c007d8d 	bgeu	$r12,$r13,124(0x7c) # 1c001978 <gpio_set_direction+0x118>
1c001900:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001904:	0281000c 	addi.w	$r12,$r0,64(0x40)
1c001908:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c001978 <gpio_set_direction+0x118>
1c00190c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001910:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001914:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001918:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00191c:	0381418c 	ori	$r12,$r12,0x50
1c001920:	2880018d 	ld.w	$r13,$r12,0
1c001924:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001928:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00192c:	001731cc 	sll.w	$r12,$r14,$r12
1c001930:	0014300c 	nor	$r12,$r0,$r12
1c001934:	0015018e 	move	$r14,$r12
1c001938:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00193c:	0381418c 	ori	$r12,$r12,0x50
1c001940:	0014b9ad 	and	$r13,$r13,$r14
1c001944:	2980018d 	st.w	$r13,$r12,0
1c001948:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00194c:	0381418c 	ori	$r12,$r12,0x50
1c001950:	2880018d 	ld.w	$r13,$r12,0
1c001954:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001958:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00195c:	001731cc 	sll.w	$r12,$r14,$r12
1c001960:	0015018e 	move	$r14,$r12
1c001964:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001968:	0381418c 	ori	$r12,$r12,0x50
1c00196c:	001539ad 	or	$r13,$r13,$r14
1c001970:	2980018d 	st.w	$r13,$r12,0
1c001974:	50000800 	b	8(0x8) # 1c00197c <gpio_set_direction+0x11c>
1c001978:	03400000 	andi	$r0,$r0,0x0
1c00197c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001980:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001984:	4c000020 	jirl	$r0,$r1,0

1c001988 <myputchar>:
myputchar():
1c001988:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00198c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001990:	29806076 	st.w	$r22,$r3,24(0x18)
1c001994:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001998:	0015008c 	move	$r12,$r4
1c00199c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0019a0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0019a4:	00150185 	move	$r5,$r12
1c0019a8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0019ac:	540fe400 	bl	4068(0xfe4) # 1c002990 <UART_SendData>
1c0019b0:	03400000 	andi	$r0,$r0,0x0
1c0019b4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0019b8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0019bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0019c0:	4c000020 	jirl	$r0,$r1,0

1c0019c4 <printbase>:
printbase():
1c0019c4:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0019c8:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0019cc:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0019d0:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0019d4:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0019d8:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0019dc:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0019e0:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0019e4:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0019e8:	40002580 	beqz	$r12,36(0x24) # 1c001a0c <printbase+0x48>
1c0019ec:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0019f0:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001a0c <printbase+0x48>
1c0019f4:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0019f8:	0011300c 	sub.w	$r12,$r0,$r12
1c0019fc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a00:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001a04:	57ff87ff 	bl	-124(0xfffff84) # 1c001988 <myputchar>
1c001a08:	50000c00 	b	12(0xc) # 1c001a14 <printbase+0x50>
1c001a0c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a10:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a14:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a18:	50005000 	b	80(0x50) # 1c001a68 <printbase+0xa4>
1c001a1c:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001a20:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001a24:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001a28:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001a30 <printbase+0x6c>
1c001a2c:	002a0007 	break	0x7
1c001a30:	00005dcc 	ext.w.b	$r12,$r14
1c001a34:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a38:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001a3c:	001035cd 	add.w	$r13,$r14,$r13
1c001a40:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001a44:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001a48:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001a4c:	002135cc 	div.wu	$r12,$r14,$r13
1c001a50:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001a58 <printbase+0x94>
1c001a54:	002a0007 	break	0x7
1c001a58:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a68:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001a6c:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001a1c <printbase+0x58>
1c001a70:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a74:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a78:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001a7c:	001231ad 	slt	$r13,$r13,$r12
1c001a80:	0013b5ce 	masknez	$r14,$r14,$r13
1c001a84:	0013358c 	maskeqz	$r12,$r12,$r13
1c001a88:	001531cc 	or	$r12,$r14,$r12
1c001a8c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a90:	50007400 	b	116(0x74) # 1c001b04 <printbase+0x140>
1c001a94:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001a98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a9c:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001ab8 <printbase+0xf4>
1c001aa0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001aa4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001aa8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001aac:	001031ac 	add.w	$r12,$r13,$r12
1c001ab0:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001ab4:	50000800 	b	8(0x8) # 1c001abc <printbase+0xf8>
1c001ab8:	0015000c 	move	$r12,$r0
1c001abc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001ac0:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001ac4:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001ac8:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001ae0 <printbase+0x11c>
1c001acc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001ad0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ad4:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001ad8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001adc:	50001400 	b	20(0x14) # 1c001af0 <printbase+0x12c>
1c001ae0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001ae4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ae8:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001aec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001af0:	00150184 	move	$r4,$r12
1c001af4:	57fe97ff 	bl	-364(0xffffe94) # 1c001988 <myputchar>
1c001af8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001afc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b00:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b08:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c001a94 <printbase+0xd0>
1c001b0c:	0015000c 	move	$r12,$r0
1c001b10:	00150184 	move	$r4,$r12
1c001b14:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001b18:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001b1c:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001b20:	4c000020 	jirl	$r0,$r1,0

1c001b24 <puts>:
puts():
1c001b24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b28:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001b2c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001b30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b34:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b38:	50003000 	b	48(0x30) # 1c001b68 <puts+0x44>
1c001b3c:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001b40:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001b44:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001b50 <puts+0x2c>
1c001b48:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001b4c:	57fe3fff 	bl	-452(0xffffe3c) # 1c001988 <myputchar>
1c001b50:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001b54:	00150184 	move	$r4,$r12
1c001b58:	57fe33ff 	bl	-464(0xffffe30) # 1c001988 <myputchar>
1c001b5c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b64:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001b68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b6c:	2a00018c 	ld.bu	$r12,$r12,0
1c001b70:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001b74:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001b78:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001b3c <puts+0x18>
1c001b7c:	0015000c 	move	$r12,$r0
1c001b80:	00150184 	move	$r4,$r12
1c001b84:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001b88:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001b8c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001b90:	4c000020 	jirl	$r0,$r1,0

1c001b94 <myprintf>:
myprintf():
1c001b94:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001b98:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001b9c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001ba0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001ba4:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001ba8:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001bac:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001bb0:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001bb4:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001bb8:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001bbc:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001bc0:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001bc4:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001bc8:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001bcc:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001bd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bd4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001bd8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001bdc:	50033000 	b	816(0x330) # 1c001f0c <myprintf+0x378>
1c001be0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001be4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001be8:	001031ac 	add.w	$r12,$r13,$r12
1c001bec:	2a00018c 	ld.bu	$r12,$r12,0
1c001bf0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001bf4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001bf8:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001bfc:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001ee0 <myprintf+0x34c>
1c001c00:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001c04:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001c08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c10:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c14:	001031ac 	add.w	$r12,$r13,$r12
1c001c18:	2800018c 	ld.b	$r12,$r12,0
1c001c1c:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001c20:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001c24:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001ed0 <myprintf+0x33c>
1c001c28:	0040898d 	slli.w	$r13,$r12,0x2
1c001c2c:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c001c30:	02b4a18c 	addi.w	$r12,$r12,-728(0xd28)
1c001c34:	001031ac 	add.w	$r12,$r13,$r12
1c001c38:	2880018c 	ld.w	$r12,$r12,0
1c001c3c:	4c000180 	jirl	$r0,$r12,0
1c001c40:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c44:	2880018c 	ld.w	$r12,$r12,0
1c001c48:	00150184 	move	$r4,$r12
1c001c4c:	57fedbff 	bl	-296(0xffffed8) # 1c001b24 <puts>
1c001c50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c54:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c58:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c68:	50029800 	b	664(0x298) # 1c001f00 <myprintf+0x36c>
1c001c6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c70:	2880018c 	ld.w	$r12,$r12,0
1c001c74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001c78:	00150184 	move	$r4,$r12
1c001c7c:	57fd0fff 	bl	-756(0xffffd0c) # 1c001988 <myputchar>
1c001c80:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c84:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c88:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c94:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c98:	50026800 	b	616(0x268) # 1c001f00 <myprintf+0x36c>
1c001c9c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ca0:	2880018c 	ld.w	$r12,$r12,0
1c001ca4:	00150007 	move	$r7,$r0
1c001ca8:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001cac:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001cb0:	00150184 	move	$r4,$r12
1c001cb4:	57fd13ff 	bl	-752(0xffffd10) # 1c0019c4 <printbase>
1c001cb8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cbc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cc0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ccc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cd0:	50023000 	b	560(0x230) # 1c001f00 <myprintf+0x36c>
1c001cd4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cd8:	2880018c 	ld.w	$r12,$r12,0
1c001cdc:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001ce0:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001ce4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001ce8:	00150184 	move	$r4,$r12
1c001cec:	57fcdbff 	bl	-808(0xffffcd8) # 1c0019c4 <printbase>
1c001cf0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cf4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cf8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d08:	5001f800 	b	504(0x1f8) # 1c001f00 <myprintf+0x36c>
1c001d0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d10:	2880018c 	ld.w	$r12,$r12,0
1c001d14:	00150007 	move	$r7,$r0
1c001d18:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001d1c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d20:	00150184 	move	$r4,$r12
1c001d24:	57fca3ff 	bl	-864(0xffffca0) # 1c0019c4 <printbase>
1c001d28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d2c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d30:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d40:	5001c000 	b	448(0x1c0) # 1c001f00 <myprintf+0x36c>
1c001d44:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d48:	2880018c 	ld.w	$r12,$r12,0
1c001d4c:	00150007 	move	$r7,$r0
1c001d50:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001d54:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d58:	00150184 	move	$r4,$r12
1c001d5c:	57fc6bff 	bl	-920(0xffffc68) # 1c0019c4 <printbase>
1c001d60:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d64:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d68:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d78:	50018800 	b	392(0x188) # 1c001f00 <myprintf+0x36c>
1c001d7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d80:	2880018c 	ld.w	$r12,$r12,0
1c001d84:	00150007 	move	$r7,$r0
1c001d88:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001d8c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d90:	00150184 	move	$r4,$r12
1c001d94:	57fc33ff 	bl	-976(0xffffc30) # 1c0019c4 <printbase>
1c001d98:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d9c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001da0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001da8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001db0:	50015000 	b	336(0x150) # 1c001f00 <myprintf+0x36c>
1c001db4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001db8:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c001988 <myputchar>
1c001dbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dc8:	50013800 	b	312(0x138) # 1c001f00 <myprintf+0x36c>
1c001dcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dd0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dd4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dd8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001ddc:	50003c00 	b	60(0x3c) # 1c001e18 <myprintf+0x284>
1c001de0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001de4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001de8:	001c31ad 	mul.w	$r13,$r13,$r12
1c001dec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001df0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001df4:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001df8:	001031cc 	add.w	$r12,$r14,$r12
1c001dfc:	2800018c 	ld.b	$r12,$r12,0
1c001e00:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e04:	001031ac 	add.w	$r12,$r13,$r12
1c001e08:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e20:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e24:	001031ac 	add.w	$r12,$r13,$r12
1c001e28:	2800018d 	ld.b	$r13,$r12,0
1c001e2c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001e30:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001c08 <myprintf+0x74>
1c001e34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e3c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e40:	001031ac 	add.w	$r12,$r13,$r12
1c001e44:	2800018d 	ld.b	$r13,$r12,0
1c001e48:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001e4c:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001de0 <myprintf+0x24c>
1c001e50:	53fdbbff 	b	-584(0xffffdb8) # 1c001c08 <myprintf+0x74>
1c001e54:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001e58:	50003c00 	b	60(0x3c) # 1c001e94 <myprintf+0x300>
1c001e5c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001e60:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001e64:	001c31ad 	mul.w	$r13,$r13,$r12
1c001e68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e70:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e74:	001031cc 	add.w	$r12,$r14,$r12
1c001e78:	2800018c 	ld.b	$r12,$r12,0
1c001e7c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e80:	001031ac 	add.w	$r12,$r13,$r12
1c001e84:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e9c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ea0:	001031ac 	add.w	$r12,$r13,$r12
1c001ea4:	2800018d 	ld.b	$r13,$r12,0
1c001ea8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001eac:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001c08 <myprintf+0x74>
1c001eb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001eb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001eb8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ebc:	001031ac 	add.w	$r12,$r13,$r12
1c001ec0:	2800018d 	ld.b	$r13,$r12,0
1c001ec4:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001ec8:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001e5c <myprintf+0x2c8>
1c001ecc:	53fd3fff 	b	-708(0xffffd3c) # 1c001c08 <myprintf+0x74>
1c001ed0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001ed4:	57fab7ff 	bl	-1356(0xffffab4) # 1c001988 <myputchar>
1c001ed8:	03400000 	andi	$r0,$r0,0x0
1c001edc:	50002400 	b	36(0x24) # 1c001f00 <myprintf+0x36c>
1c001ee0:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001ee4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001ee8:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001ef4 <myprintf+0x360>
1c001eec:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001ef0:	57fa9bff 	bl	-1384(0xffffa98) # 1c001988 <myputchar>
1c001ef4:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001ef8:	00150184 	move	$r4,$r12
1c001efc:	57fa8fff 	bl	-1396(0xffffa8c) # 1c001988 <myputchar>
1c001f00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f04:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f10:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f14:	001031ac 	add.w	$r12,$r13,$r12
1c001f18:	2800018c 	ld.b	$r12,$r12,0
1c001f1c:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001be0 <myprintf+0x4c>
1c001f20:	0015000c 	move	$r12,$r0
1c001f24:	00150184 	move	$r4,$r12
1c001f28:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001f2c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001f30:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001f34:	4c000020 	jirl	$r0,$r1,0

1c001f38 <vsputs>:
vsputs():
1c001f38:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001f3c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001f40:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001f44:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001f48:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001f4c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001f50:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c001f54:	5417b800 	bl	6072(0x17b8) # 1c00370c <strlen>
1c001f58:	0015008c 	move	$r12,$r4
1c001f5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f60:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001f64:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001f68:	54174800 	bl	5960(0x1748) # 1c0036b0 <strcpy>
1c001f6c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001f70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f74:	001031ac 	add.w	$r12,$r13,$r12
1c001f78:	00150184 	move	$r4,$r12
1c001f7c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001f80:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001f84:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001f88:	4c000020 	jirl	$r0,$r1,0

1c001f8c <vsputchar>:
vsputchar():
1c001f8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001f90:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001f94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001f98:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001f9c:	001500ac 	move	$r12,$r5
1c001fa0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001fa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fa8:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001fac:	2900018d 	st.b	$r13,$r12,0
1c001fb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fb8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fc0:	00150184 	move	$r4,$r12
1c001fc4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001fc8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001fcc:	4c000020 	jirl	$r0,$r1,0

1c001fd0 <vsprintbase>:
vsprintbase():
1c001fd0:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c001fd4:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c001fd8:	2981e076 	st.w	$r22,$r3,120(0x78)
1c001fdc:	02820076 	addi.w	$r22,$r3,128(0x80)
1c001fe0:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001fe4:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001fe8:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001fec:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001ff0:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c001ff4:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c001ff8:	40002d80 	beqz	$r12,44(0x2c) # 1c002024 <vsprintbase+0x54>
1c001ffc:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002000:	64002580 	bge	$r12,$r0,36(0x24) # 1c002024 <vsprintbase+0x54>
1c002004:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002008:	0011300c 	sub.w	$r12,$r0,$r12
1c00200c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002010:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c002014:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002018:	57ff77ff 	bl	-140(0xfffff74) # 1c001f8c <vsputchar>
1c00201c:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c002020:	50000c00 	b	12(0xc) # 1c00202c <vsprintbase+0x5c>
1c002024:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002028:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00202c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002030:	50005000 	b	80(0x50) # 1c002080 <vsprintbase+0xb0>
1c002034:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c002038:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00203c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c002040:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002048 <vsprintbase+0x78>
1c002044:	002a0007 	break	0x7
1c002048:	00005dcc 	ext.w.b	$r12,$r14
1c00204c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002050:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002054:	001035cd 	add.w	$r13,$r14,$r13
1c002058:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c00205c:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c002060:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c002064:	002135cc 	div.wu	$r12,$r14,$r13
1c002068:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002070 <vsprintbase+0xa0>
1c00206c:	002a0007 	break	0x7
1c002070:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002074:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002078:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00207c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002080:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002084:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c002034 <vsprintbase+0x64>
1c002088:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c00208c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002090:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c002094:	001231ad 	slt	$r13,$r13,$r12
1c002098:	0013b5ce 	masknez	$r14,$r14,$r13
1c00209c:	0013358c 	maskeqz	$r12,$r12,$r13
1c0020a0:	001531cc 	or	$r12,$r14,$r12
1c0020a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0020a8:	50008400 	b	132(0x84) # 1c00212c <vsprintbase+0x15c>
1c0020ac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0020b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020b4:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0020d0 <vsprintbase+0x100>
1c0020b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0020bc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0020c0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0020c4:	001031ac 	add.w	$r12,$r13,$r12
1c0020c8:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0020cc:	50000800 	b	8(0x8) # 1c0020d4 <vsprintbase+0x104>
1c0020d0:	0015000c 	move	$r12,$r0
1c0020d4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0020d8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0020dc:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0020e0:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0020fc <vsprintbase+0x12c>
1c0020e4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0020e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020ec:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0020f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020f4:	00005d8c 	ext.w.b	$r12,$r12
1c0020f8:	50001800 	b	24(0x18) # 1c002110 <vsprintbase+0x140>
1c0020fc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c002100:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002104:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c002108:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00210c:	00005d8c 	ext.w.b	$r12,$r12
1c002110:	00150185 	move	$r5,$r12
1c002114:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002118:	57fe77ff 	bl	-396(0xffffe74) # 1c001f8c <vsputchar>
1c00211c:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c002120:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002124:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002128:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00212c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002130:	63ff7c0c 	blt	$r0,$r12,-132(0x3ff7c) # 1c0020ac <vsprintbase+0xdc>
1c002134:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c002138:	00150184 	move	$r4,$r12
1c00213c:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c002140:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c002144:	02820063 	addi.w	$r3,$r3,128(0x80)
1c002148:	4c000020 	jirl	$r0,$r1,0

1c00214c <vsprintf>:
vsprintf():
1c00214c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002150:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002154:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002158:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00215c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002160:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002164:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c002168:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00216c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002170:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002174:	50036c00 	b	876(0x36c) # 1c0024e0 <vsprintf+0x394>
1c002178:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00217c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002180:	001031ac 	add.w	$r12,$r13,$r12
1c002184:	2a00018c 	ld.bu	$r12,$r12,0
1c002188:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c00218c:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c002190:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c002194:	5c0311ac 	bne	$r13,$r12,784(0x310) # 1c0024a4 <vsprintf+0x358>
1c002198:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00219c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021a8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0021ac:	001031ac 	add.w	$r12,$r13,$r12
1c0021b0:	2800018c 	ld.b	$r12,$r12,0
1c0021b4:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0021b8:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0021bc:	6802d1ac 	bltu	$r13,$r12,720(0x2d0) # 1c00248c <vsprintf+0x340>
1c0021c0:	0040898d 	slli.w	$r13,$r12,0x2
1c0021c4:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c0021c8:	02a3818c 	addi.w	$r12,$r12,-1824(0x8e0)
1c0021cc:	001031ac 	add.w	$r12,$r13,$r12
1c0021d0:	2880018c 	ld.w	$r12,$r12,0
1c0021d4:	4c000180 	jirl	$r0,$r12,0
1c0021d8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0021dc:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0021e0:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0021e4:	2880018c 	ld.w	$r12,$r12,0
1c0021e8:	00150185 	move	$r5,$r12
1c0021ec:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0021f0:	57fd4bff 	bl	-696(0xffffd48) # 1c001f38 <vsputs>
1c0021f4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0021f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002200:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002204:	5002d000 	b	720(0x2d0) # 1c0024d4 <vsprintf+0x388>
1c002208:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00220c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002210:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002214:	2880018c 	ld.w	$r12,$r12,0
1c002218:	00005d8c 	ext.w.b	$r12,$r12
1c00221c:	00150185 	move	$r5,$r12
1c002220:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002224:	57fd6bff 	bl	-664(0xffffd68) # 1c001f8c <vsputchar>
1c002228:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00222c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002230:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002234:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002238:	50029c00 	b	668(0x29c) # 1c0024d4 <vsprintf+0x388>
1c00223c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002240:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002244:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002248:	2880018c 	ld.w	$r12,$r12,0
1c00224c:	00150008 	move	$r8,$r0
1c002250:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002254:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002258:	00150185 	move	$r5,$r12
1c00225c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002260:	57fd73ff 	bl	-656(0xffffd70) # 1c001fd0 <vsprintbase>
1c002264:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002268:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00226c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002270:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002274:	50026000 	b	608(0x260) # 1c0024d4 <vsprintf+0x388>
1c002278:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00227c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002280:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002284:	2880018c 	ld.w	$r12,$r12,0
1c002288:	02800408 	addi.w	$r8,$r0,1(0x1)
1c00228c:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002290:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002294:	00150185 	move	$r5,$r12
1c002298:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00229c:	57fd37ff 	bl	-716(0xffffd34) # 1c001fd0 <vsprintbase>
1c0022a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022b0:	50022400 	b	548(0x224) # 1c0024d4 <vsprintf+0x388>
1c0022b4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0022b8:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0022bc:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0022c0:	2880018c 	ld.w	$r12,$r12,0
1c0022c4:	00150008 	move	$r8,$r0
1c0022c8:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0022cc:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c0022d0:	00150185 	move	$r5,$r12
1c0022d4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0022d8:	57fcfbff 	bl	-776(0xffffcf8) # 1c001fd0 <vsprintbase>
1c0022dc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022ec:	5001e800 	b	488(0x1e8) # 1c0024d4 <vsprintf+0x388>
1c0022f0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0022f4:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0022f8:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0022fc:	2880018c 	ld.w	$r12,$r12,0
1c002300:	00150008 	move	$r8,$r0
1c002304:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002308:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c00230c:	00150185 	move	$r5,$r12
1c002310:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002314:	57fcbfff 	bl	-836(0xffffcbc) # 1c001fd0 <vsprintbase>
1c002318:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00231c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002320:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002324:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002328:	5001ac00 	b	428(0x1ac) # 1c0024d4 <vsprintf+0x388>
1c00232c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002330:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002334:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002338:	2880018c 	ld.w	$r12,$r12,0
1c00233c:	00150008 	move	$r8,$r0
1c002340:	02804007 	addi.w	$r7,$r0,16(0x10)
1c002344:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002348:	00150185 	move	$r5,$r12
1c00234c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002350:	57fc83ff 	bl	-896(0xffffc80) # 1c001fd0 <vsprintbase>
1c002354:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002358:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00235c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002360:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002364:	50017000 	b	368(0x170) # 1c0024d4 <vsprintf+0x388>
1c002368:	02809405 	addi.w	$r5,$r0,37(0x25)
1c00236c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002370:	57fc1fff 	bl	-996(0xffffc1c) # 1c001f8c <vsputchar>
1c002374:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002378:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00237c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002380:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002384:	50015000 	b	336(0x150) # 1c0024d4 <vsprintf+0x388>
1c002388:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00238c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002390:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002394:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002398:	50003c00 	b	60(0x3c) # 1c0023d4 <vsprintf+0x288>
1c00239c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0023a0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0023a4:	001c31ad 	mul.w	$r13,$r13,$r12
1c0023a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023b0:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c0023b4:	001031cc 	add.w	$r12,$r14,$r12
1c0023b8:	2800018c 	ld.b	$r12,$r12,0
1c0023bc:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0023c0:	001031ac 	add.w	$r12,$r13,$r12
1c0023c4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0023c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023dc:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023e0:	001031ac 	add.w	$r12,$r13,$r12
1c0023e4:	2800018d 	ld.b	$r13,$r12,0
1c0023e8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0023ec:	67fdb58d 	bge	$r12,$r13,-588(0x3fdb4) # 1c0021a0 <vsprintf+0x54>
1c0023f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023f8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023fc:	001031ac 	add.w	$r12,$r13,$r12
1c002400:	2800018d 	ld.b	$r13,$r12,0
1c002404:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002408:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c00239c <vsprintf+0x250>
1c00240c:	53fd97ff 	b	-620(0xffffd94) # 1c0021a0 <vsprintf+0x54>
1c002410:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002414:	50003c00 	b	60(0x3c) # 1c002450 <vsprintf+0x304>
1c002418:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00241c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002420:	001c31ad 	mul.w	$r13,$r13,$r12
1c002424:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002428:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00242c:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c002430:	001031cc 	add.w	$r12,$r14,$r12
1c002434:	2800018c 	ld.b	$r12,$r12,0
1c002438:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c00243c:	001031ac 	add.w	$r12,$r13,$r12
1c002440:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002448:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00244c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002454:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002458:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00245c:	001031ac 	add.w	$r12,$r13,$r12
1c002460:	2800018d 	ld.b	$r13,$r12,0
1c002464:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002468:	67fd398d 	bge	$r12,$r13,-712(0x3fd38) # 1c0021a0 <vsprintf+0x54>
1c00246c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002470:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002474:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002478:	001031ac 	add.w	$r12,$r13,$r12
1c00247c:	2800018d 	ld.b	$r13,$r12,0
1c002480:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002484:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c002418 <vsprintf+0x2cc>
1c002488:	53fd1bff 	b	-744(0xffffd18) # 1c0021a0 <vsprintf+0x54>
1c00248c:	02809405 	addi.w	$r5,$r0,37(0x25)
1c002490:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002494:	57fafbff 	bl	-1288(0xffffaf8) # 1c001f8c <vsputchar>
1c002498:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00249c:	03400000 	andi	$r0,$r0,0x0
1c0024a0:	50003400 	b	52(0x34) # 1c0024d4 <vsprintf+0x388>
1c0024a4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c0024a8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0024ac:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0024c0 <vsprintf+0x374>
1c0024b0:	02803405 	addi.w	$r5,$r0,13(0xd)
1c0024b4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024b8:	57fad7ff 	bl	-1324(0xffffad4) # 1c001f8c <vsputchar>
1c0024bc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024c0:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c0024c4:	00150185 	move	$r5,$r12
1c0024c8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024cc:	57fac3ff 	bl	-1344(0xffffac0) # 1c001f8c <vsputchar>
1c0024d0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0024dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024e4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0024e8:	001031ac 	add.w	$r12,$r13,$r12
1c0024ec:	2800018c 	ld.b	$r12,$r12,0
1c0024f0:	47fc899f 	bnez	$r12,-888(0x7ffc88) # 1c002178 <vsprintf+0x2c>
1c0024f4:	00150005 	move	$r5,$r0
1c0024f8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024fc:	57fa93ff 	bl	-1392(0xffffa90) # 1c001f8c <vsputchar>
1c002500:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002504:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002508:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00250c:	001131ac 	sub.w	$r12,$r13,$r12
1c002510:	00150184 	move	$r4,$r12
1c002514:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002518:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00251c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002520:	4c000020 	jirl	$r0,$r1,0

1c002524 <sprintf>:
sprintf():
1c002524:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c002528:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00252c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002530:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002534:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002538:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00253c:	298022c6 	st.w	$r6,$r22,8(0x8)
1c002540:	298032c7 	st.w	$r7,$r22,12(0xc)
1c002544:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002548:	298052c9 	st.w	$r9,$r22,20(0x14)
1c00254c:	298062ca 	st.w	$r10,$r22,24(0x18)
1c002550:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c002554:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002558:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c00255c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002560:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002564:	00150186 	move	$r6,$r12
1c002568:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c00256c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002570:	57fbdfff 	bl	-1060(0xffffbdc) # 1c00214c <vsprintf>
1c002574:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002578:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00257c:	00150184 	move	$r4,$r12
1c002580:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002584:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002588:	02814063 	addi.w	$r3,$r3,80(0x50)
1c00258c:	4c000020 	jirl	$r0,$r1,0

1c002590 <UART_Init>:
UART_Init():
1c002590:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002594:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002598:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00259c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0025a0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0025a4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0025a8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0025ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025b0:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025b8:	03403d8c 	andi	$r12,$r12,0xf
1c0025bc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0025c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025c4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025cc:	0044918c 	srli.w	$r12,$r12,0x4
1c0025d0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0025d4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025d8:	40000d80 	beqz	$r12,12(0xc) # 1c0025e4 <UART_Init+0x54>
1c0025dc:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0025e0:	44001980 	bnez	$r12,24(0x18) # 1c0025f8 <UART_Init+0x68>
1c0025e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025e8:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c0025ec:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0025f0:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0025f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0025f8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0025fc:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c002600:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c002618 <UART_Init+0x88>
1c002604:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002608:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c00260c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c002610:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002614:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002618:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00261c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002620:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002624:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002628:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00262c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00263c <UART_Init+0xac>
1c002630:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002634:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002638:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c002698 <UART_Init+0x108>
1c00263c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002640:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002644:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002648:	2880018c 	ld.w	$r12,$r12,0
1c00264c:	002131ae 	div.wu	$r14,$r13,$r12
1c002650:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002658 <UART_Init+0xc8>
1c002654:	002a0007 	break	0x7
1c002658:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00265c:	002135cc 	div.wu	$r12,$r14,$r13
1c002660:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002668 <UART_Init+0xd8>
1c002664:	002a0007 	break	0x7
1c002668:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00266c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002670:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002674:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002678:	2880018e 	ld.w	$r14,$r12,0
1c00267c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002680:	001c31ce 	mul.w	$r14,$r14,$r12
1c002684:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002688:	001c31cc 	mul.w	$r12,$r14,$r12
1c00268c:	001131ac 	sub.w	$r12,$r13,$r12
1c002690:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002694:	50005400 	b	84(0x54) # 1c0026e8 <UART_Init+0x158>
1c002698:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00269c:	2880018c 	ld.w	$r12,$r12,0
1c0026a0:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026a4:	002131ae 	div.wu	$r14,$r13,$r12
1c0026a8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0026b0 <UART_Init+0x120>
1c0026ac:	002a0007 	break	0x7
1c0026b0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0026b4:	002135cc 	div.wu	$r12,$r14,$r13
1c0026b8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0026c0 <UART_Init+0x130>
1c0026bc:	002a0007 	break	0x7
1c0026c0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0026c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026c8:	2880018d 	ld.w	$r13,$r12,0
1c0026cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026d0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026d4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0026d8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0026dc:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026e0:	001131ac 	sub.w	$r12,$r13,$r12
1c0026e4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0026e8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0026ec:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0026f0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026f4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026f8:	2880018c 	ld.w	$r12,$r12,0
1c0026fc:	002131ae 	div.wu	$r14,$r13,$r12
1c002700:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002708 <UART_Init+0x178>
1c002704:	002a0007 	break	0x7
1c002708:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00270c:	002135cc 	div.wu	$r12,$r14,$r13
1c002710:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002718 <UART_Init+0x188>
1c002714:	002a0007 	break	0x7
1c002718:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00271c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002720:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002724:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002728:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c00272c:	001531ac 	or	$r12,$r13,$r12
1c002730:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002734:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002738:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00273c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002740:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002744:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002748:	2900018d 	st.b	$r13,$r12,0
1c00274c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002750:	0044a18c 	srli.w	$r12,$r12,0x8
1c002754:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002758:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00275c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002760:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002764:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002768:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00276c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002770:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002774:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002778:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00277c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002780:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002784:	0341fd8c 	andi	$r12,$r12,0x7f
1c002788:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00278c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002790:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002794:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002798:	29000580 	st.b	$r0,$r12,1(0x1)
1c00279c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027a0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027a4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027a8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027ac:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c0027b0:	001531ac 	or	$r12,$r13,$r12
1c0027b4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027bc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027c4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027c8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027d0:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c0027d4:	001531ac 	or	$r12,$r13,$r12
1c0027d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027e0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027e8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027ec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027f4:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c0027f8:	001531ac 	or	$r12,$r13,$r12
1c0027fc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002800:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002804:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002808:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00280c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002810:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002814:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002818:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c00281c:	001531ac 	or	$r12,$r13,$r12
1c002820:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002824:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002828:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00282c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002830:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002834:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002838:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00283c:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c002840:	001531ac 	or	$r12,$r13,$r12
1c002844:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002848:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00284c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002850:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002854:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002858:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00285c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002860:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002864:	001531ac 	or	$r12,$r13,$r12
1c002868:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00286c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002870:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002874:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002878:	2a00018c 	ld.bu	$r12,$r12,0
1c00287c:	03400000 	andi	$r0,$r0,0x0
1c002880:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002884:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002888:	4c000020 	jirl	$r0,$r1,0

1c00288c <UART_StructInit>:
UART_StructInit():
1c00288c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002890:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002894:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002898:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00289c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028a0:	1400038d 	lu12i.w	$r13,28(0x1c)
1c0028a4:	038801ad 	ori	$r13,$r13,0x200
1c0028a8:	2980018d 	st.w	$r13,$r12,0
1c0028ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028b0:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0028b4:	038801ad 	ori	$r13,$r13,0x200
1c0028b8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0028bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028c0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0028c4:	2900298d 	st.b	$r13,$r12,10(0xa)
1c0028c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028cc:	29002d80 	st.b	$r0,$r12,11(0xb)
1c0028d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028d4:	29003580 	st.b	$r0,$r12,13(0xd)
1c0028d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028dc:	29003180 	st.b	$r0,$r12,12(0xc)
1c0028e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028e4:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0028e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028ec:	29003980 	st.b	$r0,$r12,14(0xe)
1c0028f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028f4:	29402180 	st.h	$r0,$r12,8(0x8)
1c0028f8:	03400000 	andi	$r0,$r0,0x0
1c0028fc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002900:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002904:	4c000020 	jirl	$r0,$r1,0

1c002908 <UART_ITConfig>:
UART_ITConfig():
1c002908:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00290c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002910:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002914:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002918:	001500ac 	move	$r12,$r5
1c00291c:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c002920:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002924:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002928:	40002980 	beqz	$r12,40(0x28) # 1c002950 <UART_ITConfig+0x48>
1c00292c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002930:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002934:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002938:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00293c:	001531ac 	or	$r12,$r13,$r12
1c002940:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002944:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002948:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00294c:	50003400 	b	52(0x34) # 1c002980 <UART_ITConfig+0x78>
1c002950:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002954:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002958:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00295c:	00005d8d 	ext.w.b	$r13,$r12
1c002960:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002964:	0014300c 	nor	$r12,$r0,$r12
1c002968:	00005d8c 	ext.w.b	$r12,$r12
1c00296c:	0014b1ac 	and	$r12,$r13,$r12
1c002970:	00005d8c 	ext.w.b	$r12,$r12
1c002974:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002978:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00297c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002980:	03400000 	andi	$r0,$r0,0x0
1c002984:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002988:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00298c:	4c000020 	jirl	$r0,$r1,0

1c002990 <UART_SendData>:
UART_SendData():
1c002990:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002994:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002998:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00299c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029a0:	001500ac 	move	$r12,$r5
1c0029a4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0029a8:	03400000 	andi	$r0,$r0,0x0
1c0029ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029b0:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0029b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0029b8:	0340818c 	andi	$r12,$r12,0x20
1c0029bc:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0029ac <UART_SendData+0x1c>
1c0029c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029c4:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0029c8:	2900018d 	st.b	$r13,$r12,0
1c0029cc:	03400000 	andi	$r0,$r0,0x0
1c0029d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0029d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0029d8:	4c000020 	jirl	$r0,$r1,0

1c0029dc <UART_SendDataALL>:
UART_SendDataALL():
1c0029dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0029e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029ec:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0029f0:	001500cc 	move	$r12,$r6
1c0029f4:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c0029f8:	50004400 	b	68(0x44) # 1c002a3c <UART_SendDataALL+0x60>
1c0029fc:	03400000 	andi	$r0,$r0,0x0
1c002a00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a04:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002a08:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a0c:	0340818c 	andi	$r12,$r12,0x20
1c002a10:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002a00 <UART_SendDataALL+0x24>
1c002a14:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a18:	2a00018d 	ld.bu	$r13,$r12,0
1c002a1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a20:	2900018d 	st.b	$r13,$r12,0
1c002a24:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002a2c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002a30:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c002a34:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002a38:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c002a3c:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c002a40:	47ffbd9f 	bnez	$r12,-68(0x7fffbc) # 1c0029fc <UART_SendDataALL+0x20>
1c002a44:	03400000 	andi	$r0,$r0,0x0
1c002a48:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002a4c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a50:	4c000020 	jirl	$r0,$r1,0

1c002a54 <UART_ReceiveData>:
UART_ReceiveData():
1c002a54:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a58:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002a5c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a60:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002a64:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002a68:	03400000 	andi	$r0,$r0,0x0
1c002a6c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a70:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002a74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a78:	0340058c 	andi	$r12,$r12,0x1
1c002a7c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002a6c <UART_ReceiveData+0x18>
1c002a80:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a84:	2a00018c 	ld.bu	$r12,$r12,0
1c002a88:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a8c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a90:	00150184 	move	$r4,$r12
1c002a94:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002a98:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a9c:	4c000020 	jirl	$r0,$r1,0

1c002aa0 <Uart0_init>:
Uart0_init():
1c002aa0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002aa4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002aa8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002aac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ab0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002ab4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ab8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002abc:	57eb9bff 	bl	-5224(0xfffeb98) # 1c001654 <gpio_pin_remap>
1c002ac0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ac4:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002ac8:	57eb8fff 	bl	-5236(0xfffeb8c) # 1c001654 <gpio_pin_remap>
1c002acc:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002ad0:	00150184 	move	$r4,$r12
1c002ad4:	57fdbbff 	bl	-584(0xffffdb8) # 1c00288c <UART_StructInit>
1c002ad8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002adc:	2894f18c 	ld.w	$r12,$r12,1340(0x53c)
1c002ae0:	2880018c 	ld.w	$r12,$r12,0
1c002ae4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002ae8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002aec:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002af0:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002af4:	00150185 	move	$r5,$r12
1c002af8:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002afc:	57fa97ff 	bl	-1388(0xffffa94) # 1c002590 <UART_Init>
1c002b00:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b04:	0380098c 	ori	$r12,$r12,0x2
1c002b08:	2a00018c 	ld.bu	$r12,$r12,0
1c002b0c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b10:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b14:	0380098c 	ori	$r12,$r12,0x2
1c002b18:	038021ad 	ori	$r13,$r13,0x8
1c002b1c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002b20:	2900018d 	st.b	$r13,$r12,0
1c002b24:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b28:	2a00018c 	ld.bu	$r12,$r12,0
1c002b2c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b30:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b34:	038021ad 	ori	$r13,$r13,0x8
1c002b38:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002b3c:	2900018d 	st.b	$r13,$r12,0
1c002b40:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002b44:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b48:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002b4c:	57fdbfff 	bl	-580(0xffffdbc) # 1c002908 <UART_ITConfig>
1c002b50:	03400000 	andi	$r0,$r0,0x0
1c002b54:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b58:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b5c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b60:	4c000020 	jirl	$r0,$r1,0

1c002b64 <Uart1_init>:
Uart1_init():
1c002b64:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002b68:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002b6c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002b70:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002b74:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002b78:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b7c:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002b80:	57ead7ff 	bl	-5420(0xfffead4) # 1c001654 <gpio_pin_remap>
1c002b84:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b88:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002b8c:	57eacbff 	bl	-5432(0xfffeac8) # 1c001654 <gpio_pin_remap>
1c002b90:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002b94:	00150184 	move	$r4,$r12
1c002b98:	57fcf7ff 	bl	-780(0xffffcf4) # 1c00288c <UART_StructInit>
1c002b9c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002ba0:	2891e18c 	ld.w	$r12,$r12,1144(0x478)
1c002ba4:	2880018c 	ld.w	$r12,$r12,0
1c002ba8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002bac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002bb0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002bb4:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002bb8:	00150185 	move	$r5,$r12
1c002bbc:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002bc0:	57f9d3ff 	bl	-1584(0xffff9d0) # 1c002590 <UART_Init>
1c002bc4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002bc8:	0380098c 	ori	$r12,$r12,0x2
1c002bcc:	2a00018c 	ld.bu	$r12,$r12,0
1c002bd0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002bd4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002bd8:	0380098c 	ori	$r12,$r12,0x2
1c002bdc:	038011ad 	ori	$r13,$r13,0x4
1c002be0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002be4:	2900018d 	st.b	$r13,$r12,0
1c002be8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002bec:	2a00018c 	ld.bu	$r12,$r12,0
1c002bf0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002bf4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002bf8:	038011ad 	ori	$r13,$r13,0x4
1c002bfc:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002c00:	2900018d 	st.b	$r13,$r12,0
1c002c04:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002c08:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002c0c:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002c10:	57fcfbff 	bl	-776(0xffffcf8) # 1c002908 <UART_ITConfig>
1c002c14:	03400000 	andi	$r0,$r0,0x0
1c002c18:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002c1c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002c20:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002c24:	4c000020 	jirl	$r0,$r1,0

1c002c28 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002c28:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c2c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002c30:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c34:	1400006c 	lu12i.w	$r12,3(0x3)
1c002c38:	03ba018c 	ori	$r12,$r12,0xe80
1c002c3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c40:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002c44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c48:	2880018d 	ld.w	$r13,$r12,0
1c002c4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c50:	038101ad 	ori	$r13,$r13,0x40
1c002c54:	2980018d 	st.w	$r13,$r12,0
1c002c58:	03400000 	andi	$r0,$r0,0x0
1c002c5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c60:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c64:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002c68:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002c5c <CLOCK_WaitForHSEStartUp+0x34>
1c002c6c:	50001c00 	b	28(0x1c) # 1c002c88 <CLOCK_WaitForHSEStartUp+0x60>
1c002c70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c74:	2880018e 	ld.w	$r14,$r12,0
1c002c78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c7c:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002c80:	0014b5cd 	and	$r13,$r14,$r13
1c002c84:	2980018d 	st.w	$r13,$r12,0
1c002c88:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c8c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002c90:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002c70 <CLOCK_WaitForHSEStartUp+0x48>
1c002c94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c98:	2880018d 	ld.w	$r13,$r12,0
1c002c9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ca0:	038201ad 	ori	$r13,$r13,0x80
1c002ca4:	2980018d 	st.w	$r13,$r12,0
1c002ca8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002cac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002cb0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002cb4:	00150184 	move	$r4,$r12
1c002cb8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002cbc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002cc0:	4c000020 	jirl	$r0,$r1,0

1c002cc4 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002cc4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002cc8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002ccc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002cd0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002cd4:	50008800 	b	136(0x88) # 1c002d5c <CLOCK_WaitForLSEStartUp+0x98>
1c002cd8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cdc:	2880018e 	ld.w	$r14,$r12,0
1c002ce0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ce4:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002ce8:	0014b5cd 	and	$r13,$r14,$r13
1c002cec:	2980018d 	st.w	$r13,$r12,0
1c002cf0:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002cf4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002cf8:	50001400 	b	20(0x14) # 1c002d0c <CLOCK_WaitForLSEStartUp+0x48>
1c002cfc:	03400000 	andi	$r0,$r0,0x0
1c002d00:	03400000 	andi	$r0,$r0,0x0
1c002d04:	03400000 	andi	$r0,$r0,0x0
1c002d08:	03400000 	andi	$r0,$r0,0x0
1c002d0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d10:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002d14:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002d18:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002cfc <CLOCK_WaitForLSEStartUp+0x38>
1c002d1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d20:	2880018d 	ld.w	$r13,$r12,0
1c002d24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d28:	038081ad 	ori	$r13,$r13,0x20
1c002d2c:	2980018d 	st.w	$r13,$r12,0
1c002d30:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002d34:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d38:	50001400 	b	20(0x14) # 1c002d4c <CLOCK_WaitForLSEStartUp+0x88>
1c002d3c:	03400000 	andi	$r0,$r0,0x0
1c002d40:	03400000 	andi	$r0,$r0,0x0
1c002d44:	03400000 	andi	$r0,$r0,0x0
1c002d48:	03400000 	andi	$r0,$r0,0x0
1c002d4c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002d50:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002d54:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002d58:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002d3c <CLOCK_WaitForLSEStartUp+0x78>
1c002d5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d60:	0380118c 	ori	$r12,$r12,0x4
1c002d64:	2880018d 	ld.w	$r13,$r12,0
1c002d68:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002d6c:	0014b1ac 	and	$r12,$r13,$r12
1c002d70:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002cd8 <CLOCK_WaitForLSEStartUp+0x14>
1c002d74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d78:	0380118c 	ori	$r12,$r12,0x4
1c002d7c:	2880018d 	ld.w	$r13,$r12,0
1c002d80:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002d84:	0014b1ac 	and	$r12,$r13,$r12
1c002d88:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002cd8 <CLOCK_WaitForLSEStartUp+0x14>
1c002d8c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d90:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002d94:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002d98:	00150184 	move	$r4,$r12
1c002d9c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002da0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002da4:	4c000020 	jirl	$r0,$r1,0

1c002da8 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002da8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002dac:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002db0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002db4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002db8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002dbc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002dc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dc4:	2880018e 	ld.w	$r14,$r12,0
1c002dc8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002dcc:	0014300d 	nor	$r13,$r0,$r12
1c002dd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dd4:	0014b5cd 	and	$r13,$r14,$r13
1c002dd8:	2980018d 	st.w	$r13,$r12,0
1c002ddc:	1400002c 	lu12i.w	$r12,1(0x1)
1c002de0:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002de4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002de8:	50001400 	b	20(0x14) # 1c002dfc <CLOCK_HSEConfig+0x54>
1c002dec:	03400000 	andi	$r0,$r0,0x0
1c002df0:	03400000 	andi	$r0,$r0,0x0
1c002df4:	03400000 	andi	$r0,$r0,0x0
1c002df8:	03400000 	andi	$r0,$r0,0x0
1c002dfc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002e00:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002e04:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002e08:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002dec <CLOCK_HSEConfig+0x44>
1c002e0c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002e10:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002e14:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002e24 <CLOCK_HSEConfig+0x7c>
1c002e18:	57fe13ff 	bl	-496(0xffffe10) # 1c002c28 <CLOCK_WaitForHSEStartUp>
1c002e1c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e20:	50002400 	b	36(0x24) # 1c002e44 <CLOCK_HSEConfig+0x9c>
1c002e24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e28:	2880018e 	ld.w	$r14,$r12,0
1c002e2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e30:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002e34:	0014b5cd 	and	$r13,$r14,$r13
1c002e38:	2980018d 	st.w	$r13,$r12,0
1c002e3c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e40:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e48:	00150184 	move	$r4,$r12
1c002e4c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e50:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e54:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e58:	4c000020 	jirl	$r0,$r1,0

1c002e5c <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002e5c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e60:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e64:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e68:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e6c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e70:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e74:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002e78:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002e7c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002e8c <CLOCK_LSEConfig+0x30>
1c002e80:	57fe47ff 	bl	-444(0xffffe44) # 1c002cc4 <CLOCK_WaitForLSEStartUp>
1c002e84:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e88:	50002400 	b	36(0x24) # 1c002eac <CLOCK_LSEConfig+0x50>
1c002e8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e90:	2880018e 	ld.w	$r14,$r12,0
1c002e94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e98:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002e9c:	0014b5cd 	and	$r13,$r14,$r13
1c002ea0:	2980018d 	st.w	$r13,$r12,0
1c002ea4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002ea8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002eac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002eb0:	00150184 	move	$r4,$r12
1c002eb4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002eb8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002ebc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ec0:	4c000020 	jirl	$r0,$r1,0

1c002ec4 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002ec4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002ec8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002ecc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002ed0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002ed4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ed8:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002edc:	2980018d 	st.w	$r13,$r12,0
1c002ee0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ee4:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002ee8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002eec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ef0:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002ef4:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002ef8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002efc:	29803180 	st.w	$r0,$r12,12(0xc)
1c002f00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f04:	29804180 	st.w	$r0,$r12,16(0x10)
1c002f08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f0c:	29805180 	st.w	$r0,$r12,20(0x14)
1c002f10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f14:	29806180 	st.w	$r0,$r12,24(0x18)
1c002f18:	03400000 	andi	$r0,$r0,0x0
1c002f1c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002f20:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002f24:	4c000020 	jirl	$r0,$r1,0

1c002f28 <CLOCK_Init>:
CLOCK_Init():
1c002f28:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002f2c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002f30:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002f34:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002f38:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002f3c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002f40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f44:	2880018e 	ld.w	$r14,$r12,0
1c002f48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f4c:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002f50:	0014b5cd 	and	$r13,$r14,$r13
1c002f54:	2980018d 	st.w	$r13,$r12,0
1c002f58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f5c:	2880018e 	ld.w	$r14,$r12,0
1c002f60:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f64:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002f68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f6c:	001535cd 	or	$r13,$r14,$r13
1c002f70:	2980018d 	st.w	$r13,$r12,0
1c002f74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f78:	2880018e 	ld.w	$r14,$r12,0
1c002f7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f80:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002f84:	0014b5cd 	and	$r13,$r14,$r13
1c002f88:	2980018d 	st.w	$r13,$r12,0
1c002f8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f90:	2880018e 	ld.w	$r14,$r12,0
1c002f94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f98:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002f9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fa0:	001535cd 	or	$r13,$r14,$r13
1c002fa4:	2980018d 	st.w	$r13,$r12,0
1c002fa8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fac:	2880018e 	ld.w	$r14,$r12,0
1c002fb0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fb4:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002fb8:	039ffdad 	ori	$r13,$r13,0x7ff
1c002fbc:	0014b5cd 	and	$r13,$r14,$r13
1c002fc0:	2980018d 	st.w	$r13,$r12,0
1c002fc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fc8:	2880018e 	ld.w	$r14,$r12,0
1c002fcc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fd0:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002fd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fd8:	001535cd 	or	$r13,$r14,$r13
1c002fdc:	2980018d 	st.w	$r13,$r12,0
1c002fe0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fe4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002fe8:	00150184 	move	$r4,$r12
1c002fec:	57fdbfff 	bl	-580(0xffffdbc) # 1c002da8 <CLOCK_HSEConfig>
1c002ff0:	0015008d 	move	$r13,$r4
1c002ff4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002ff8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c003004 <CLOCK_Init+0xdc>
1c002ffc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003000:	50015000 	b	336(0x150) # 1c003150 <CLOCK_Init+0x228>
1c003004:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003008:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c00300c:	00150184 	move	$r4,$r12
1c003010:	57fe4fff 	bl	-436(0xffffe4c) # 1c002e5c <CLOCK_LSEConfig>
1c003014:	0015008d 	move	$r13,$r4
1c003018:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00301c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c003028 <CLOCK_Init+0x100>
1c003020:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003024:	50012c00 	b	300(0x12c) # 1c003150 <CLOCK_Init+0x228>
1c003028:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00302c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003030:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003034:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c003130 <CLOCK_Init+0x208>
1c003038:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00303c:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c003040:	4000a180 	beqz	$r12,160(0xa0) # 1c0030e0 <CLOCK_Init+0x1b8>
1c003044:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003048:	2880018e 	ld.w	$r14,$r12,0
1c00304c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003050:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c003054:	03bffdad 	ori	$r13,$r13,0xfff
1c003058:	0014b5cd 	and	$r13,$r14,$r13
1c00305c:	2980018d 	st.w	$r13,$r12,0
1c003060:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003064:	2880018e 	ld.w	$r14,$r12,0
1c003068:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00306c:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c003070:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003074:	001535cd 	or	$r13,$r14,$r13
1c003078:	2980018d 	st.w	$r13,$r12,0
1c00307c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003080:	0386c18c 	ori	$r12,$r12,0x1b0
1c003084:	2880018c 	ld.w	$r12,$r12,0
1c003088:	40004180 	beqz	$r12,64(0x40) # 1c0030c8 <CLOCK_Init+0x1a0>
1c00308c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003090:	0386c18c 	ori	$r12,$r12,0x1b0
1c003094:	2880018c 	ld.w	$r12,$r12,0
1c003098:	0040898e 	slli.w	$r14,$r12,0x2
1c00309c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0030a0:	002031cd 	div.w	$r13,$r14,$r12
1c0030a4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0030ac <CLOCK_Init+0x184>
1c0030a8:	002a0007 	break	0x7
1c0030ac:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c0030b0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0030b4:	0015018d 	move	$r13,$r12
1c0030b8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030bc:	02be118c 	addi.w	$r12,$r12,-124(0xf84)
1c0030c0:	2980018d 	st.w	$r13,$r12,0
1c0030c4:	50008000 	b	128(0x80) # 1c003144 <CLOCK_Init+0x21c>
1c0030c8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030cc:	02bdd18c 	addi.w	$r12,$r12,-140(0xf74)
1c0030d0:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c0030d4:	038fe1ad 	ori	$r13,$r13,0x3f8
1c0030d8:	2980018d 	st.w	$r13,$r12,0
1c0030dc:	50006800 	b	104(0x68) # 1c003144 <CLOCK_Init+0x21c>
1c0030e0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0030e4:	0386c18c 	ori	$r12,$r12,0x1b0
1c0030e8:	2880018c 	ld.w	$r12,$r12,0
1c0030ec:	40002d80 	beqz	$r12,44(0x2c) # 1c003118 <CLOCK_Init+0x1f0>
1c0030f0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0030f4:	0386c18c 	ori	$r12,$r12,0x1b0
1c0030f8:	2880018d 	ld.w	$r13,$r12,0
1c0030fc:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003100:	001c31ac 	mul.w	$r12,$r13,$r12
1c003104:	0015018d 	move	$r13,$r12
1c003108:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00310c:	02bcd18c 	addi.w	$r12,$r12,-204(0xf34)
1c003110:	2980018d 	st.w	$r13,$r12,0
1c003114:	50003000 	b	48(0x30) # 1c003144 <CLOCK_Init+0x21c>
1c003118:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00311c:	02bc918c 	addi.w	$r12,$r12,-220(0xf24)
1c003120:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003124:	038801ad 	ori	$r13,$r13,0x200
1c003128:	2980018d 	st.w	$r13,$r12,0
1c00312c:	50001800 	b	24(0x18) # 1c003144 <CLOCK_Init+0x21c>
1c003130:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003134:	02bc318c 	addi.w	$r12,$r12,-244(0xf0c)
1c003138:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c00313c:	038801ad 	ori	$r13,$r13,0x200
1c003140:	2980018d 	st.w	$r13,$r12,0
1c003144:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003148:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00314c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003150:	00150184 	move	$r4,$r12
1c003154:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003158:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00315c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003160:	4c000020 	jirl	$r0,$r1,0

1c003164 <SystemClockInit>:
SystemClockInit():
1c003164:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003168:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00316c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003170:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003174:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c003178:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c00317c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c003180:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003184:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003188:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00318c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003190:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003194:	00150184 	move	$r4,$r12
1c003198:	57fd2fff 	bl	-724(0xffffd2c) # 1c002ec4 <CLOCK_StructInit>
1c00319c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0031a0:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0031a4:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0031a8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0031ac:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0031b0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0031b4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0031b8:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c0031bc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0031c0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0031c4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0031c8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0031cc:	00150184 	move	$r4,$r12
1c0031d0:	57fd5bff 	bl	-680(0xffffd58) # 1c002f28 <CLOCK_Init>
1c0031d4:	0015008d 	move	$r13,$r4
1c0031d8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0031dc:	58000dac 	beq	$r13,$r12,12(0xc) # 1c0031e8 <SystemClockInit+0x84>
1c0031e0:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0031e4:	50000800 	b	8(0x8) # 1c0031ec <SystemClockInit+0x88>
1c0031e8:	0015000c 	move	$r12,$r0
1c0031ec:	00150184 	move	$r4,$r12
1c0031f0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0031f4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0031f8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0031fc:	4c000020 	jirl	$r0,$r1,0

1c003200 <DisableInt>:
DisableInt():
1c003200:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003204:	29803076 	st.w	$r22,$r3,12(0xc)
1c003208:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00320c:	0380100c 	ori	$r12,$r0,0x4
1c003210:	04000180 	csrxchg	$r0,$r12,0x0
1c003214:	03400000 	andi	$r0,$r0,0x0
1c003218:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00321c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003220:	4c000020 	jirl	$r0,$r1,0

1c003224 <EnableInt>:
EnableInt():
1c003224:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003228:	29803076 	st.w	$r22,$r3,12(0xc)
1c00322c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003230:	0380100c 	ori	$r12,$r0,0x4
1c003234:	0400018c 	csrxchg	$r12,$r12,0x0
1c003238:	03400000 	andi	$r0,$r0,0x0
1c00323c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003240:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003244:	4c000020 	jirl	$r0,$r1,0

1c003248 <Set_Timer_stop>:
Set_Timer_stop():
1c003248:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00324c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003250:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003254:	04010420 	csrwr	$r0,0x41
1c003258:	03400000 	andi	$r0,$r0,0x0
1c00325c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003260:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003264:	4c000020 	jirl	$r0,$r1,0

1c003268 <Set_Timer_clear>:
Set_Timer_clear():
1c003268:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00326c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003270:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003274:	0380040c 	ori	$r12,$r0,0x1
1c003278:	0401102c 	csrwr	$r12,0x44
1c00327c:	03400000 	andi	$r0,$r0,0x0
1c003280:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003284:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003288:	4c000020 	jirl	$r0,$r1,0

1c00328c <Wake_Set>:
Wake_Set():
1c00328c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003290:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003294:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003298:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00329c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032a0:	40006980 	beqz	$r12,104(0x68) # 1c003308 <Wake_Set+0x7c>
1c0032a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032a8:	0040a18c 	slli.w	$r12,$r12,0x8
1c0032ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0032b0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0032b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032b8:	0380218c 	ori	$r12,$r12,0x8
1c0032bc:	2880018d 	ld.w	$r13,$r12,0
1c0032c0:	14001fec 	lu12i.w	$r12,255(0xff)
1c0032c4:	03bffd8c 	ori	$r12,$r12,0xfff
1c0032c8:	0014b1ac 	and	$r12,$r13,$r12
1c0032cc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0032d0:	001031ac 	add.w	$r12,$r13,$r12
1c0032d4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0032d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032dc:	0380318c 	ori	$r12,$r12,0xc
1c0032e0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0032e4:	2980018d 	st.w	$r13,$r12,0
1c0032e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032ec:	0380118c 	ori	$r12,$r12,0x4
1c0032f0:	2880018d 	ld.w	$r13,$r12,0
1c0032f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032f8:	0380118c 	ori	$r12,$r12,0x4
1c0032fc:	038601ad 	ori	$r13,$r13,0x180
1c003300:	2980018d 	st.w	$r13,$r12,0
1c003304:	50002400 	b	36(0x24) # 1c003328 <Wake_Set+0x9c>
1c003308:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00330c:	0380118c 	ori	$r12,$r12,0x4
1c003310:	2880018e 	ld.w	$r14,$r12,0
1c003314:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003318:	0380118c 	ori	$r12,$r12,0x4
1c00331c:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c003320:	0014b5cd 	and	$r13,$r14,$r13
1c003324:	2980018d 	st.w	$r13,$r12,0
1c003328:	03400000 	andi	$r0,$r0,0x0
1c00332c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003330:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003334:	4c000020 	jirl	$r0,$r1,0

1c003338 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c003338:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00333c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003340:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003344:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00334c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003350:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003354:	0014b1ac 	and	$r12,$r13,$r12
1c003358:	44000d80 	bnez	$r12,12(0xc) # 1c003364 <PMU_GetRstRrc+0x2c>
1c00335c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003360:	50003000 	b	48(0x30) # 1c003390 <PMU_GetRstRrc+0x58>
1c003364:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003368:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00336c:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003370:	0014b1ad 	and	$r13,$r13,$r12
1c003374:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003378:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c003388 <PMU_GetRstRrc+0x50>
1c00337c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003380:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003384:	50000c00 	b	12(0xc) # 1c003390 <PMU_GetRstRrc+0x58>
1c003388:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00338c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003390:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003394:	00150184 	move	$r4,$r12
1c003398:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00339c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033a0:	4c000020 	jirl	$r0,$r1,0

1c0033a4 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c0033a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0033a8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0033ac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0033b0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0033b4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0033b8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0033bc:	0380198c 	ori	$r12,$r12,0x6
1c0033c0:	2a00018c 	ld.bu	$r12,$r12,0
1c0033c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0033c8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0033cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0033d0:	0340058c 	andi	$r12,$r12,0x1
1c0033d4:	40000d80 	beqz	$r12,12(0xc) # 1c0033e0 <PMU_GetBootSpiStatus+0x3c>
1c0033d8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0033dc:	50000800 	b	8(0x8) # 1c0033e4 <PMU_GetBootSpiStatus+0x40>
1c0033e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033e4:	00150184 	move	$r4,$r12
1c0033e8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0033ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033f0:	4c000020 	jirl	$r0,$r1,0

1c0033f4 <ls1x_logo>:
ls1x_logo():
1c0033f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0033f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0033fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c003400:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003404:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003408:	029fc084 	addi.w	$r4,$r4,2032(0x7f0)
1c00340c:	57e78bff 	bl	-6264(0xfffe788) # 1c001b94 <myprintf>
1c003410:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003414:	029fa084 	addi.w	$r4,$r4,2024(0x7e8)
1c003418:	57e77fff 	bl	-6276(0xfffe77c) # 1c001b94 <myprintf>
1c00341c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003420:	02a10084 	addi.w	$r4,$r4,-1984(0x840)
1c003424:	57e773ff 	bl	-6288(0xfffe770) # 1c001b94 <myprintf>
1c003428:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00342c:	02a26084 	addi.w	$r4,$r4,-1896(0x898)
1c003430:	57e767ff 	bl	-6300(0xfffe764) # 1c001b94 <myprintf>
1c003434:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003438:	02a3c084 	addi.w	$r4,$r4,-1808(0x8f0)
1c00343c:	57e75bff 	bl	-6312(0xfffe758) # 1c001b94 <myprintf>
1c003440:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003444:	02a52084 	addi.w	$r4,$r4,-1720(0x948)
1c003448:	57e74fff 	bl	-6324(0xfffe74c) # 1c001b94 <myprintf>
1c00344c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003450:	02a68084 	addi.w	$r4,$r4,-1632(0x9a0)
1c003454:	57e743ff 	bl	-6336(0xfffe740) # 1c001b94 <myprintf>
1c003458:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00345c:	02a7e084 	addi.w	$r4,$r4,-1544(0x9f8)
1c003460:	57e737ff 	bl	-6348(0xfffe734) # 1c001b94 <myprintf>
1c003464:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003468:	02a94084 	addi.w	$r4,$r4,-1456(0xa50)
1c00346c:	57e72bff 	bl	-6360(0xfffe728) # 1c001b94 <myprintf>
1c003470:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003474:	02aaa084 	addi.w	$r4,$r4,-1368(0xaa8)
1c003478:	57e71fff 	bl	-6372(0xfffe71c) # 1c001b94 <myprintf>
1c00347c:	03400000 	andi	$r0,$r0,0x0
1c003480:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003484:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003488:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00348c:	4c000020 	jirl	$r0,$r1,0

1c003490 <get_count>:
get_count():
1c003490:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003494:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003498:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00349c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0034a0:	0000600c 	rdtimel.w	$r12,$r0
1c0034a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0034a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034ac:	00150184 	move	$r4,$r12
1c0034b0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0034b4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0034b8:	4c000020 	jirl	$r0,$r1,0

1c0034bc <open_count>:
open_count():
1c0034bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0034c0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0034c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0034c8:	0380400c 	ori	$r12,$r0,0x10
1c0034cc:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c0034d0:	03400000 	andi	$r0,$r0,0x0
1c0034d4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0034d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0034dc:	4c000020 	jirl	$r0,$r1,0

1c0034e0 <start_count>:
start_count():
1c0034e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0034e4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0034e8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0034ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0034f0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0034f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034f8:	29800180 	st.w	$r0,$r12,0
1c0034fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003500:	29801180 	st.w	$r0,$r12,4(0x4)
1c003504:	57ff8fff 	bl	-116(0xfffff8c) # 1c003490 <get_count>
1c003508:	0015008d 	move	$r13,$r4
1c00350c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003510:	2980018d 	st.w	$r13,$r12,0
1c003514:	03400000 	andi	$r0,$r0,0x0
1c003518:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00351c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003520:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003524:	4c000020 	jirl	$r0,$r1,0

1c003528 <stop_count>:
stop_count():
1c003528:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00352c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003530:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003534:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003538:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00353c:	57ff57ff 	bl	-172(0xfffff54) # 1c003490 <get_count>
1c003540:	0015008d 	move	$r13,$r4
1c003544:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003548:	2980118d 	st.w	$r13,$r12,4(0x4)
1c00354c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003550:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003554:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003558:	2880018c 	ld.w	$r12,$r12,0
1c00355c:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c003578 <stop_count+0x50>
1c003560:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003564:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003568:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00356c:	2880018c 	ld.w	$r12,$r12,0
1c003570:	001131ac 	sub.w	$r12,$r13,$r12
1c003574:	50002800 	b	40(0x28) # 1c00359c <stop_count+0x74>
1c003578:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00357c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003580:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003584:	2880018c 	ld.w	$r12,$r12,0
1c003588:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00358c:	001131ad 	sub.w	$r13,$r13,$r12
1c003590:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003594:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003598:	001031ac 	add.w	$r12,$r13,$r12
1c00359c:	00150184 	move	$r4,$r12
1c0035a0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0035a4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0035a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035ac:	4c000020 	jirl	$r0,$r1,0

1c0035b0 <delay_cycle>:
delay_cycle():
1c0035b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035b4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0035b8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0035bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035c0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035c4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0035c8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0035cc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0035d0:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0035d4:	00150184 	move	$r4,$r12
1c0035d8:	57ff0bff 	bl	-248(0xfffff08) # 1c0034e0 <start_count>
1c0035dc:	50001400 	b	20(0x14) # 1c0035f0 <delay_cycle+0x40>
1c0035e0:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0035e4:	00150184 	move	$r4,$r12
1c0035e8:	57ff43ff 	bl	-192(0xfffff40) # 1c003528 <stop_count>
1c0035ec:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035f0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0035f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035f8:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c0035e0 <delay_cycle+0x30>
1c0035fc:	03400000 	andi	$r0,$r0,0x0
1c003600:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003604:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003608:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00360c:	4c000020 	jirl	$r0,$r1,0

1c003610 <delay_ms>:
delay_ms():
1c003610:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003614:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003618:	29806076 	st.w	$r22,$r3,24(0x18)
1c00361c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003620:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003624:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003628:	1400002c 	lu12i.w	$r12,1(0x1)
1c00362c:	03bd018c 	ori	$r12,$r12,0xf40
1c003630:	001c31ac 	mul.w	$r12,$r13,$r12
1c003634:	00150184 	move	$r4,$r12
1c003638:	57ff7bff 	bl	-136(0xfffff78) # 1c0035b0 <delay_cycle>
1c00363c:	03400000 	andi	$r0,$r0,0x0
1c003640:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003644:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003648:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00364c:	4c000020 	jirl	$r0,$r1,0

1c003650 <memset>:
memset():
1c003650:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003654:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003658:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00365c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003660:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003664:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c003668:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00366c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003670:	50001c00 	b	28(0x1c) # 1c00368c <memset+0x3c>
1c003674:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003678:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00367c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003680:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003684:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003688:	2900018d 	st.b	$r13,$r12,0
1c00368c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003690:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003694:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c003698:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003674 <memset+0x24>
1c00369c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036a0:	00150184 	move	$r4,$r12
1c0036a4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0036a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0036ac:	4c000020 	jirl	$r0,$r1,0

1c0036b0 <strcpy>:
strcpy():
1c0036b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0036b4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0036b8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0036bc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0036c0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0036c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036cc:	03400000 	andi	$r0,$r0,0x0
1c0036d0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0036d4:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c0036d8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0036dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036e0:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c0036e4:	29bf72ce 	st.w	$r14,$r22,-36(0xfdc)
1c0036e8:	280001ad 	ld.b	$r13,$r13,0
1c0036ec:	2900018d 	st.b	$r13,$r12,0
1c0036f0:	2800018c 	ld.b	$r12,$r12,0
1c0036f4:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c0036d0 <strcpy+0x20>
1c0036f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036fc:	00150184 	move	$r4,$r12
1c003700:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003704:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003708:	4c000020 	jirl	$r0,$r1,0

1c00370c <strlen>:
strlen():
1c00370c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003710:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003714:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003718:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00371c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003720:	50001000 	b	16(0x10) # 1c003730 <strlen+0x24>
1c003724:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003728:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00372c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003730:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003734:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003738:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c00373c:	2800018c 	ld.b	$r12,$r12,0
1c003740:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003724 <strlen+0x18>
1c003744:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003748:	00150184 	move	$r4,$r12
1c00374c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003750:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003754:	4c000020 	jirl	$r0,$r1,0

1c003758 <EXTI_Init>:
EXTI_Init():
1c003758:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00375c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003760:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003764:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003768:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c00376c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003770:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c003774:	40013d80 	beqz	$r12,316(0x13c) # 1c0038b0 <EXTI_Init+0x158>
1c003778:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00377c:	0380118c 	ori	$r12,$r12,0x4
1c003780:	2880018e 	ld.w	$r14,$r12,0
1c003784:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003788:	0380118c 	ori	$r12,$r12,0x4
1c00378c:	15fbffed 	lu12i.w	$r13,-8193(0xfdfff)
1c003790:	03bffdad 	ori	$r13,$r13,0xfff
1c003794:	0014b5cd 	and	$r13,$r14,$r13
1c003798:	2980018d 	st.w	$r13,$r12,0
1c00379c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037a0:	0380118c 	ori	$r12,$r12,0x4
1c0037a4:	2880018e 	ld.w	$r14,$r12,0
1c0037a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037ac:	0380118c 	ori	$r12,$r12,0x4
1c0037b0:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c0037b4:	001535cd 	or	$r13,$r14,$r13
1c0037b8:	2980018d 	st.w	$r13,$r12,0
1c0037bc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037c0:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0037c4:	44002980 	bnez	$r12,40(0x28) # 1c0037ec <EXTI_Init+0x94>
1c0037c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037cc:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c0037d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037d4:	2880018c 	ld.w	$r12,$r12,0
1c0037d8:	0014300c 	nor	$r12,$r0,$r12
1c0037dc:	0014b1ad 	and	$r13,$r13,$r12
1c0037e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037e4:	2980218d 	st.w	$r13,$r12,8(0x8)
1c0037e8:	50002000 	b	32(0x20) # 1c003808 <EXTI_Init+0xb0>
1c0037ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037f0:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c0037f4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037f8:	2880018c 	ld.w	$r12,$r12,0
1c0037fc:	001531ad 	or	$r13,$r13,$r12
1c003800:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003804:	2980218d 	st.w	$r13,$r12,8(0x8)
1c003808:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00380c:	2880018d 	ld.w	$r13,$r12,0
1c003810:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003814:	2880018c 	ld.w	$r12,$r12,0
1c003818:	001531ad 	or	$r13,$r13,$r12
1c00381c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003820:	2980018d 	st.w	$r13,$r12,0
1c003824:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003828:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00382c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003830:	2880018c 	ld.w	$r12,$r12,0
1c003834:	0014300c 	nor	$r12,$r0,$r12
1c003838:	0014b1ad 	and	$r13,$r13,$r12
1c00383c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003840:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003844:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003848:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c00384c:	40002580 	beqz	$r12,36(0x24) # 1c003870 <EXTI_Init+0x118>
1c003850:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003854:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003858:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00385c:	2880018c 	ld.w	$r12,$r12,0
1c003860:	001531ad 	or	$r13,$r13,$r12
1c003864:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003868:	2980118d 	st.w	$r13,$r12,4(0x4)
1c00386c:	50002400 	b	36(0x24) # 1c003890 <EXTI_Init+0x138>
1c003870:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003874:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003878:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00387c:	2880018c 	ld.w	$r12,$r12,0
1c003880:	0014300c 	nor	$r12,$r0,$r12
1c003884:	0014b1ad 	and	$r13,$r13,$r12
1c003888:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00388c:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003890:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003894:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003898:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00389c:	2880018c 	ld.w	$r12,$r12,0
1c0038a0:	001531ad 	or	$r13,$r13,$r12
1c0038a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038a8:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0038ac:	50002400 	b	36(0x24) # 1c0038d0 <EXTI_Init+0x178>
1c0038b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038b4:	2880018d 	ld.w	$r13,$r12,0
1c0038b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0038bc:	2880018c 	ld.w	$r12,$r12,0
1c0038c0:	0014300c 	nor	$r12,$r0,$r12
1c0038c4:	0014b1ad 	and	$r13,$r13,$r12
1c0038c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038cc:	2980018d 	st.w	$r13,$r12,0
1c0038d0:	03400000 	andi	$r0,$r0,0x0
1c0038d4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0038d8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0038dc:	4c000020 	jirl	$r0,$r1,0

1c0038e0 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c0038e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0038e4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0038e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0038ec:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0038f0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0038f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038f8:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0038fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003900:	001531ad 	or	$r13,$r13,$r12
1c003904:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003908:	2980318d 	st.w	$r13,$r12,12(0xc)
1c00390c:	03400000 	andi	$r0,$r0,0x0
1c003910:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003914:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003918:	4c000020 	jirl	$r0,$r1,0

1c00391c <WDG_getOddValue>:
WDG_getOddValue():
1c00391c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003920:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003924:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003928:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00392c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003930:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003934:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003938:	50003800 	b	56(0x38) # 1c003970 <WDG_getOddValue+0x54>
1c00393c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003940:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003944:	001731ac 	sll.w	$r12,$r13,$r12
1c003948:	0015018d 	move	$r13,$r12
1c00394c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003950:	0014b1ac 	and	$r12,$r13,$r12
1c003954:	40001180 	beqz	$r12,16(0x10) # 1c003964 <WDG_getOddValue+0x48>
1c003958:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00395c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003960:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003964:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003968:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00396c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003970:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003974:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003978:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c00393c <WDG_getOddValue+0x20>
1c00397c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003980:	0340058c 	andi	$r12,$r12,0x1
1c003984:	44000d80 	bnez	$r12,12(0xc) # 1c003990 <WDG_getOddValue+0x74>
1c003988:	1400010c 	lu12i.w	$r12,8(0x8)
1c00398c:	50000800 	b	8(0x8) # 1c003994 <WDG_getOddValue+0x78>
1c003990:	0015000c 	move	$r12,$r0
1c003994:	00150184 	move	$r4,$r12
1c003998:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00399c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0039a0:	4c000020 	jirl	$r0,$r1,0

1c0039a4 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c0039a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0039a8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0039ac:	29806076 	st.w	$r22,$r3,24(0x18)
1c0039b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0039b4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0039b8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0039bc:	140000ec 	lu12i.w	$r12,7(0x7)
1c0039c0:	03bffd8c 	ori	$r12,$r12,0xfff
1c0039c4:	0014b1ac 	and	$r12,$r13,$r12
1c0039c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0039cc:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0039d0:	57ff4fff 	bl	-180(0xfffff4c) # 1c00391c <WDG_getOddValue>
1c0039d4:	0015008c 	move	$r12,$r4
1c0039d8:	0015018d 	move	$r13,$r12
1c0039dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039e0:	0015358c 	or	$r12,$r12,$r13
1c0039e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0039e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0039ec:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0039f0:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0039f4:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0039f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039fc:	0014300c 	nor	$r12,$r0,$r12
1c003a00:	0040c18c 	slli.w	$r12,$r12,0x10
1c003a04:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a08:	001531ac 	or	$r12,$r13,$r12
1c003a0c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a14:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a18:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c003a1c:	03400000 	andi	$r0,$r0,0x0
1c003a20:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003a24:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003a28:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a2c:	4c000020 	jirl	$r0,$r1,0

1c003a30 <WDG_DogFeed>:
WDG_DogFeed():
1c003a30:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a34:	29803076 	st.w	$r22,$r3,12(0xc)
1c003a38:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003a3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a40:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003a44:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003a48:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003a4c:	03400000 	andi	$r0,$r0,0x0
1c003a50:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003a54:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003a58:	4c000020 	jirl	$r0,$r1,0

1c003a5c <WdgInit>:
WdgInit():
1c003a5c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a60:	29803061 	st.w	$r1,$r3,12(0xc)
1c003a64:	29802076 	st.w	$r22,$r3,8(0x8)
1c003a68:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003a6c:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003a70:	03bffd84 	ori	$r4,$r12,0xfff
1c003a74:	57ff33ff 	bl	-208(0xfffff30) # 1c0039a4 <WDG_SetWatchDog>
1c003a78:	03400000 	andi	$r0,$r0,0x0
1c003a7c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003a80:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003a84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003a88:	4c000020 	jirl	$r0,$r1,0

1c003a8c <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003a8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a90:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003a94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a98:	0015008c 	move	$r12,$r4
1c003a9c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003aa0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003aa4:	0040898c 	slli.w	$r12,$r12,0x2
1c003aa8:	0015018d 	move	$r13,$r12
1c003aac:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003ab0:	0381018c 	ori	$r12,$r12,0x40
1c003ab4:	001031ac 	add.w	$r12,$r13,$r12
1c003ab8:	2880018c 	ld.w	$r12,$r12,0
1c003abc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ac0:	037ffd8c 	andi	$r12,$r12,0xfff
1c003ac4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ac8:	00150184 	move	$r4,$r12
1c003acc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003ad0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ad4:	4c000020 	jirl	$r0,$r1,0

1c003ad8 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003ad8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003adc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003ae0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003ae4:	0015008c 	move	$r12,$r4
1c003ae8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003aec:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003af0:	0040898c 	slli.w	$r12,$r12,0x2
1c003af4:	0015018d 	move	$r13,$r12
1c003af8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003afc:	0382018c 	ori	$r12,$r12,0x80
1c003b00:	001031ac 	add.w	$r12,$r13,$r12
1c003b04:	2880018c 	ld.w	$r12,$r12,0
1c003b08:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b0c:	037ffd8c 	andi	$r12,$r12,0xfff
1c003b10:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b14:	00150184 	move	$r4,$r12
1c003b18:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003b1c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b20:	4c000020 	jirl	$r0,$r1,0

1c003b24 <Printf_KeyChannel>:
Printf_KeyChannel():
1c003b24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003b28:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003b2c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003b30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003b34:	0015008c 	move	$r12,$r4
1c003b38:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003b3c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b40:	50003400 	b	52(0x34) # 1c003b74 <Printf_KeyChannel+0x50>
1c003b44:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003b48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b4c:	001831ac 	sra.w	$r12,$r13,$r12
1c003b50:	0340058c 	andi	$r12,$r12,0x1
1c003b54:	40001580 	beqz	$r12,20(0x14) # 1c003b68 <Printf_KeyChannel+0x44>
1c003b58:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003b5c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b60:	02908084 	addi.w	$r4,$r4,1056(0x420)
1c003b64:	57e033ff 	bl	-8144(0xfffe030) # 1c001b94 <myprintf>
1c003b68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b74:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003b78:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003b7c:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003b44 <Printf_KeyChannel+0x20>
1c003b80:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b84:	02900084 	addi.w	$r4,$r4,1024(0x400)
1c003b88:	57e00fff 	bl	-8180(0xfffe00c) # 1c001b94 <myprintf>
1c003b8c:	03400000 	andi	$r0,$r0,0x0
1c003b90:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003b94:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003b98:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003b9c:	4c000020 	jirl	$r0,$r1,0

1c003ba0 <Printf_KeyType>:
Printf_KeyType():
1c003ba0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ba4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003ba8:	29806076 	st.w	$r22,$r3,24(0x18)
1c003bac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003bb0:	0015008c 	move	$r12,$r4
1c003bb4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003bb8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003bbc:	0340058c 	andi	$r12,$r12,0x1
1c003bc0:	40001180 	beqz	$r12,16(0x10) # 1c003bd0 <Printf_KeyType+0x30>
1c003bc4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003bc8:	028f0084 	addi.w	$r4,$r4,960(0x3c0)
1c003bcc:	57dfcbff 	bl	-8248(0xfffdfc8) # 1c001b94 <myprintf>
1c003bd0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003bd4:	0340098c 	andi	$r12,$r12,0x2
1c003bd8:	40001180 	beqz	$r12,16(0x10) # 1c003be8 <Printf_KeyType+0x48>
1c003bdc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003be0:	028ec084 	addi.w	$r4,$r4,944(0x3b0)
1c003be4:	57dfb3ff 	bl	-8272(0xfffdfb0) # 1c001b94 <myprintf>
1c003be8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003bec:	0340118c 	andi	$r12,$r12,0x4
1c003bf0:	40001180 	beqz	$r12,16(0x10) # 1c003c00 <Printf_KeyType+0x60>
1c003bf4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003bf8:	028e8084 	addi.w	$r4,$r4,928(0x3a0)
1c003bfc:	57df9bff 	bl	-8296(0xfffdf98) # 1c001b94 <myprintf>
1c003c00:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003c04:	0340218c 	andi	$r12,$r12,0x8
1c003c08:	40001180 	beqz	$r12,16(0x10) # 1c003c18 <Printf_KeyType+0x78>
1c003c0c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c10:	028e5084 	addi.w	$r4,$r4,916(0x394)
1c003c14:	57df83ff 	bl	-8320(0xfffdf80) # 1c001b94 <myprintf>
1c003c18:	03400000 	andi	$r0,$r0,0x0
1c003c1c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003c20:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003c24:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003c28:	4c000020 	jirl	$r0,$r1,0

1c003c2c <Printf_KeyVal>:
Printf_KeyVal():
1c003c2c:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003c30:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003c34:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003c38:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003c3c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c40:	5000d800 	b	216(0xd8) # 1c003d18 <Printf_KeyVal+0xec>
1c003c44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c48:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c4c:	00150184 	move	$r4,$r12
1c003c50:	57fe8bff 	bl	-376(0xffffe88) # 1c003ad8 <TOUCH_GetCountValue>
1c003c54:	0015008c 	move	$r12,$r4
1c003c58:	0015018d 	move	$r13,$r12
1c003c5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c60:	0040898c 	slli.w	$r12,$r12,0x2
1c003c64:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003c68:	001031cc 	add.w	$r12,$r14,$r12
1c003c6c:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003c70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c74:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c78:	00150184 	move	$r4,$r12
1c003c7c:	57fe13ff 	bl	-496(0xffffe10) # 1c003a8c <TOUCH_GetBaseVal>
1c003c80:	0015008c 	move	$r12,$r4
1c003c84:	0015018d 	move	$r13,$r12
1c003c88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c8c:	0040898c 	slli.w	$r12,$r12,0x2
1c003c90:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003c94:	001031cc 	add.w	$r12,$r14,$r12
1c003c98:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003c9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ca0:	0040898c 	slli.w	$r12,$r12,0x2
1c003ca4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ca8:	001031ac 	add.w	$r12,$r13,$r12
1c003cac:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003cb0:	40004980 	beqz	$r12,72(0x48) # 1c003cf8 <Printf_KeyVal+0xcc>
1c003cb4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cb8:	0040898c 	slli.w	$r12,$r12,0x2
1c003cbc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003cc0:	001031ac 	add.w	$r12,$r13,$r12
1c003cc4:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003cc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ccc:	0040898c 	slli.w	$r12,$r12,0x2
1c003cd0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003cd4:	001031cc 	add.w	$r12,$r14,$r12
1c003cd8:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003cdc:	001131ad 	sub.w	$r13,$r13,$r12
1c003ce0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ce4:	0040898c 	slli.w	$r12,$r12,0x2
1c003ce8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003cec:	001031cc 	add.w	$r12,$r14,$r12
1c003cf0:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003cf4:	50001800 	b	24(0x18) # 1c003d0c <Printf_KeyVal+0xe0>
1c003cf8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cfc:	0040898c 	slli.w	$r12,$r12,0x2
1c003d00:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d04:	001031ac 	add.w	$r12,$r13,$r12
1c003d08:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003d0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d18:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d1c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003d20:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003c44 <Printf_KeyVal+0x18>
1c003d24:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d28:	028a2084 	addi.w	$r4,$r4,648(0x288)
1c003d2c:	57de6bff 	bl	-8600(0xfffde68) # 1c001b94 <myprintf>
1c003d30:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d34:	028a9084 	addi.w	$r4,$r4,676(0x2a4)
1c003d38:	57de5fff 	bl	-8612(0xfffde5c) # 1c001b94 <myprintf>
1c003d3c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d40:	50003400 	b	52(0x34) # 1c003d74 <Printf_KeyVal+0x148>
1c003d44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d48:	0040898c 	slli.w	$r12,$r12,0x2
1c003d4c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d50:	001031ac 	add.w	$r12,$r13,$r12
1c003d54:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003d58:	00150185 	move	$r5,$r12
1c003d5c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d60:	028a0084 	addi.w	$r4,$r4,640(0x280)
1c003d64:	57de33ff 	bl	-8656(0xfffde30) # 1c001b94 <myprintf>
1c003d68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d74:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d78:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003d7c:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003d44 <Printf_KeyVal+0x118>
1c003d80:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d84:	02899084 	addi.w	$r4,$r4,612(0x264)
1c003d88:	57de0fff 	bl	-8692(0xfffde0c) # 1c001b94 <myprintf>
1c003d8c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d90:	50003400 	b	52(0x34) # 1c003dc4 <Printf_KeyVal+0x198>
1c003d94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d98:	0040898c 	slli.w	$r12,$r12,0x2
1c003d9c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003da0:	001031ac 	add.w	$r12,$r13,$r12
1c003da4:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003da8:	00150185 	move	$r5,$r12
1c003dac:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003db0:	0288c084 	addi.w	$r4,$r4,560(0x230)
1c003db4:	57dde3ff 	bl	-8736(0xfffdde0) # 1c001b94 <myprintf>
1c003db8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dbc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003dc0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003dc4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003dc8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003dcc:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003d94 <Printf_KeyVal+0x168>
1c003dd0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003dd4:	02888084 	addi.w	$r4,$r4,544(0x220)
1c003dd8:	57ddbfff 	bl	-8772(0xfffddbc) # 1c001b94 <myprintf>
1c003ddc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003de0:	50007400 	b	116(0x74) # 1c003e54 <Printf_KeyVal+0x228>
1c003de4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003de8:	0040898c 	slli.w	$r12,$r12,0x2
1c003dec:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003df0:	001031ac 	add.w	$r12,$r13,$r12
1c003df4:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003df8:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003e24 <Printf_KeyVal+0x1f8>
1c003dfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e00:	0040898c 	slli.w	$r12,$r12,0x2
1c003e04:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e08:	001031ac 	add.w	$r12,$r13,$r12
1c003e0c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003e10:	00150185 	move	$r5,$r12
1c003e14:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e18:	0287a084 	addi.w	$r4,$r4,488(0x1e8)
1c003e1c:	57dd7bff 	bl	-8840(0xfffdd78) # 1c001b94 <myprintf>
1c003e20:	50002800 	b	40(0x28) # 1c003e48 <Printf_KeyVal+0x21c>
1c003e24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e28:	0040898c 	slli.w	$r12,$r12,0x2
1c003e2c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e30:	001031ac 	add.w	$r12,$r13,$r12
1c003e34:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003e38:	00150185 	move	$r5,$r12
1c003e3c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e40:	02872084 	addi.w	$r4,$r4,456(0x1c8)
1c003e44:	57dd53ff 	bl	-8880(0xfffdd50) # 1c001b94 <myprintf>
1c003e48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e50:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003e54:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003e58:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003e5c:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003de4 <Printf_KeyVal+0x1b8>
1c003e60:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e64:	02848084 	addi.w	$r4,$r4,288(0x120)
1c003e68:	57dd2fff 	bl	-8916(0xfffdd2c) # 1c001b94 <myprintf>
1c003e6c:	03400000 	andi	$r0,$r0,0x0
1c003e70:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003e74:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003e78:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003e7c:	4c000020 	jirl	$r0,$r1,0

1c003e80 <TIM_Init>:
TIM_Init():
1c003e80:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003e84:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003e88:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003e8c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003e90:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e94:	29800180 	st.w	$r0,$r12,0
1c003e98:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e9c:	0380118c 	ori	$r12,$r12,0x4
1c003ea0:	29800180 	st.w	$r0,$r12,0
1c003ea4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ea8:	0380218c 	ori	$r12,$r12,0x8
1c003eac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003eb0:	288011ad 	ld.w	$r13,$r13,4(0x4)
1c003eb4:	2980018d 	st.w	$r13,$r12,0
1c003eb8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ebc:	0380318c 	ori	$r12,$r12,0xc
1c003ec0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ec4:	288021ad 	ld.w	$r13,$r13,8(0x8)
1c003ec8:	2980018d 	st.w	$r13,$r12,0
1c003ecc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ed0:	2880018e 	ld.w	$r14,$r12,0
1c003ed4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ed8:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c003edc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ee0:	001535cd 	or	$r13,$r14,$r13
1c003ee4:	2980018d 	st.w	$r13,$r12,0
1c003ee8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003eec:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c003ef0:	40002180 	beqz	$r12,32(0x20) # 1c003f10 <TIM_Init+0x90>
1c003ef4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003ef8:	2a00018c 	ld.bu	$r12,$r12,0
1c003efc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003f00:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003f04:	038005ad 	ori	$r13,$r13,0x1
1c003f08:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003f0c:	2900018d 	st.b	$r13,$r12,0
1c003f10:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f14:	2880018e 	ld.w	$r14,$r12,0
1c003f18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f1c:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c003f20:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f24:	001535cd 	or	$r13,$r14,$r13
1c003f28:	2980018d 	st.w	$r13,$r12,0
1c003f2c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f30:	2880018e 	ld.w	$r14,$r12,0
1c003f34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f38:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c003f3c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f40:	001535cd 	or	$r13,$r14,$r13
1c003f44:	2980018d 	st.w	$r13,$r12,0
1c003f48:	03400000 	andi	$r0,$r0,0x0
1c003f4c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003f50:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003f54:	4c000020 	jirl	$r0,$r1,0

1c003f58 <TIM_StructInit>:
TIM_StructInit():
1c003f58:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003f5c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003f60:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003f64:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003f68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f6c:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003f70:	038801ad 	ori	$r13,$r13,0x200
1c003f74:	2980018d 	st.w	$r13,$r12,0
1c003f78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f7c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003f80:	2980618d 	st.w	$r13,$r12,24(0x18)
1c003f84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f88:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c003f8c:	2980518d 	st.w	$r13,$r12,20(0x14)
1c003f90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f94:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003f98:	2980418d 	st.w	$r13,$r12,16(0x10)
1c003f9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fa0:	028c7c0d 	addi.w	$r13,$r0,799(0x31f)
1c003fa4:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003fa8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fac:	028c800d 	addi.w	$r13,$r0,800(0x320)
1c003fb0:	2980218d 	st.w	$r13,$r12,8(0x8)
1c003fb4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fb8:	29803180 	st.w	$r0,$r12,12(0xc)
1c003fbc:	03400000 	andi	$r0,$r0,0x0
1c003fc0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003fc4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003fc8:	4c000020 	jirl	$r0,$r1,0

1c003fcc <Timer_Init>:
Timer_Init():
1c003fcc:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c003fd0:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c003fd4:	2980e076 	st.w	$r22,$r3,56(0x38)
1c003fd8:	02810076 	addi.w	$r22,$r3,64(0x40)
1c003fdc:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c003fe0:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003fe4:	00150184 	move	$r4,$r12
1c003fe8:	57ff73ff 	bl	-144(0xfffff70) # 1c003f58 <TIM_StructInit>
1c003fec:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c003ff0:	00408d8c 	slli.w	$r12,$r12,0x3
1c003ff4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003ff8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003ffc:	00150184 	move	$r4,$r12
1c004000:	57fe83ff 	bl	-384(0xffffe80) # 1c003e80 <TIM_Init>
1c004004:	03400000 	andi	$r0,$r0,0x0
1c004008:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00400c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c004010:	02810063 	addi.w	$r3,$r3,64(0x40)
1c004014:	4c000020 	jirl	$r0,$r1,0

1c004018 <TIM_Cmd>:
TIM_Cmd():
1c004018:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00401c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004020:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004024:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004028:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00402c:	40001d80 	beqz	$r12,28(0x1c) # 1c004048 <TIM_Cmd+0x30>
1c004030:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004034:	2880018d 	ld.w	$r13,$r12,0
1c004038:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00403c:	038005ad 	ori	$r13,$r13,0x1
1c004040:	2980018d 	st.w	$r13,$r12,0
1c004044:	50001800 	b	24(0x18) # 1c00405c <TIM_Cmd+0x44>
1c004048:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00404c:	2880018d 	ld.w	$r13,$r12,0
1c004050:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004054:	0343f9ad 	andi	$r13,$r13,0xfe
1c004058:	2980018d 	st.w	$r13,$r12,0
1c00405c:	03400000 	andi	$r0,$r0,0x0
1c004060:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004064:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004068:	4c000020 	jirl	$r0,$r1,0

1c00406c <TIM_GetITStatus>:
TIM_GetITStatus():
1c00406c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004070:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c004074:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004078:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00407c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004080:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004084:	2880018d 	ld.w	$r13,$r12,0
1c004088:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00408c:	0014b1ac 	and	$r12,$r13,$r12
1c004090:	40001180 	beqz	$r12,16(0x10) # 1c0040a0 <TIM_GetITStatus+0x34>
1c004094:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004098:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00409c:	50000800 	b	8(0x8) # 1c0040a4 <TIM_GetITStatus+0x38>
1c0040a0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0040a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0040a8:	00150184 	move	$r4,$r12
1c0040ac:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0040b0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0040b4:	4c000020 	jirl	$r0,$r1,0

1c0040b8 <TIM_ClearIT>:
TIM_ClearIT():
1c0040b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0040bc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0040c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0040c4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0040c8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040cc:	2880018e 	ld.w	$r14,$r12,0
1c0040d0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040d4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0040d8:	001535cd 	or	$r13,$r14,$r13
1c0040dc:	2980018d 	st.w	$r13,$r12,0
1c0040e0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0040e4:	03800d8c 	ori	$r12,$r12,0x3
1c0040e8:	2a00018c 	ld.bu	$r12,$r12,0
1c0040ec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0040f0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0040f4:	03800d8c 	ori	$r12,$r12,0x3
1c0040f8:	038005ad 	ori	$r13,$r13,0x1
1c0040fc:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c004100:	2900018d 	st.b	$r13,$r12,0
1c004104:	03400000 	andi	$r0,$r0,0x0
1c004108:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00410c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004110:	4c000020 	jirl	$r0,$r1,0

1c004114 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c004114:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004118:	29803061 	st.w	$r1,$r3,12(0xc)
1c00411c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004120:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004124:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004128:	028170c6 	addi.w	$r6,$r6,92(0x5c)
1c00412c:	02805405 	addi.w	$r5,$r0,21(0x15)
1c004130:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004134:	02bb7084 	addi.w	$r4,$r4,-292(0xedc)
1c004138:	57da5fff 	bl	-9636(0xfffda5c) # 1c001b94 <myprintf>
1c00413c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004140:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004144:	03808184 	ori	$r4,$r12,0x20
1c004148:	57f79bff 	bl	-2152(0xffff798) # 1c0038e0 <EXTI_ClearITPendingBit>
1c00414c:	03400000 	andi	$r0,$r0,0x0
1c004150:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004154:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004158:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00415c:	4c000020 	jirl	$r0,$r1,0

1c004160 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c004160:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004164:	29803061 	st.w	$r1,$r3,12(0xc)
1c004168:	29802076 	st.w	$r22,$r3,8(0x8)
1c00416c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004170:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004174:	0280a0c6 	addi.w	$r6,$r6,40(0x28)
1c004178:	02806805 	addi.w	$r5,$r0,26(0x1a)
1c00417c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004180:	02ba4084 	addi.w	$r4,$r4,-368(0xe90)
1c004184:	57da13ff 	bl	-9712(0xfffda10) # 1c001b94 <myprintf>
1c004188:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00418c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004190:	03808184 	ori	$r4,$r12,0x20
1c004194:	57f74fff 	bl	-2228(0xffff74c) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004198:	03400000 	andi	$r0,$r0,0x0
1c00419c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041a8:	4c000020 	jirl	$r0,$r1,0

1c0041ac <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c0041ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041bc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0041c0:	02bfd0c6 	addi.w	$r6,$r6,-12(0xff4)
1c0041c4:	02807c05 	addi.w	$r5,$r0,31(0x1f)
1c0041c8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0041cc:	02b91084 	addi.w	$r4,$r4,-444(0xe44)
1c0041d0:	57d9c7ff 	bl	-9788(0xfffd9c4) # 1c001b94 <myprintf>
1c0041d4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0041d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041dc:	03808184 	ori	$r4,$r12,0x20
1c0041e0:	57f703ff 	bl	-2304(0xffff700) # 1c0038e0 <EXTI_ClearITPendingBit>
1c0041e4:	03400000 	andi	$r0,$r0,0x0
1c0041e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041f4:	4c000020 	jirl	$r0,$r1,0

1c0041f8 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c0041f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004200:	29802076 	st.w	$r22,$r3,8(0x8)
1c004204:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004208:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00420c:	02bf00c6 	addi.w	$r6,$r6,-64(0xfc0)
1c004210:	02809005 	addi.w	$r5,$r0,36(0x24)
1c004214:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004218:	02b7e084 	addi.w	$r4,$r4,-520(0xdf8)
1c00421c:	57d97bff 	bl	-9864(0xfffd978) # 1c001b94 <myprintf>
1c004220:	02802005 	addi.w	$r5,$r0,8(0x8)
1c004224:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004228:	03808184 	ori	$r4,$r12,0x20
1c00422c:	57f6b7ff 	bl	-2380(0xffff6b4) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004230:	03400000 	andi	$r0,$r0,0x0
1c004234:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004238:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00423c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004240:	4c000020 	jirl	$r0,$r1,0

1c004244 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c004244:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004248:	29803061 	st.w	$r1,$r3,12(0xc)
1c00424c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004250:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004254:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004258:	02be30c6 	addi.w	$r6,$r6,-116(0xf8c)
1c00425c:	0280a405 	addi.w	$r5,$r0,41(0x29)
1c004260:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004264:	02b6b084 	addi.w	$r4,$r4,-596(0xdac)
1c004268:	57d92fff 	bl	-9940(0xfffd92c) # 1c001b94 <myprintf>
1c00426c:	02804005 	addi.w	$r5,$r0,16(0x10)
1c004270:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004274:	03808184 	ori	$r4,$r12,0x20
1c004278:	57f66bff 	bl	-2456(0xffff668) # 1c0038e0 <EXTI_ClearITPendingBit>
1c00427c:	03400000 	andi	$r0,$r0,0x0
1c004280:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004284:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004288:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00428c:	4c000020 	jirl	$r0,$r1,0

1c004290 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c004290:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004294:	29803061 	st.w	$r1,$r3,12(0xc)
1c004298:	29802076 	st.w	$r22,$r3,8(0x8)
1c00429c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042a0:	00150004 	move	$r4,$r0
1c0042a4:	57fd77ff 	bl	-652(0xffffd74) # 1c004018 <TIM_Cmd>
1c0042a8:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0042ac:	28b6018c 	ld.w	$r12,$r12,-640(0xd80)
1c0042b0:	2a40018c 	ld.hu	$r12,$r12,0
1c0042b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0042b8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0042bc:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0042c0:	28b5b18c 	ld.w	$r12,$r12,-660(0xd6c)
1c0042c4:	2940018d 	st.h	$r13,$r12,0
1c0042c8:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0042cc:	28b5b18c 	ld.w	$r12,$r12,-660(0xd6c)
1c0042d0:	2880018d 	ld.w	$r13,$r12,0
1c0042d4:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0042d8:	28b5218c 	ld.w	$r12,$r12,-696(0xd48)
1c0042dc:	2980018d 	st.w	$r13,$r12,0
1c0042e0:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0042e4:	28b4f18c 	ld.w	$r12,$r12,-708(0xd3c)
1c0042e8:	2880018d 	ld.w	$r13,$r12,0
1c0042ec:	0280440c 	addi.w	$r12,$r0,17(0x11)
1c0042f0:	001c31ae 	mul.w	$r14,$r13,$r12
1c0042f4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0042f8:	002131cd 	div.wu	$r13,$r14,$r12
1c0042fc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004304 <exti_gpioa5_irq_handler+0x74>
1c004300:	002a0007 	break	0x7
1c004304:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004308:	28b4318c 	ld.w	$r12,$r12,-756(0xd0c)
1c00430c:	2980018d 	st.w	$r13,$r12,0
1c004310:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004314:	28b4418c 	ld.w	$r12,$r12,-752(0xd10)
1c004318:	2880018d 	ld.w	$r13,$r12,0
1c00431c:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004320:	28b3d18c 	ld.w	$r12,$r12,-780(0xcf4)
1c004324:	2880018c 	ld.w	$r12,$r12,0
1c004328:	001031ad 	add.w	$r13,$r13,$r12
1c00432c:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004330:	28b3d18c 	ld.w	$r12,$r12,-780(0xcf4)
1c004334:	2980018d 	st.w	$r13,$r12,0
1c004338:	02808005 	addi.w	$r5,$r0,32(0x20)
1c00433c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004340:	03808184 	ori	$r4,$r12,0x20
1c004344:	57f59fff 	bl	-2660(0xffff59c) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004348:	03400000 	andi	$r0,$r0,0x0
1c00434c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004350:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004354:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004358:	4c000020 	jirl	$r0,$r1,0

1c00435c <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c00435c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004360:	29803061 	st.w	$r1,$r3,12(0xc)
1c004364:	29802076 	st.w	$r22,$r3,8(0x8)
1c004368:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00436c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004370:	02ba30c6 	addi.w	$r6,$r6,-372(0xe8c)
1c004374:	0280e405 	addi.w	$r5,$r0,57(0x39)
1c004378:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00437c:	02b25084 	addi.w	$r4,$r4,-876(0xc94)
1c004380:	57d817ff 	bl	-10220(0xfffd814) # 1c001b94 <myprintf>
1c004384:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004388:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00438c:	03808184 	ori	$r4,$r12,0x20
1c004390:	57f553ff 	bl	-2736(0xffff550) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004394:	03400000 	andi	$r0,$r0,0x0
1c004398:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00439c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043a4:	4c000020 	jirl	$r0,$r1,0

1c0043a8 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c0043a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043b8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043bc:	02b960c6 	addi.w	$r6,$r6,-424(0xe58)
1c0043c0:	0280f805 	addi.w	$r5,$r0,62(0x3e)
1c0043c4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043c8:	02b12084 	addi.w	$r4,$r4,-952(0xc48)
1c0043cc:	57d7cbff 	bl	-10296(0xfffd7c8) # 1c001b94 <myprintf>
1c0043d0:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0043d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043d8:	03808184 	ori	$r4,$r12,0x20
1c0043dc:	57f507ff 	bl	-2812(0xffff504) # 1c0038e0 <EXTI_ClearITPendingBit>
1c0043e0:	03400000 	andi	$r0,$r0,0x0
1c0043e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043f0:	4c000020 	jirl	$r0,$r1,0

1c0043f4 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0043f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004400:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004404:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004408:	02b890c6 	addi.w	$r6,$r6,-476(0xe24)
1c00440c:	02810c05 	addi.w	$r5,$r0,67(0x43)
1c004410:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004414:	02aff084 	addi.w	$r4,$r4,-1028(0xbfc)
1c004418:	57d77fff 	bl	-10372(0xfffd77c) # 1c001b94 <myprintf>
1c00441c:	02840005 	addi.w	$r5,$r0,256(0x100)
1c004420:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004424:	03808184 	ori	$r4,$r12,0x20
1c004428:	57f4bbff 	bl	-2888(0xffff4b8) # 1c0038e0 <EXTI_ClearITPendingBit>
1c00442c:	03400000 	andi	$r0,$r0,0x0
1c004430:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004434:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004438:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00443c:	4c000020 	jirl	$r0,$r1,0

1c004440 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c004440:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004444:	29803061 	st.w	$r1,$r3,12(0xc)
1c004448:	29802076 	st.w	$r22,$r3,8(0x8)
1c00444c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004450:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004454:	02b7c0c6 	addi.w	$r6,$r6,-528(0xdf0)
1c004458:	02812005 	addi.w	$r5,$r0,72(0x48)
1c00445c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004460:	02aec084 	addi.w	$r4,$r4,-1104(0xbb0)
1c004464:	57d733ff 	bl	-10448(0xfffd730) # 1c001b94 <myprintf>
1c004468:	02880005 	addi.w	$r5,$r0,512(0x200)
1c00446c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004470:	03808184 	ori	$r4,$r12,0x20
1c004474:	57f46fff 	bl	-2964(0xffff46c) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004478:	03400000 	andi	$r0,$r0,0x0
1c00447c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004480:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004484:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004488:	4c000020 	jirl	$r0,$r1,0

1c00448c <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c00448c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004490:	29803061 	st.w	$r1,$r3,12(0xc)
1c004494:	29802076 	st.w	$r22,$r3,8(0x8)
1c004498:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00449c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044a0:	02b6f0c6 	addi.w	$r6,$r6,-580(0xdbc)
1c0044a4:	02813405 	addi.w	$r5,$r0,77(0x4d)
1c0044a8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0044ac:	02ad9084 	addi.w	$r4,$r4,-1180(0xb64)
1c0044b0:	57d6e7ff 	bl	-10524(0xfffd6e4) # 1c001b94 <myprintf>
1c0044b4:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c0044b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044bc:	03808184 	ori	$r4,$r12,0x20
1c0044c0:	57f423ff 	bl	-3040(0xffff420) # 1c0038e0 <EXTI_ClearITPendingBit>
1c0044c4:	03400000 	andi	$r0,$r0,0x0
1c0044c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044d4:	4c000020 	jirl	$r0,$r1,0

1c0044d8 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c0044d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044e8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044ec:	02b620c6 	addi.w	$r6,$r6,-632(0xd88)
1c0044f0:	02814805 	addi.w	$r5,$r0,82(0x52)
1c0044f4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0044f8:	02ac6084 	addi.w	$r4,$r4,-1256(0xb18)
1c0044fc:	57d69bff 	bl	-10600(0xfffd698) # 1c001b94 <myprintf>
1c004500:	03a00005 	ori	$r5,$r0,0x800
1c004504:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004508:	03808184 	ori	$r4,$r12,0x20
1c00450c:	57f3d7ff 	bl	-3116(0xffff3d4) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004510:	03400000 	andi	$r0,$r0,0x0
1c004514:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004518:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00451c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004520:	4c000020 	jirl	$r0,$r1,0

1c004524 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c004524:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004528:	29803061 	st.w	$r1,$r3,12(0xc)
1c00452c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004530:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004534:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004538:	02b550c6 	addi.w	$r6,$r6,-684(0xd54)
1c00453c:	02815c05 	addi.w	$r5,$r0,87(0x57)
1c004540:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004544:	02ab3084 	addi.w	$r4,$r4,-1332(0xacc)
1c004548:	57d64fff 	bl	-10676(0xfffd64c) # 1c001b94 <myprintf>
1c00454c:	14000025 	lu12i.w	$r5,1(0x1)
1c004550:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004554:	03808184 	ori	$r4,$r12,0x20
1c004558:	57f38bff 	bl	-3192(0xffff388) # 1c0038e0 <EXTI_ClearITPendingBit>
1c00455c:	03400000 	andi	$r0,$r0,0x0
1c004560:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004564:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004568:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00456c:	4c000020 	jirl	$r0,$r1,0

1c004570 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c004570:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004574:	29803061 	st.w	$r1,$r3,12(0xc)
1c004578:	29802076 	st.w	$r22,$r3,8(0x8)
1c00457c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004580:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004584:	02b480c6 	addi.w	$r6,$r6,-736(0xd20)
1c004588:	02817005 	addi.w	$r5,$r0,92(0x5c)
1c00458c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004590:	02aa0084 	addi.w	$r4,$r4,-1408(0xa80)
1c004594:	57d603ff 	bl	-10752(0xfffd600) # 1c001b94 <myprintf>
1c004598:	14000045 	lu12i.w	$r5,2(0x2)
1c00459c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045a0:	03808184 	ori	$r4,$r12,0x20
1c0045a4:	57f33fff 	bl	-3268(0xffff33c) # 1c0038e0 <EXTI_ClearITPendingBit>
1c0045a8:	03400000 	andi	$r0,$r0,0x0
1c0045ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045b8:	4c000020 	jirl	$r0,$r1,0

1c0045bc <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c0045bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045cc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045d0:	02b3b0c6 	addi.w	$r6,$r6,-788(0xcec)
1c0045d4:	02818405 	addi.w	$r5,$r0,97(0x61)
1c0045d8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045dc:	02a8d084 	addi.w	$r4,$r4,-1484(0xa34)
1c0045e0:	57d5b7ff 	bl	-10828(0xfffd5b4) # 1c001b94 <myprintf>
1c0045e4:	14000085 	lu12i.w	$r5,4(0x4)
1c0045e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045ec:	03808184 	ori	$r4,$r12,0x20
1c0045f0:	57f2f3ff 	bl	-3344(0xffff2f0) # 1c0038e0 <EXTI_ClearITPendingBit>
1c0045f4:	03400000 	andi	$r0,$r0,0x0
1c0045f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004600:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004604:	4c000020 	jirl	$r0,$r1,0

1c004608 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c004608:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00460c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004610:	29802076 	st.w	$r22,$r3,8(0x8)
1c004614:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004618:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00461c:	02b2e0c6 	addi.w	$r6,$r6,-840(0xcb8)
1c004620:	02819805 	addi.w	$r5,$r0,102(0x66)
1c004624:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004628:	02a7a084 	addi.w	$r4,$r4,-1560(0x9e8)
1c00462c:	57d56bff 	bl	-10904(0xfffd568) # 1c001b94 <myprintf>
1c004630:	14000105 	lu12i.w	$r5,8(0x8)
1c004634:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004638:	03808184 	ori	$r4,$r12,0x20
1c00463c:	57f2a7ff 	bl	-3420(0xffff2a4) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004640:	03400000 	andi	$r0,$r0,0x0
1c004644:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004648:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00464c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004650:	4c000020 	jirl	$r0,$r1,0

1c004654 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004654:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004658:	29803061 	st.w	$r1,$r3,12(0xc)
1c00465c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004660:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004664:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004668:	02b210c6 	addi.w	$r6,$r6,-892(0xc84)
1c00466c:	0281b005 	addi.w	$r5,$r0,108(0x6c)
1c004670:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004674:	02a67084 	addi.w	$r4,$r4,-1636(0x99c)
1c004678:	57d51fff 	bl	-10980(0xfffd51c) # 1c001b94 <myprintf>
1c00467c:	14000205 	lu12i.w	$r5,16(0x10)
1c004680:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004684:	03808184 	ori	$r4,$r12,0x20
1c004688:	57f25bff 	bl	-3496(0xffff258) # 1c0038e0 <EXTI_ClearITPendingBit>
1c00468c:	03400000 	andi	$r0,$r0,0x0
1c004690:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004694:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004698:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00469c:	4c000020 	jirl	$r0,$r1,0

1c0046a0 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c0046a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046b0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0046b4:	02b140c6 	addi.w	$r6,$r6,-944(0xc50)
1c0046b8:	0281c405 	addi.w	$r5,$r0,113(0x71)
1c0046bc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046c0:	02a54084 	addi.w	$r4,$r4,-1712(0x950)
1c0046c4:	57d4d3ff 	bl	-11056(0xfffd4d0) # 1c001b94 <myprintf>
1c0046c8:	14000405 	lu12i.w	$r5,32(0x20)
1c0046cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046d0:	03808184 	ori	$r4,$r12,0x20
1c0046d4:	57f20fff 	bl	-3572(0xffff20c) # 1c0038e0 <EXTI_ClearITPendingBit>
1c0046d8:	03400000 	andi	$r0,$r0,0x0
1c0046dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046e8:	4c000020 	jirl	$r0,$r1,0

1c0046ec <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c0046ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046fc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004700:	02b070c6 	addi.w	$r6,$r6,-996(0xc1c)
1c004704:	0281d805 	addi.w	$r5,$r0,118(0x76)
1c004708:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00470c:	02a41084 	addi.w	$r4,$r4,-1788(0x904)
1c004710:	57d487ff 	bl	-11132(0xfffd484) # 1c001b94 <myprintf>
1c004714:	14000805 	lu12i.w	$r5,64(0x40)
1c004718:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00471c:	03808184 	ori	$r4,$r12,0x20
1c004720:	57f1c3ff 	bl	-3648(0xffff1c0) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004724:	03400000 	andi	$r0,$r0,0x0
1c004728:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00472c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004730:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004734:	4c000020 	jirl	$r0,$r1,0

1c004738 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004738:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00473c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004740:	29802076 	st.w	$r22,$r3,8(0x8)
1c004744:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004748:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00474c:	02afa0c6 	addi.w	$r6,$r6,-1048(0xbe8)
1c004750:	0281ec05 	addi.w	$r5,$r0,123(0x7b)
1c004754:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004758:	02a2e084 	addi.w	$r4,$r4,-1864(0x8b8)
1c00475c:	57d43bff 	bl	-11208(0xfffd438) # 1c001b94 <myprintf>
1c004760:	14001005 	lu12i.w	$r5,128(0x80)
1c004764:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004768:	03808184 	ori	$r4,$r12,0x20
1c00476c:	57f177ff 	bl	-3724(0xffff174) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004770:	03400000 	andi	$r0,$r0,0x0
1c004774:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004778:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00477c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004780:	4c000020 	jirl	$r0,$r1,0

1c004784 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c004784:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004788:	29803061 	st.w	$r1,$r3,12(0xc)
1c00478c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004790:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004794:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004798:	02aed0c6 	addi.w	$r6,$r6,-1100(0xbb4)
1c00479c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0047a0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0047a4:	02a1b084 	addi.w	$r4,$r4,-1940(0x86c)
1c0047a8:	57d3efff 	bl	-11284(0xfffd3ec) # 1c001b94 <myprintf>
1c0047ac:	14002005 	lu12i.w	$r5,256(0x100)
1c0047b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047b4:	03808184 	ori	$r4,$r12,0x20
1c0047b8:	57f12bff 	bl	-3800(0xffff128) # 1c0038e0 <EXTI_ClearITPendingBit>
1c0047bc:	03400000 	andi	$r0,$r0,0x0
1c0047c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047cc:	4c000020 	jirl	$r0,$r1,0

1c0047d0 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c0047d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047d8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047e0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047e4:	02ae00c6 	addi.w	$r6,$r6,-1152(0xb80)
1c0047e8:	02821405 	addi.w	$r5,$r0,133(0x85)
1c0047ec:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0047f0:	02a08084 	addi.w	$r4,$r4,-2016(0x820)
1c0047f4:	57d3a3ff 	bl	-11360(0xfffd3a0) # 1c001b94 <myprintf>
1c0047f8:	14004005 	lu12i.w	$r5,512(0x200)
1c0047fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004800:	03808184 	ori	$r4,$r12,0x20
1c004804:	57f0dfff 	bl	-3876(0xffff0dc) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004808:	03400000 	andi	$r0,$r0,0x0
1c00480c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004810:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004814:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004818:	4c000020 	jirl	$r0,$r1,0

1c00481c <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c00481c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004820:	29803061 	st.w	$r1,$r3,12(0xc)
1c004824:	29802076 	st.w	$r22,$r3,8(0x8)
1c004828:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00482c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004830:	02ad30c6 	addi.w	$r6,$r6,-1204(0xb4c)
1c004834:	02822805 	addi.w	$r5,$r0,138(0x8a)
1c004838:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00483c:	029f5084 	addi.w	$r4,$r4,2004(0x7d4)
1c004840:	57d357ff 	bl	-11436(0xfffd354) # 1c001b94 <myprintf>
1c004844:	14008005 	lu12i.w	$r5,1024(0x400)
1c004848:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00484c:	03808184 	ori	$r4,$r12,0x20
1c004850:	57f093ff 	bl	-3952(0xffff090) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004854:	03400000 	andi	$r0,$r0,0x0
1c004858:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00485c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004860:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004864:	4c000020 	jirl	$r0,$r1,0

1c004868 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c004868:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00486c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004870:	29802076 	st.w	$r22,$r3,8(0x8)
1c004874:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004878:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00487c:	02ac60c6 	addi.w	$r6,$r6,-1256(0xb18)
1c004880:	02823c05 	addi.w	$r5,$r0,143(0x8f)
1c004884:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004888:	029e2084 	addi.w	$r4,$r4,1928(0x788)
1c00488c:	57d30bff 	bl	-11512(0xfffd308) # 1c001b94 <myprintf>
1c004890:	14010005 	lu12i.w	$r5,2048(0x800)
1c004894:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004898:	03808184 	ori	$r4,$r12,0x20
1c00489c:	57f047ff 	bl	-4028(0xffff044) # 1c0038e0 <EXTI_ClearITPendingBit>
1c0048a0:	03400000 	andi	$r0,$r0,0x0
1c0048a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048b0:	4c000020 	jirl	$r0,$r1,0

1c0048b4 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c0048b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048c4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0048c8:	02ab90c6 	addi.w	$r6,$r6,-1308(0xae4)
1c0048cc:	02825005 	addi.w	$r5,$r0,148(0x94)
1c0048d0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0048d4:	029cf084 	addi.w	$r4,$r4,1852(0x73c)
1c0048d8:	57d2bfff 	bl	-11588(0xfffd2bc) # 1c001b94 <myprintf>
1c0048dc:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0048e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048e4:	03808184 	ori	$r4,$r12,0x20
1c0048e8:	57effbff 	bl	-4104(0xfffeff8) # 1c0038e0 <EXTI_ClearITPendingBit>
1c0048ec:	03400000 	andi	$r0,$r0,0x0
1c0048f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048fc:	4c000020 	jirl	$r0,$r1,0

1c004900 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c004900:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004904:	29803061 	st.w	$r1,$r3,12(0xc)
1c004908:	29802076 	st.w	$r22,$r3,8(0x8)
1c00490c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004910:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004914:	02aac0c6 	addi.w	$r6,$r6,-1360(0xab0)
1c004918:	02826405 	addi.w	$r5,$r0,153(0x99)
1c00491c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004920:	029bc084 	addi.w	$r4,$r4,1776(0x6f0)
1c004924:	57d273ff 	bl	-11664(0xfffd270) # 1c001b94 <myprintf>
1c004928:	14040005 	lu12i.w	$r5,8192(0x2000)
1c00492c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004930:	03808184 	ori	$r4,$r12,0x20
1c004934:	57efafff 	bl	-4180(0xfffefac) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004938:	03400000 	andi	$r0,$r0,0x0
1c00493c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004940:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004944:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004948:	4c000020 	jirl	$r0,$r1,0

1c00494c <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c00494c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004950:	29803061 	st.w	$r1,$r3,12(0xc)
1c004954:	29802076 	st.w	$r22,$r3,8(0x8)
1c004958:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00495c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004960:	02a9f0c6 	addi.w	$r6,$r6,-1412(0xa7c)
1c004964:	02827805 	addi.w	$r5,$r0,158(0x9e)
1c004968:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00496c:	029a9084 	addi.w	$r4,$r4,1700(0x6a4)
1c004970:	57d227ff 	bl	-11740(0xfffd224) # 1c001b94 <myprintf>
1c004974:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004978:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00497c:	03808184 	ori	$r4,$r12,0x20
1c004980:	57ef63ff 	bl	-4256(0xfffef60) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004984:	03400000 	andi	$r0,$r0,0x0
1c004988:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00498c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004990:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004994:	4c000020 	jirl	$r0,$r1,0

1c004998 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004998:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00499c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049a8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0049ac:	02a920c6 	addi.w	$r6,$r6,-1464(0xa48)
1c0049b0:	02828c05 	addi.w	$r5,$r0,163(0xa3)
1c0049b4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0049b8:	02996084 	addi.w	$r4,$r4,1624(0x658)
1c0049bc:	57d1dbff 	bl	-11816(0xfffd1d8) # 1c001b94 <myprintf>
1c0049c0:	14100005 	lu12i.w	$r5,32768(0x8000)
1c0049c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049c8:	03808184 	ori	$r4,$r12,0x20
1c0049cc:	57ef17ff 	bl	-4332(0xfffef14) # 1c0038e0 <EXTI_ClearITPendingBit>
1c0049d0:	03400000 	andi	$r0,$r0,0x0
1c0049d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049e0:	4c000020 	jirl	$r0,$r1,0

1c0049e4 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c0049e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049f4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0049f8:	02a850c6 	addi.w	$r6,$r6,-1516(0xa14)
1c0049fc:	0282a005 	addi.w	$r5,$r0,168(0xa8)
1c004a00:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004a04:	02983084 	addi.w	$r4,$r4,1548(0x60c)
1c004a08:	57d18fff 	bl	-11892(0xfffd18c) # 1c001b94 <myprintf>
1c004a0c:	14200005 	lu12i.w	$r5,65536(0x10000)
1c004a10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a14:	03808184 	ori	$r4,$r12,0x20
1c004a18:	57eecbff 	bl	-4408(0xfffeec8) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004a1c:	03400000 	andi	$r0,$r0,0x0
1c004a20:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a24:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a28:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a2c:	4c000020 	jirl	$r0,$r1,0

1c004a30 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004a30:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a34:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a38:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a3c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a40:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004a44:	02a780c6 	addi.w	$r6,$r6,-1568(0x9e0)
1c004a48:	0282b805 	addi.w	$r5,$r0,174(0xae)
1c004a4c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004a50:	02970084 	addi.w	$r4,$r4,1472(0x5c0)
1c004a54:	57d143ff 	bl	-11968(0xfffd140) # 1c001b94 <myprintf>
1c004a58:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004a5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a60:	03808184 	ori	$r4,$r12,0x20
1c004a64:	57ee7fff 	bl	-4484(0xfffee7c) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004a68:	03400000 	andi	$r0,$r0,0x0
1c004a6c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a70:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a74:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a78:	4c000020 	jirl	$r0,$r1,0

1c004a7c <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004a7c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a80:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a84:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a88:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a8c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004a90:	02a6b0c6 	addi.w	$r6,$r6,-1620(0x9ac)
1c004a94:	0282cc05 	addi.w	$r5,$r0,179(0xb3)
1c004a98:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004a9c:	0295d084 	addi.w	$r4,$r4,1396(0x574)
1c004aa0:	57d0f7ff 	bl	-12044(0xfffd0f4) # 1c001b94 <myprintf>
1c004aa4:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004aa8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004aac:	03808184 	ori	$r4,$r12,0x20
1c004ab0:	57ee33ff 	bl	-4560(0xfffee30) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004ab4:	03400000 	andi	$r0,$r0,0x0
1c004ab8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004abc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ac0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ac4:	4c000020 	jirl	$r0,$r1,0

1c004ac8 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004ac8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004acc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ad0:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ad4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ad8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004adc:	02a5e0c6 	addi.w	$r6,$r6,-1672(0x978)
1c004ae0:	0282e005 	addi.w	$r5,$r0,184(0xb8)
1c004ae4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004ae8:	0294a084 	addi.w	$r4,$r4,1320(0x528)
1c004aec:	57d0abff 	bl	-12120(0xfffd0a8) # 1c001b94 <myprintf>
1c004af0:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c004af4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004af8:	03808184 	ori	$r4,$r12,0x20
1c004afc:	57ede7ff 	bl	-4636(0xfffede4) # 1c0038e0 <EXTI_ClearITPendingBit>
1c004b00:	03400000 	andi	$r0,$r0,0x0
1c004b04:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b08:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b0c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b10:	4c000020 	jirl	$r0,$r1,0

1c004b14 <ext_handler>:
ext_handler():
1c004b14:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b18:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004b1c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004b20:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b28:	0380f18c 	ori	$r12,$r12,0x3c
1c004b2c:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004b30:	2980018d 	st.w	$r13,$r12,0
1c004b34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b38:	0380818c 	ori	$r12,$r12,0x20
1c004b3c:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004b40:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004b44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b48:	0380818c 	ori	$r12,$r12,0x20
1c004b4c:	2880018c 	ld.w	$r12,$r12,0
1c004b50:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004b54:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004b58:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004b5c:	0014b1ac 	and	$r12,$r13,$r12
1c004b60:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004b64:	03400000 	andi	$r0,$r0,0x0
1c004b68:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004b6c:	50004000 	b	64(0x40) # 1c004bac <ext_handler+0x98>
1c004b70:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004b74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b78:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004b7c:	0340058c 	andi	$r12,$r12,0x1
1c004b80:	40002180 	beqz	$r12,32(0x20) # 1c004ba0 <ext_handler+0x8c>
1c004b84:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004b88:	0294e1ad 	addi.w	$r13,$r13,1336(0x538)
1c004b8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b90:	0040898c 	slli.w	$r12,$r12,0x2
1c004b94:	001031ac 	add.w	$r12,$r13,$r12
1c004b98:	2880018c 	ld.w	$r12,$r12,0
1c004b9c:	4c000181 	jirl	$r1,$r12,0
1c004ba0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004ba4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004ba8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004bac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004bb0:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c004bb4:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004b70 <ext_handler+0x5c>
1c004bb8:	03400000 	andi	$r0,$r0,0x0
1c004bbc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004bc0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004bc4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004bc8:	4c000020 	jirl	$r0,$r1,0

1c004bcc <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004bcc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004bd0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004bd4:	29806076 	st.w	$r22,$r3,24(0x18)
1c004bd8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004bdc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004be0:	0380f18c 	ori	$r12,$r12,0x3c
1c004be4:	1400020d 	lu12i.w	$r13,16(0x10)
1c004be8:	2980018d 	st.w	$r13,$r12,0
1c004bec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bf0:	0380118c 	ori	$r12,$r12,0x4
1c004bf4:	2880018c 	ld.w	$r12,$r12,0
1c004bf8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004bfc:	57ee37ff 	bl	-4556(0xfffee34) # 1c003a30 <WDG_DogFeed>
1c004c00:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004c04:	57e68bff 	bl	-6520(0xfffe688) # 1c00328c <Wake_Set>
1c004c08:	03400000 	andi	$r0,$r0,0x0
1c004c0c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004c10:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004c14:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004c18:	4c000020 	jirl	$r0,$r1,0

1c004c1c <TOUCH>:
TOUCH():
1c004c1c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004c20:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004c24:	29806076 	st.w	$r22,$r3,24(0x18)
1c004c28:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c2c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004c30:	0380118c 	ori	$r12,$r12,0x4
1c004c34:	2880018c 	ld.w	$r12,$r12,0
1c004c38:	0044c18c 	srli.w	$r12,$r12,0x10
1c004c3c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004c40:	037ffd8c 	andi	$r12,$r12,0xfff
1c004c44:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004c48:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004c4c:	0380118c 	ori	$r12,$r12,0x4
1c004c50:	2880018c 	ld.w	$r12,$r12,0
1c004c54:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004c58:	03403d8c 	andi	$r12,$r12,0xf
1c004c5c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004c60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c64:	0380f18c 	ori	$r12,$r12,0x3c
1c004c68:	1400040d 	lu12i.w	$r13,32(0x20)
1c004c6c:	2980018d 	st.w	$r13,$r12,0
1c004c70:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004c74:	0380118c 	ori	$r12,$r12,0x4
1c004c78:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004c7c:	2980018d 	st.w	$r13,$r12,0
1c004c80:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004c84:	00150184 	move	$r4,$r12
1c004c88:	57ef1bff 	bl	-4328(0xfffef18) # 1c003ba0 <Printf_KeyType>
1c004c8c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004c90:	00150184 	move	$r4,$r12
1c004c94:	57ee93ff 	bl	-4464(0xfffee90) # 1c003b24 <Printf_KeyChannel>
1c004c98:	57ef97ff 	bl	-4204(0xfffef94) # 1c003c2c <Printf_KeyVal>
1c004c9c:	03400000 	andi	$r0,$r0,0x0
1c004ca0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004ca4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004ca8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004cac:	4c000020 	jirl	$r0,$r1,0

1c004cb0 <UART2_INT>:
UART2_INT():
1c004cb0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004cb4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004cb8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004cbc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004cc0:	0380f18c 	ori	$r12,$r12,0x3c
1c004cc4:	1400080d 	lu12i.w	$r13,64(0x40)
1c004cc8:	2980018d 	st.w	$r13,$r12,0
1c004ccc:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004cd0:	0380098c 	ori	$r12,$r12,0x2
1c004cd4:	2a00018c 	ld.bu	$r12,$r12,0
1c004cd8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004cdc:	03400000 	andi	$r0,$r0,0x0
1c004ce0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004ce4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004ce8:	4c000020 	jirl	$r0,$r1,0

1c004cec <BAT_FAIL>:
BAT_FAIL():
1c004cec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004cf0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004cf4:	29806076 	st.w	$r22,$r3,24(0x18)
1c004cf8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004cfc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d00:	0380118c 	ori	$r12,$r12,0x4
1c004d04:	2880018c 	ld.w	$r12,$r12,0
1c004d08:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004d0c:	03407d8c 	andi	$r12,$r12,0x1f
1c004d10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004d14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d18:	0380118c 	ori	$r12,$r12,0x4
1c004d1c:	2880018e 	ld.w	$r14,$r12,0
1c004d20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d24:	0380f18c 	ori	$r12,$r12,0x3c
1c004d28:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004d2c:	0014b5cd 	and	$r13,$r14,$r13
1c004d30:	2980018d 	st.w	$r13,$r12,0
1c004d34:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004d38:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004d3c:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004dac <BAT_FAIL+0xc0>
1c004d40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d44:	0040898d 	slli.w	$r13,$r12,0x2
1c004d48:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c004d4c:	028fd18c 	addi.w	$r12,$r12,1012(0x3f4)
1c004d50:	001031ac 	add.w	$r12,$r13,$r12
1c004d54:	2880018c 	ld.w	$r12,$r12,0
1c004d58:	4c000180 	jirl	$r0,$r12,0
1c004d5c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004d60:	028bd084 	addi.w	$r4,$r4,756(0x2f4)
1c004d64:	57ce33ff 	bl	-12752(0xfffce30) # 1c001b94 <myprintf>
1c004d68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d6c:	0380118c 	ori	$r12,$r12,0x4
1c004d70:	29800180 	st.w	$r0,$r12,0
1c004d74:	50003c00 	b	60(0x3c) # 1c004db0 <BAT_FAIL+0xc4>
1c004d78:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004d7c:	028c0084 	addi.w	$r4,$r4,768(0x300)
1c004d80:	57ce17ff 	bl	-12780(0xfffce14) # 1c001b94 <myprintf>
1c004d84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d88:	0380118c 	ori	$r12,$r12,0x4
1c004d8c:	2880018e 	ld.w	$r14,$r12,0
1c004d90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d94:	0380118c 	ori	$r12,$r12,0x4
1c004d98:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004d9c:	03bffdad 	ori	$r13,$r13,0xfff
1c004da0:	0014b5cd 	and	$r13,$r14,$r13
1c004da4:	2980018d 	st.w	$r13,$r12,0
1c004da8:	50000800 	b	8(0x8) # 1c004db0 <BAT_FAIL+0xc4>
1c004dac:	03400000 	andi	$r0,$r0,0x0
1c004db0:	03400000 	andi	$r0,$r0,0x0
1c004db4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004db8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004dbc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004dc0:	4c000020 	jirl	$r0,$r1,0

1c004dc4 <intc_handler>:
intc_handler():
1c004dc4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004dc8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004dcc:	29806076 	st.w	$r22,$r3,24(0x18)
1c004dd0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004dd4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004dd8:	0380158c 	ori	$r12,$r12,0x5
1c004ddc:	2a00018c 	ld.bu	$r12,$r12,0
1c004de0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004de4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004de8:	0340058c 	andi	$r12,$r12,0x1
1c004dec:	40003980 	beqz	$r12,56(0x38) # 1c004e24 <intc_handler+0x60>
1c004df0:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004df4:	57f27bff 	bl	-3464(0xffff278) # 1c00406c <TIM_GetITStatus>
1c004df8:	0015008c 	move	$r12,$r4
1c004dfc:	40002980 	beqz	$r12,40(0x28) # 1c004e24 <intc_handler+0x60>
1c004e00:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004e04:	2888d18c 	ld.w	$r12,$r12,564(0x234)
1c004e08:	2880018c 	ld.w	$r12,$r12,0
1c004e0c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c004e10:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004e14:	2888918c 	ld.w	$r12,$r12,548(0x224)
1c004e18:	2980018d 	st.w	$r13,$r12,0
1c004e1c:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004e20:	57f29bff 	bl	-3432(0xffff298) # 1c0040b8 <TIM_ClearIT>
1c004e24:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004e28:	0340218c 	andi	$r12,$r12,0x8
1c004e2c:	4000f180 	beqz	$r12,240(0xf0) # 1c004f1c <intc_handler+0x158>
1c004e30:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004e34:	0380098c 	ori	$r12,$r12,0x2
1c004e38:	2a00018c 	ld.bu	$r12,$r12,0
1c004e3c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004e40:	0340118c 	andi	$r12,$r12,0x4
1c004e44:	4000d980 	beqz	$r12,216(0xd8) # 1c004f1c <intc_handler+0x158>
1c004e48:	5000bc00 	b	188(0xbc) # 1c004f04 <intc_handler+0x140>
1c004e4c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c004e50:	57dc07ff 	bl	-9212(0xfffdc04) # 1c002a54 <UART_ReceiveData>
1c004e54:	0015008c 	move	$r12,$r4
1c004e58:	0015018d 	move	$r13,$r12
1c004e5c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e60:	0286918c 	addi.w	$r12,$r12,420(0x1a4)
1c004e64:	2900018d 	st.b	$r13,$r12,0
1c004e68:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004e6c:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c004e70:	028650a5 	addi.w	$r5,$r5,404(0x194)
1c004e74:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004e78:	2886c084 	ld.w	$r4,$r4,432(0x1b0)
1c004e7c:	54188000 	bl	6272(0x1880) # 1c0066fc <Queue_Wirte>
1c004e80:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004e84:	28869084 	ld.w	$r4,$r4,420(0x1a4)
1c004e88:	54175400 	bl	5972(0x1754) # 1c0065dc <Queue_isEmpty>
1c004e8c:	0015008c 	move	$r12,$r4
1c004e90:	44005180 	bnez	$r12,80(0x50) # 1c004ee0 <intc_handler+0x11c>
1c004e94:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004e98:	28864084 	ld.w	$r4,$r4,400(0x190)
1c004e9c:	54179000 	bl	6032(0x1790) # 1c00662c <Queue_HadUse>
1c004ea0:	0015008c 	move	$r12,$r4
1c004ea4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004ea8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004eac:	2885918c 	ld.w	$r12,$r12,356(0x164)
1c004eb0:	2900018d 	st.b	$r13,$r12,0
1c004eb4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004eb8:	2885618c 	ld.w	$r12,$r12,344(0x158)
1c004ebc:	2a00018c 	ld.bu	$r12,$r12,0
1c004ec0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004ec4:	00150186 	move	$r6,$r12
1c004ec8:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c004ecc:	2885c0a5 	ld.w	$r5,$r5,368(0x170)
1c004ed0:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004ed4:	28855084 	ld.w	$r4,$r4,340(0x154)
1c004ed8:	54190000 	bl	6400(0x1900) # 1c0067d8 <Queue_Read>
1c004edc:	50001800 	b	24(0x18) # 1c004ef4 <intc_handler+0x130>
1c004ee0:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c004ee4:	00150005 	move	$r5,$r0
1c004ee8:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004eec:	28854084 	ld.w	$r4,$r4,336(0x150)
1c004ef0:	57e763ff 	bl	-6304(0xfffe760) # 1c003650 <memset>
1c004ef4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004ef8:	03800d8c 	ori	$r12,$r12,0x3
1c004efc:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004f00:	2900018d 	st.b	$r13,$r12,0
1c004f04:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004f08:	0380158c 	ori	$r12,$r12,0x5
1c004f0c:	2a00018c 	ld.bu	$r12,$r12,0
1c004f10:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004f14:	0340058c 	andi	$r12,$r12,0x1
1c004f18:	47ff359f 	bnez	$r12,-204(0x7fff34) # 1c004e4c <intc_handler+0x88>
1c004f1c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004f20:	03800d8c 	ori	$r12,$r12,0x3
1c004f24:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004f28:	2900018d 	st.b	$r13,$r12,0
1c004f2c:	03400000 	andi	$r0,$r0,0x0
1c004f30:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004f34:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004f38:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004f3c:	4c000020 	jirl	$r0,$r1,0

1c004f40 <TIMER_HANDLER>:
TIMER_HANDLER():
1c004f40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f44:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f48:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f4c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f50:	57e31bff 	bl	-7400(0xfffe318) # 1c003268 <Set_Timer_clear>
1c004f54:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004f58:	02852084 	addi.w	$r4,$r4,328(0x148)
1c004f5c:	57cc3bff 	bl	-13256(0xfffcc38) # 1c001b94 <myprintf>
1c004f60:	57e2ebff 	bl	-7448(0xfffe2e8) # 1c003248 <Set_Timer_stop>
1c004f64:	03400000 	andi	$r0,$r0,0x0
1c004f68:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f6c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f74:	4c000020 	jirl	$r0,$r1,0

1c004f78 <IIC_Delay>:
IIC_Delay():
1c004f78:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004f7c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004f80:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004f84:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004f88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004f8c:	50001000 	b	16(0x10) # 1c004f9c <IIC_Delay+0x24>
1c004f90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004f94:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004f98:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004f9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004fa0:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c004f90 <IIC_Delay+0x18>
1c004fa4:	03400000 	andi	$r0,$r0,0x0
1c004fa8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004fac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004fb0:	4c000020 	jirl	$r0,$r1,0

1c004fb4 <IIC_Init>:
IIC_Init():
1c004fb4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004fb8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004fbc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004fc0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004fc4:	00150005 	move	$r5,$r0
1c004fc8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004fcc:	57c68bff 	bl	-14712(0xfffc688) # 1c001654 <gpio_pin_remap>
1c004fd0:	00150005 	move	$r5,$r0
1c004fd4:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004fd8:	57c67fff 	bl	-14724(0xfffc67c) # 1c001654 <gpio_pin_remap>
1c004fdc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fe0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004fe4:	57c87fff 	bl	-14212(0xfffc87c) # 1c001860 <gpio_set_direction>
1c004fe8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fec:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004ff0:	57c873ff 	bl	-14224(0xfffc870) # 1c001860 <gpio_set_direction>
1c004ff4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004ff8:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004ffc:	57c5e3ff 	bl	-14880(0xfffc5e0) # 1c0015dc <gpio_write_pin>
1c005000:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005004:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005008:	57c5d7ff 	bl	-14892(0xfffc5d4) # 1c0015dc <gpio_write_pin>
1c00500c:	03400000 	andi	$r0,$r0,0x0
1c005010:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005014:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005018:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00501c:	4c000020 	jirl	$r0,$r1,0

1c005020 <SDA_IN>:
SDA_IN():
1c005020:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005024:	29803061 	st.w	$r1,$r3,12(0xc)
1c005028:	29802076 	st.w	$r22,$r3,8(0x8)
1c00502c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005030:	00150005 	move	$r5,$r0
1c005034:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005038:	57c82bff 	bl	-14296(0xfffc828) # 1c001860 <gpio_set_direction>
1c00503c:	03400000 	andi	$r0,$r0,0x0
1c005040:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005044:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005048:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00504c:	4c000020 	jirl	$r0,$r1,0

1c005050 <SDA_OUT>:
SDA_OUT():
1c005050:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005054:	29803061 	st.w	$r1,$r3,12(0xc)
1c005058:	29802076 	st.w	$r22,$r3,8(0x8)
1c00505c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005060:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005064:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005068:	57c7fbff 	bl	-14344(0xfffc7f8) # 1c001860 <gpio_set_direction>
1c00506c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005070:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005074:	57c56bff 	bl	-15000(0xfffc568) # 1c0015dc <gpio_write_pin>
1c005078:	03400000 	andi	$r0,$r0,0x0
1c00507c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005080:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005084:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005088:	4c000020 	jirl	$r0,$r1,0

1c00508c <IIC_Start>:
IIC_Start():
1c00508c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005090:	29803061 	st.w	$r1,$r3,12(0xc)
1c005094:	29802076 	st.w	$r22,$r3,8(0x8)
1c005098:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00509c:	57ffb7ff 	bl	-76(0xfffffb4) # 1c005050 <SDA_OUT>
1c0050a0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0050a4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0050a8:	57c537ff 	bl	-15052(0xfffc534) # 1c0015dc <gpio_write_pin>
1c0050ac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0050b0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0050b4:	57c52bff 	bl	-15064(0xfffc528) # 1c0015dc <gpio_write_pin>
1c0050b8:	57fec3ff 	bl	-320(0xffffec0) # 1c004f78 <IIC_Delay>
1c0050bc:	00150005 	move	$r5,$r0
1c0050c0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0050c4:	57c51bff 	bl	-15080(0xfffc518) # 1c0015dc <gpio_write_pin>
1c0050c8:	57feb3ff 	bl	-336(0xffffeb0) # 1c004f78 <IIC_Delay>
1c0050cc:	00150005 	move	$r5,$r0
1c0050d0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0050d4:	57c50bff 	bl	-15096(0xfffc508) # 1c0015dc <gpio_write_pin>
1c0050d8:	03400000 	andi	$r0,$r0,0x0
1c0050dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0050e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0050e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0050e8:	4c000020 	jirl	$r0,$r1,0

1c0050ec <IIC_Stop>:
IIC_Stop():
1c0050ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0050f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0050f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0050f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0050fc:	57ff57ff 	bl	-172(0xfffff54) # 1c005050 <SDA_OUT>
1c005100:	00150005 	move	$r5,$r0
1c005104:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005108:	57c4d7ff 	bl	-15148(0xfffc4d4) # 1c0015dc <gpio_write_pin>
1c00510c:	00150005 	move	$r5,$r0
1c005110:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005114:	57c4cbff 	bl	-15160(0xfffc4c8) # 1c0015dc <gpio_write_pin>
1c005118:	57fe63ff 	bl	-416(0xffffe60) # 1c004f78 <IIC_Delay>
1c00511c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005120:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005124:	57c4bbff 	bl	-15176(0xfffc4b8) # 1c0015dc <gpio_write_pin>
1c005128:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00512c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005130:	57c4afff 	bl	-15188(0xfffc4ac) # 1c0015dc <gpio_write_pin>
1c005134:	57fe47ff 	bl	-444(0xffffe44) # 1c004f78 <IIC_Delay>
1c005138:	03400000 	andi	$r0,$r0,0x0
1c00513c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005140:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005144:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005148:	4c000020 	jirl	$r0,$r1,0

1c00514c <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c00514c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005150:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005154:	29806076 	st.w	$r22,$r3,24(0x18)
1c005158:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00515c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005160:	57fec3ff 	bl	-320(0xffffec0) # 1c005020 <SDA_IN>
1c005164:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005168:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00516c:	57c473ff 	bl	-15248(0xfffc470) # 1c0015dc <gpio_write_pin>
1c005170:	57fe0bff 	bl	-504(0xffffe08) # 1c004f78 <IIC_Delay>
1c005174:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005178:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c00517c:	57c463ff 	bl	-15264(0xfffc460) # 1c0015dc <gpio_write_pin>
1c005180:	57fdfbff 	bl	-520(0xffffdf8) # 1c004f78 <IIC_Delay>
1c005184:	50002800 	b	40(0x28) # 1c0051ac <IIC_Wait_Ack+0x60>
1c005188:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00518c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005190:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005194:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005198:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c00519c:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c0051ac <IIC_Wait_Ack+0x60>
1c0051a0:	57ff4fff 	bl	-180(0xfffff4c) # 1c0050ec <IIC_Stop>
1c0051a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0051a8:	50002400 	b	36(0x24) # 1c0051cc <IIC_Wait_Ack+0x80>
1c0051ac:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0051b0:	57c3dfff 	bl	-15396(0xfffc3dc) # 1c00158c <gpio_get_pin>
1c0051b4:	0015008c 	move	$r12,$r4
1c0051b8:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c005188 <IIC_Wait_Ack+0x3c>
1c0051bc:	00150005 	move	$r5,$r0
1c0051c0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0051c4:	57c41bff 	bl	-15336(0xfffc418) # 1c0015dc <gpio_write_pin>
1c0051c8:	0015000c 	move	$r12,$r0
1c0051cc:	00150184 	move	$r4,$r12
1c0051d0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0051d4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0051d8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0051dc:	4c000020 	jirl	$r0,$r1,0

1c0051e0 <IIC_Send_Byte>:
IIC_Send_Byte():
1c0051e0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0051e4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0051e8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0051ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0051f0:	0015008c 	move	$r12,$r4
1c0051f4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0051f8:	57fe5bff 	bl	-424(0xffffe58) # 1c005050 <SDA_OUT>
1c0051fc:	00150005 	move	$r5,$r0
1c005200:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005204:	57c3dbff 	bl	-15400(0xfffc3d8) # 1c0015dc <gpio_write_pin>
1c005208:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00520c:	50006000 	b	96(0x60) # 1c00526c <IIC_Send_Byte+0x8c>
1c005210:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c005214:	64001580 	bge	$r12,$r0,20(0x14) # 1c005228 <IIC_Send_Byte+0x48>
1c005218:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00521c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005220:	57c3bfff 	bl	-15428(0xfffc3bc) # 1c0015dc <gpio_write_pin>
1c005224:	50001000 	b	16(0x10) # 1c005234 <IIC_Send_Byte+0x54>
1c005228:	00150005 	move	$r5,$r0
1c00522c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005230:	57c3afff 	bl	-15444(0xfffc3ac) # 1c0015dc <gpio_write_pin>
1c005234:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005238:	0040858c 	slli.w	$r12,$r12,0x1
1c00523c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005240:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005244:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005248:	57c397ff 	bl	-15468(0xfffc394) # 1c0015dc <gpio_write_pin>
1c00524c:	57fd2fff 	bl	-724(0xffffd2c) # 1c004f78 <IIC_Delay>
1c005250:	00150005 	move	$r5,$r0
1c005254:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005258:	57c387ff 	bl	-15484(0xfffc384) # 1c0015dc <gpio_write_pin>
1c00525c:	57fd1fff 	bl	-740(0xffffd1c) # 1c004f78 <IIC_Delay>
1c005260:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005264:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005268:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00526c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005270:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005274:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c005210 <IIC_Send_Byte+0x30>
1c005278:	03400000 	andi	$r0,$r0,0x0
1c00527c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005280:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005284:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005288:	4c000020 	jirl	$r0,$r1,0

1c00528c <OLED_Hardware_Init>:
OLED_Hardware_Init():
1c00528c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005290:	29803061 	st.w	$r1,$r3,12(0xc)
1c005294:	29802076 	st.w	$r22,$r3,8(0x8)
1c005298:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00529c:	57fd1bff 	bl	-744(0xffffd18) # 1c004fb4 <IIC_Init>
1c0052a0:	03400000 	andi	$r0,$r0,0x0
1c0052a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0052a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0052ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0052b0:	4c000020 	jirl	$r0,$r1,0

1c0052b4 <OLED_WR_Byte>:
OLED_WR_Byte():
1c0052b4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0052b8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0052bc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0052c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0052c4:	0015008c 	move	$r12,$r4
1c0052c8:	001500ad 	move	$r13,$r5
1c0052cc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0052d0:	001501ac 	move	$r12,$r13
1c0052d4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0052d8:	57fdb7ff 	bl	-588(0xffffdb4) # 1c00508c <IIC_Start>
1c0052dc:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c0052e0:	57ff03ff 	bl	-256(0xfffff00) # 1c0051e0 <IIC_Send_Byte>
1c0052e4:	57fe6bff 	bl	-408(0xffffe68) # 1c00514c <IIC_Wait_Ack>
1c0052e8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0052ec:	00150184 	move	$r4,$r12
1c0052f0:	57fef3ff 	bl	-272(0xffffef0) # 1c0051e0 <IIC_Send_Byte>
1c0052f4:	57fe5bff 	bl	-424(0xffffe58) # 1c00514c <IIC_Wait_Ack>
1c0052f8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0052fc:	00150184 	move	$r4,$r12
1c005300:	57fee3ff 	bl	-288(0xffffee0) # 1c0051e0 <IIC_Send_Byte>
1c005304:	57fe4bff 	bl	-440(0xffffe48) # 1c00514c <IIC_Wait_Ack>
1c005308:	57fde7ff 	bl	-540(0xffffde4) # 1c0050ec <IIC_Stop>
1c00530c:	03400000 	andi	$r0,$r0,0x0
1c005310:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005314:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005318:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00531c:	4c000020 	jirl	$r0,$r1,0

1c005320 <OLED_Set_Pos>:
OLED_Set_Pos():
1c005320:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005324:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005328:	29806076 	st.w	$r22,$r3,24(0x18)
1c00532c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005330:	0015008c 	move	$r12,$r4
1c005334:	001500ad 	move	$r13,$r5
1c005338:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00533c:	001501ac 	move	$r12,$r13
1c005340:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005344:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005348:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c00534c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005350:	00150005 	move	$r5,$r0
1c005354:	00150184 	move	$r4,$r12
1c005358:	57ff5fff 	bl	-164(0xfffff5c) # 1c0052b4 <OLED_WR_Byte>
1c00535c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005360:	0044918c 	srli.w	$r12,$r12,0x4
1c005364:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005368:	0380418c 	ori	$r12,$r12,0x10
1c00536c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005370:	00150005 	move	$r5,$r0
1c005374:	00150184 	move	$r4,$r12
1c005378:	57ff3fff 	bl	-196(0xfffff3c) # 1c0052b4 <OLED_WR_Byte>
1c00537c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005380:	03403d8c 	andi	$r12,$r12,0xf
1c005384:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005388:	00150005 	move	$r5,$r0
1c00538c:	00150184 	move	$r4,$r12
1c005390:	57ff27ff 	bl	-220(0xfffff24) # 1c0052b4 <OLED_WR_Byte>
1c005394:	03400000 	andi	$r0,$r0,0x0
1c005398:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00539c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0053a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0053a4:	4c000020 	jirl	$r0,$r1,0

1c0053a8 <OLED_Clear>:
OLED_Clear():
1c0053a8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0053ac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0053b0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0053b4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0053b8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0053bc:	50006800 	b	104(0x68) # 1c005424 <OLED_Clear+0x7c>
1c0053c0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0053c4:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c0053c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0053cc:	00150005 	move	$r5,$r0
1c0053d0:	00150184 	move	$r4,$r12
1c0053d4:	57fee3ff 	bl	-288(0xffffee0) # 1c0052b4 <OLED_WR_Byte>
1c0053d8:	00150005 	move	$r5,$r0
1c0053dc:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0053e0:	57fed7ff 	bl	-300(0xffffed4) # 1c0052b4 <OLED_WR_Byte>
1c0053e4:	00150005 	move	$r5,$r0
1c0053e8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0053ec:	57fecbff 	bl	-312(0xffffec8) # 1c0052b4 <OLED_WR_Byte>
1c0053f0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0053f4:	50001c00 	b	28(0x1c) # 1c005410 <OLED_Clear+0x68>
1c0053f8:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0053fc:	00150004 	move	$r4,$r0
1c005400:	57feb7ff 	bl	-332(0xffffeb4) # 1c0052b4 <OLED_WR_Byte>
1c005404:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005408:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00540c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005410:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c005414:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c0053f8 <OLED_Clear+0x50>
1c005418:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00541c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005420:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005424:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005428:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c00542c:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c0053c0 <OLED_Clear+0x18>
1c005430:	03400000 	andi	$r0,$r0,0x0
1c005434:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005438:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00543c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005440:	4c000020 	jirl	$r0,$r1,0

1c005444 <OLED_Init>:
OLED_Init():
1c005444:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005448:	29803061 	st.w	$r1,$r3,12(0xc)
1c00544c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005450:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005454:	57fe3bff 	bl	-456(0xffffe38) # 1c00528c <OLED_Hardware_Init>
1c005458:	02819004 	addi.w	$r4,$r0,100(0x64)
1c00545c:	57e1b7ff 	bl	-7756(0xfffe1b4) # 1c003610 <delay_ms>
1c005460:	57ff4bff 	bl	-184(0xfffff48) # 1c0053a8 <OLED_Clear>
1c005464:	00150005 	move	$r5,$r0
1c005468:	00150004 	move	$r4,$r0
1c00546c:	57feb7ff 	bl	-332(0xffffeb4) # 1c005320 <OLED_Set_Pos>
1c005470:	00150005 	move	$r5,$r0
1c005474:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c005478:	57fe3fff 	bl	-452(0xffffe3c) # 1c0052b4 <OLED_WR_Byte>
1c00547c:	00150005 	move	$r5,$r0
1c005480:	00150004 	move	$r4,$r0
1c005484:	57fe33ff 	bl	-464(0xffffe30) # 1c0052b4 <OLED_WR_Byte>
1c005488:	00150005 	move	$r5,$r0
1c00548c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005490:	57fe27ff 	bl	-476(0xffffe24) # 1c0052b4 <OLED_WR_Byte>
1c005494:	00150005 	move	$r5,$r0
1c005498:	02810004 	addi.w	$r4,$r0,64(0x40)
1c00549c:	57fe1bff 	bl	-488(0xffffe18) # 1c0052b4 <OLED_WR_Byte>
1c0054a0:	00150005 	move	$r5,$r0
1c0054a4:	02820404 	addi.w	$r4,$r0,129(0x81)
1c0054a8:	57fe0fff 	bl	-500(0xffffe0c) # 1c0052b4 <OLED_WR_Byte>
1c0054ac:	00150005 	move	$r5,$r0
1c0054b0:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c0054b4:	57fe03ff 	bl	-512(0xffffe00) # 1c0052b4 <OLED_WR_Byte>
1c0054b8:	00150005 	move	$r5,$r0
1c0054bc:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c0054c0:	57fdf7ff 	bl	-524(0xffffdf4) # 1c0052b4 <OLED_WR_Byte>
1c0054c4:	00150005 	move	$r5,$r0
1c0054c8:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c0054cc:	57fdebff 	bl	-536(0xffffde8) # 1c0052b4 <OLED_WR_Byte>
1c0054d0:	00150005 	move	$r5,$r0
1c0054d4:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c0054d8:	57fddfff 	bl	-548(0xffffddc) # 1c0052b4 <OLED_WR_Byte>
1c0054dc:	00150005 	move	$r5,$r0
1c0054e0:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c0054e4:	57fdd3ff 	bl	-560(0xffffdd0) # 1c0052b4 <OLED_WR_Byte>
1c0054e8:	00150005 	move	$r5,$r0
1c0054ec:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0054f0:	57fdc7ff 	bl	-572(0xffffdc4) # 1c0052b4 <OLED_WR_Byte>
1c0054f4:	00150005 	move	$r5,$r0
1c0054f8:	02820404 	addi.w	$r4,$r0,129(0x81)
1c0054fc:	57fdbbff 	bl	-584(0xffffdb8) # 1c0052b4 <OLED_WR_Byte>
1c005500:	00150005 	move	$r5,$r0
1c005504:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c005508:	57fdafff 	bl	-596(0xffffdac) # 1c0052b4 <OLED_WR_Byte>
1c00550c:	00150005 	move	$r5,$r0
1c005510:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c005514:	57fda3ff 	bl	-608(0xffffda0) # 1c0052b4 <OLED_WR_Byte>
1c005518:	00150005 	move	$r5,$r0
1c00551c:	00150004 	move	$r4,$r0
1c005520:	57fd97ff 	bl	-620(0xffffd94) # 1c0052b4 <OLED_WR_Byte>
1c005524:	00150005 	move	$r5,$r0
1c005528:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c00552c:	57fd8bff 	bl	-632(0xffffd88) # 1c0052b4 <OLED_WR_Byte>
1c005530:	00150005 	move	$r5,$r0
1c005534:	02820004 	addi.w	$r4,$r0,128(0x80)
1c005538:	57fd7fff 	bl	-644(0xffffd7c) # 1c0052b4 <OLED_WR_Byte>
1c00553c:	00150005 	move	$r5,$r0
1c005540:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c005544:	57fd73ff 	bl	-656(0xffffd70) # 1c0052b4 <OLED_WR_Byte>
1c005548:	00150005 	move	$r5,$r0
1c00554c:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c005550:	57fd67ff 	bl	-668(0xffffd64) # 1c0052b4 <OLED_WR_Byte>
1c005554:	00150005 	move	$r5,$r0
1c005558:	02836804 	addi.w	$r4,$r0,218(0xda)
1c00555c:	57fd5bff 	bl	-680(0xffffd58) # 1c0052b4 <OLED_WR_Byte>
1c005560:	00150005 	move	$r5,$r0
1c005564:	02804804 	addi.w	$r4,$r0,18(0x12)
1c005568:	57fd4fff 	bl	-692(0xffffd4c) # 1c0052b4 <OLED_WR_Byte>
1c00556c:	00150005 	move	$r5,$r0
1c005570:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c005574:	57fd43ff 	bl	-704(0xffffd40) # 1c0052b4 <OLED_WR_Byte>
1c005578:	00150005 	move	$r5,$r0
1c00557c:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005580:	57fd37ff 	bl	-716(0xffffd34) # 1c0052b4 <OLED_WR_Byte>
1c005584:	00150005 	move	$r5,$r0
1c005588:	02808004 	addi.w	$r4,$r0,32(0x20)
1c00558c:	57fd2bff 	bl	-728(0xffffd28) # 1c0052b4 <OLED_WR_Byte>
1c005590:	00150005 	move	$r5,$r0
1c005594:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005598:	57fd1fff 	bl	-740(0xffffd1c) # 1c0052b4 <OLED_WR_Byte>
1c00559c:	00150005 	move	$r5,$r0
1c0055a0:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c0055a4:	57fd13ff 	bl	-752(0xffffd10) # 1c0052b4 <OLED_WR_Byte>
1c0055a8:	00150005 	move	$r5,$r0
1c0055ac:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0055b0:	57fd07ff 	bl	-764(0xffffd04) # 1c0052b4 <OLED_WR_Byte>
1c0055b4:	00150005 	move	$r5,$r0
1c0055b8:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c0055bc:	57fcfbff 	bl	-776(0xffffcf8) # 1c0052b4 <OLED_WR_Byte>
1c0055c0:	00150005 	move	$r5,$r0
1c0055c4:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c0055c8:	57fcefff 	bl	-788(0xffffcec) # 1c0052b4 <OLED_WR_Byte>
1c0055cc:	00150005 	move	$r5,$r0
1c0055d0:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c0055d4:	57fce3ff 	bl	-800(0xffffce0) # 1c0052b4 <OLED_WR_Byte>
1c0055d8:	00150005 	move	$r5,$r0
1c0055dc:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c0055e0:	57fcd7ff 	bl	-812(0xffffcd4) # 1c0052b4 <OLED_WR_Byte>
1c0055e4:	57fdc7ff 	bl	-572(0xffffdc4) # 1c0053a8 <OLED_Clear>
1c0055e8:	00150005 	move	$r5,$r0
1c0055ec:	00150004 	move	$r4,$r0
1c0055f0:	57fd33ff 	bl	-720(0xffffd30) # 1c005320 <OLED_Set_Pos>
1c0055f4:	03400000 	andi	$r0,$r0,0x0
1c0055f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0055fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005600:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005604:	4c000020 	jirl	$r0,$r1,0

1c005608 <OLED_ShowChar>:
OLED_ShowChar():
1c005608:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00560c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005610:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005614:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005618:	0015008c 	move	$r12,$r4
1c00561c:	001500af 	move	$r15,$r5
1c005620:	001500ce 	move	$r14,$r6
1c005624:	001500ed 	move	$r13,$r7
1c005628:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c00562c:	001501ec 	move	$r12,$r15
1c005630:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005634:	001501cc 	move	$r12,$r14
1c005638:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c00563c:	001501ac 	move	$r12,$r13
1c005640:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c005644:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005648:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c00564c:	2a3f6acd 	ld.bu	$r13,$r22,-38(0xfda)
1c005650:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005654:	58000dac 	beq	$r13,$r12,12(0xc) # 1c005660 <OLED_ShowChar+0x58>
1c005658:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00565c:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c005660:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c005664:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c005668:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c00566c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005670:	50009800 	b	152(0x98) # 1c005708 <OLED_ShowChar+0x100>
1c005674:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005678:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c00567c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005680:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005684:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005688:	001031ac 	add.w	$r12,$r13,$r12
1c00568c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005690:	00150185 	move	$r5,$r12
1c005694:	001501c4 	move	$r4,$r14
1c005698:	57fc8bff 	bl	-888(0xffffc88) # 1c005320 <OLED_Set_Pos>
1c00569c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0056a0:	50004800 	b	72(0x48) # 1c0056e8 <OLED_ShowChar+0xe0>
1c0056a4:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c0056a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0056ac:	00408d8e 	slli.w	$r14,$r12,0x3
1c0056b0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0056b4:	001031cc 	add.w	$r12,$r14,$r12
1c0056b8:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c0056bc:	02b6c1ce 	addi.w	$r14,$r14,-592(0xdb0)
1c0056c0:	004091ad 	slli.w	$r13,$r13,0x4
1c0056c4:	001035cd 	add.w	$r13,$r14,$r13
1c0056c8:	001031ac 	add.w	$r12,$r13,$r12
1c0056cc:	2a00018c 	ld.bu	$r12,$r12,0
1c0056d0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0056d4:	00150184 	move	$r4,$r12
1c0056d8:	57fbdfff 	bl	-1060(0xffffbdc) # 1c0052b4 <OLED_WR_Byte>
1c0056dc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0056e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056e4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0056e8:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c0056ec:	0044858c 	srli.w	$r12,$r12,0x1
1c0056f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0056f4:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0056f8:	6bffadac 	bltu	$r13,$r12,-84(0x3ffac) # 1c0056a4 <OLED_ShowChar+0x9c>
1c0056fc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005700:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005704:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005708:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c00570c:	00448d8c 	srli.w	$r12,$r12,0x3
1c005710:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005714:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005718:	6bff5dac 	bltu	$r13,$r12,-164(0x3ff5c) # 1c005674 <OLED_ShowChar+0x6c>
1c00571c:	03400000 	andi	$r0,$r0,0x0
1c005720:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005724:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005728:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00572c:	4c000020 	jirl	$r0,$r1,0

1c005730 <OLED_DrawFont16>:
OLED_DrawFont16():
1c005730:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005734:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005738:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00573c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005740:	0015008c 	move	$r12,$r4
1c005744:	001500ad 	move	$r13,$r5
1c005748:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c00574c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005750:	001501ac 	move	$r12,$r13
1c005754:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005758:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00575c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005760:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005764:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c005768:	02804c0c 	addi.w	$r12,$r0,19(0x13)
1c00576c:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c005770:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005774:	50013800 	b	312(0x138) # 1c0058ac <OLED_DrawFont16+0x17c>
1c005778:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c00577c:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c005780:	028b71ad 	addi.w	$r13,$r13,732(0x2dc)
1c005784:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005788:	001c31cc 	mul.w	$r12,$r14,$r12
1c00578c:	001031ac 	add.w	$r12,$r13,$r12
1c005790:	2a00018d 	ld.bu	$r13,$r12,0
1c005794:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005798:	2a00018c 	ld.bu	$r12,$r12,0
1c00579c:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c0058a0 <OLED_DrawFont16+0x170>
1c0057a0:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0057a4:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0057a8:	028ad1ad 	addi.w	$r13,$r13,692(0x2b4)
1c0057ac:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0057b0:	001c31cc 	mul.w	$r12,$r14,$r12
1c0057b4:	001031ac 	add.w	$r12,$r13,$r12
1c0057b8:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c0057bc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0057c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0057c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0057c8:	5c00d9ac 	bne	$r13,$r12,216(0xd8) # 1c0058a0 <OLED_DrawFont16+0x170>
1c0057cc:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0057d0:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0057d4:	028a21ad 	addi.w	$r13,$r13,648(0x288)
1c0057d8:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0057dc:	001c31cc 	mul.w	$r12,$r14,$r12
1c0057e0:	001031ac 	add.w	$r12,$r13,$r12
1c0057e4:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c0057e8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0057ec:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0057f0:	2a00018c 	ld.bu	$r12,$r12,0
1c0057f4:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c0058a0 <OLED_DrawFont16+0x170>
1c0057f8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0057fc:	50009400 	b	148(0x94) # 1c005890 <OLED_DrawFont16+0x160>
1c005800:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005804:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005808:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00580c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005810:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005814:	001031ac 	add.w	$r12,$r13,$r12
1c005818:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00581c:	00150185 	move	$r5,$r12
1c005820:	001501c4 	move	$r4,$r14
1c005824:	57faffff 	bl	-1284(0xffffafc) # 1c005320 <OLED_Set_Pos>
1c005828:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00582c:	50004c00 	b	76(0x4c) # 1c005878 <OLED_DrawFont16+0x148>
1c005830:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c005834:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005838:	0040918d 	slli.w	$r13,$r12,0x4
1c00583c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005840:	001031ad 	add.w	$r13,$r13,$r12
1c005844:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c005848:	028851ce 	addi.w	$r14,$r14,532(0x214)
1c00584c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005850:	001c31ec 	mul.w	$r12,$r15,$r12
1c005854:	001031cc 	add.w	$r12,$r14,$r12
1c005858:	0010358c 	add.w	$r12,$r12,$r13
1c00585c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c005860:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005864:	00150184 	move	$r4,$r12
1c005868:	57fa4fff 	bl	-1460(0xffffa4c) # 1c0052b4 <OLED_WR_Byte>
1c00586c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005870:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005874:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005878:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00587c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005880:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c005830 <OLED_DrawFont16+0x100>
1c005884:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005888:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00588c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005890:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005894:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005898:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c005800 <OLED_DrawFont16+0xd0>
1c00589c:	50001c00 	b	28(0x1c) # 1c0058b8 <OLED_DrawFont16+0x188>
1c0058a0:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0058a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058a8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0058ac:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c0058b0:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c0058b4:	6bfec5ac 	bltu	$r13,$r12,-316(0x3fec4) # 1c005778 <OLED_DrawFont16+0x48>
1c0058b8:	03400000 	andi	$r0,$r0,0x0
1c0058bc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0058c0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0058c4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0058c8:	4c000020 	jirl	$r0,$r1,0

1c0058cc <OLED_DrawFont32>:
OLED_DrawFont32():
1c0058cc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0058d0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0058d4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0058d8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0058dc:	0015008c 	move	$r12,$r4
1c0058e0:	001500ad 	move	$r13,$r5
1c0058e4:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0058e8:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0058ec:	001501ac 	move	$r12,$r13
1c0058f0:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0058f4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0058f8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0058fc:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005900:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c005904:	0280500c 	addi.w	$r12,$r0,20(0x14)
1c005908:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c00590c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005910:	50014400 	b	324(0x144) # 1c005a54 <OLED_DrawFont32+0x188>
1c005914:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005918:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c00591c:	028501ad 	addi.w	$r13,$r13,320(0x140)
1c005920:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005924:	001c31cc 	mul.w	$r12,$r14,$r12
1c005928:	001031ac 	add.w	$r12,$r13,$r12
1c00592c:	2a00018c 	ld.bu	$r12,$r12,0
1c005930:	0015018d 	move	$r13,$r12
1c005934:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005938:	2800018c 	ld.b	$r12,$r12,0
1c00593c:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c005a48 <OLED_DrawFont32+0x17c>
1c005940:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005944:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c005948:	028451ad 	addi.w	$r13,$r13,276(0x114)
1c00594c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005950:	001c31cc 	mul.w	$r12,$r14,$r12
1c005954:	001031ac 	add.w	$r12,$r13,$r12
1c005958:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00595c:	0015018d 	move	$r13,$r12
1c005960:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005964:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005968:	2800018c 	ld.b	$r12,$r12,0
1c00596c:	5c00ddac 	bne	$r13,$r12,220(0xdc) # 1c005a48 <OLED_DrawFont32+0x17c>
1c005970:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005974:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c005978:	028391ad 	addi.w	$r13,$r13,228(0xe4)
1c00597c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005980:	001c31cc 	mul.w	$r12,$r14,$r12
1c005984:	001031ac 	add.w	$r12,$r13,$r12
1c005988:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c00598c:	0015018d 	move	$r13,$r12
1c005990:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005994:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005998:	2800018c 	ld.b	$r12,$r12,0
1c00599c:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c005a48 <OLED_DrawFont32+0x17c>
1c0059a0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0059a4:	50009400 	b	148(0x94) # 1c005a38 <OLED_DrawFont32+0x16c>
1c0059a8:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0059ac:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0059b0:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0059b4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0059b8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0059bc:	001031ac 	add.w	$r12,$r13,$r12
1c0059c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0059c4:	00150185 	move	$r5,$r12
1c0059c8:	001501c4 	move	$r4,$r14
1c0059cc:	57f957ff 	bl	-1708(0xffff954) # 1c005320 <OLED_Set_Pos>
1c0059d0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0059d4:	50004c00 	b	76(0x4c) # 1c005a20 <OLED_DrawFont32+0x154>
1c0059d8:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c0059dc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0059e0:	0040958d 	slli.w	$r13,$r12,0x5
1c0059e4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0059e8:	001031ad 	add.w	$r13,$r13,$r12
1c0059ec:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c0059f0:	028c21ce 	addi.w	$r14,$r14,776(0x308)
1c0059f4:	02820c0c 	addi.w	$r12,$r0,131(0x83)
1c0059f8:	001c31ec 	mul.w	$r12,$r15,$r12
1c0059fc:	001031cc 	add.w	$r12,$r14,$r12
1c005a00:	0010358c 	add.w	$r12,$r12,$r13
1c005a04:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c005a08:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005a0c:	00150184 	move	$r4,$r12
1c005a10:	57f8a7ff 	bl	-1884(0xffff8a4) # 1c0052b4 <OLED_WR_Byte>
1c005a14:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005a18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a1c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005a20:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005a24:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c005a28:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c0059d8 <OLED_DrawFont32+0x10c>
1c005a2c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005a30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a34:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005a38:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005a3c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005a40:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c0059a8 <OLED_DrawFont32+0xdc>
1c005a44:	50001c00 	b	28(0x1c) # 1c005a60 <OLED_DrawFont32+0x194>
1c005a48:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005a4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a50:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005a54:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005a58:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005a5c:	6bfeb9ac 	bltu	$r13,$r12,-328(0x3feb8) # 1c005914 <OLED_DrawFont32+0x48>
1c005a60:	03400000 	andi	$r0,$r0,0x0
1c005a64:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005a68:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005a6c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005a70:	4c000020 	jirl	$r0,$r1,0

1c005a74 <OLED_Show_Str>:
OLED_Show_Str():
1c005a74:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005a78:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005a7c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005a80:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005a84:	0015008c 	move	$r12,$r4
1c005a88:	001500ae 	move	$r14,$r5
1c005a8c:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c005a90:	001500ed 	move	$r13,$r7
1c005a94:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005a98:	001501cc 	move	$r12,$r14
1c005a9c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005aa0:	001501ac 	move	$r12,$r13
1c005aa4:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005aa8:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005aac:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005ab0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005ab4:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005ab8:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005abc:	580209ac 	beq	$r13,$r12,520(0x208) # 1c005cc4 <OLED_Show_Str+0x250>
1c005ac0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005ac4:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005ac8:	5001fc00 	b	508(0x1fc) # 1c005cc4 <OLED_Show_Str+0x250>
1c005acc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005ad0:	44012580 	bnez	$r12,292(0x124) # 1c005bf4 <OLED_Show_Str+0x180>
1c005ad4:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c005ad8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005adc:	0044858c 	srli.w	$r12,$r12,0x1
1c005ae0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ae4:	0015018e 	move	$r14,$r12
1c005ae8:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c005aec:	0011398c 	sub.w	$r12,$r12,$r14
1c005af0:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005b1c <OLED_Show_Str+0xa8>
1c005af4:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c005af8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005afc:	00448d8c 	srli.w	$r12,$r12,0x3
1c005b00:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005b04:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005b08:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005b0c:	001031ac 	add.w	$r12,$r13,$r12
1c005b10:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005b14:	03401d8c 	andi	$r12,$r12,0x7
1c005b18:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005b1c:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005b20:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005b24:	00448d8c 	srli.w	$r12,$r12,0x3
1c005b28:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005b2c:	0015018e 	move	$r14,$r12
1c005b30:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005b34:	0011398c 	sub.w	$r12,$r12,$r14
1c005b38:	6400098d 	bge	$r12,$r13,8(0x8) # 1c005b40 <OLED_Show_Str+0xcc>
1c005b3c:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c005b40:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005b44:	2800018c 	ld.b	$r12,$r12,0
1c005b48:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005b4c:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c005b50:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c005b60 <OLED_Show_Str+0xec>
1c005b54:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b58:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005b5c:	50016800 	b	360(0x168) # 1c005cc4 <OLED_Show_Str+0x250>
1c005b60:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005b64:	2800018d 	ld.b	$r13,$r12,0
1c005b68:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c005b6c:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c005b9c <OLED_Show_Str+0x128>
1c005b70:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005b74:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005b78:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005b7c:	001031ac 	add.w	$r12,$r13,$r12
1c005b80:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005b84:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005b88:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005b8c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005b90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b94:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005b98:	50004c00 	b	76(0x4c) # 1c005be4 <OLED_Show_Str+0x170>
1c005b9c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005ba0:	2800018c 	ld.b	$r12,$r12,0
1c005ba4:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005ba8:	2a3f5ecf 	ld.bu	$r15,$r22,-41(0xfd7)
1c005bac:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005bb0:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005bb4:	001501e7 	move	$r7,$r15
1c005bb8:	001501c6 	move	$r6,$r14
1c005bbc:	001501a5 	move	$r5,$r13
1c005bc0:	00150184 	move	$r4,$r12
1c005bc4:	57fa47ff 	bl	-1468(0xffffa44) # 1c005608 <OLED_ShowChar>
1c005bc8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005bcc:	0044858c 	srli.w	$r12,$r12,0x1
1c005bd0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005bd4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005bd8:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005bdc:	001031ac 	add.w	$r12,$r13,$r12
1c005be0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005be4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005be8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005bec:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005bf0:	5000d400 	b	212(0xd4) # 1c005cc4 <OLED_Show_Str+0x250>
1c005bf4:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c005bf8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005bfc:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c005c00:	001131cc 	sub.w	$r12,$r14,$r12
1c005c04:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005c30 <OLED_Show_Str+0x1bc>
1c005c08:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c005c0c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005c10:	00448d8c 	srli.w	$r12,$r12,0x3
1c005c14:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c18:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005c1c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005c20:	001031ac 	add.w	$r12,$r13,$r12
1c005c24:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005c28:	03401d8c 	andi	$r12,$r12,0x7
1c005c2c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005c30:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005c34:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005c38:	00448d8c 	srli.w	$r12,$r12,0x3
1c005c3c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c40:	0015018e 	move	$r14,$r12
1c005c44:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005c48:	0011398c 	sub.w	$r12,$r12,$r14
1c005c4c:	6400098d 	bge	$r12,$r13,8(0x8) # 1c005c54 <OLED_Show_Str+0x1e0>
1c005c50:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c005c54:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005c58:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005c5c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005c60:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c005c80 <OLED_Show_Str+0x20c>
1c005c64:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005c68:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005c6c:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c005c70:	001501a5 	move	$r5,$r13
1c005c74:	00150184 	move	$r4,$r12
1c005c78:	57fc57ff 	bl	-940(0xffffc54) # 1c0058cc <OLED_DrawFont32>
1c005c7c:	50002800 	b	40(0x28) # 1c005ca4 <OLED_Show_Str+0x230>
1c005c80:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005c84:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005c88:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c005ca4 <OLED_Show_Str+0x230>
1c005c8c:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005c90:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005c94:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c005c98:	001501a5 	move	$r5,$r13
1c005c9c:	00150184 	move	$r4,$r12
1c005ca0:	57fa93ff 	bl	-1392(0xffffa90) # 1c005730 <OLED_DrawFont16>
1c005ca4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005ca8:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c005cac:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005cb0:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005cb4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005cb8:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005cbc:	001031ac 	add.w	$r12,$r13,$r12
1c005cc0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005cc4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005cc8:	2800018c 	ld.b	$r12,$r12,0
1c005ccc:	47fe019f 	bnez	$r12,-512(0x7ffe00) # 1c005acc <OLED_Show_Str+0x58>
1c005cd0:	03400000 	andi	$r0,$r0,0x0
1c005cd4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005cd8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005cdc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005ce0:	4c000020 	jirl	$r0,$r1,0

1c005ce4 <main>:
main():
1c005ce4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005ce8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005cec:	29806076 	st.w	$r22,$r3,24(0x18)
1c005cf0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005cf4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005cf8:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c005cfc:	57f74bff 	bl	-2232(0xffff748) # 1c005444 <OLED_Init>
1c005d00:	540bb400 	bl	2996(0xbb4) # 1c0068b4 <BEEP_Init>
1c005d04:	54041400 	bl	1044(0x414) # 1c006118 <LED_Init>
1c005d08:	54046400 	bl	1124(0x464) # 1c00616c <KEY_Init>
1c005d0c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d10:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005d14:	57bb4fff 	bl	-17588(0xfffbb4c) # 1c001860 <gpio_set_direction>
1c005d18:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d1c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005d20:	57bb43ff 	bl	-17600(0xfffbb40) # 1c001860 <gpio_set_direction>
1c005d24:	00150005 	move	$r5,$r0
1c005d28:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005d2c:	57b8b3ff 	bl	-18256(0xfffb8b0) # 1c0015dc <gpio_write_pin>
1c005d30:	00150005 	move	$r5,$r0
1c005d34:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005d38:	57b8a7ff 	bl	-18268(0xfffb8a4) # 1c0015dc <gpio_write_pin>
1c005d3c:	02800c06 	addi.w	$r6,$r0,3(0x3)
1c005d40:	02804805 	addi.w	$r5,$r0,18(0x12)
1c005d44:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c005d48:	54047800 	bl	1144(0x478) # 1c0061c0 <DL_LN3X_Init>
1c005d4c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c005d50:	1c000066 	pcaddu12i	$r6,3(0x3)
1c005d54:	02a780c6 	addi.w	$r6,$r6,-1568(0x9e0)
1c005d58:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d5c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005d60:	57fd17ff 	bl	-748(0xffffd14) # 1c005a74 <OLED_Show_Str>
1c005d64:	54018000 	bl	384(0x180) # 1c005ee4 <Ultrasonic_Init>
1c005d68:	5401a800 	bl	424(0x1a8) # 1c005f10 <Ultrasonic_Test>
1c005d6c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005d70:	288b118c 	ld.w	$r12,$r12,708(0x2c4)
1c005d74:	2a40018d 	ld.hu	$r13,$r12,0
1c005d78:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c005d7c:	6800218d 	bltu	$r12,$r13,32(0x20) # 1c005d9c <main+0xb8>
1c005d80:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d84:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005d88:	57b857ff 	bl	-18348(0xfffb854) # 1c0015dc <gpio_write_pin>
1c005d8c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d90:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005d94:	57b84bff 	bl	-18360(0xfffb848) # 1c0015dc <gpio_write_pin>
1c005d98:	50001c00 	b	28(0x1c) # 1c005db4 <main+0xd0>
1c005d9c:	00150005 	move	$r5,$r0
1c005da0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005da4:	57b83bff 	bl	-18376(0xfffb838) # 1c0015dc <gpio_write_pin>
1c005da8:	00150005 	move	$r5,$r0
1c005dac:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005db0:	57b82fff 	bl	-18388(0xfffb82c) # 1c0015dc <gpio_write_pin>
1c005db4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005db8:	2889518c 	ld.w	$r12,$r12,596(0x254)
1c005dbc:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c005dc0:	2900018d 	st.b	$r13,$r12,0
1c005dc4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005dc8:	2889b18c 	ld.w	$r12,$r12,620(0x26c)
1c005dcc:	2a40018c 	ld.hu	$r12,$r12,0
1c005dd0:	0044a18c 	srli.w	$r12,$r12,0x8
1c005dd4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005dd8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005ddc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005de0:	2888b18c 	ld.w	$r12,$r12,556(0x22c)
1c005de4:	2900058d 	st.b	$r13,$r12,1(0x1)
1c005de8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005dec:	2889218c 	ld.w	$r12,$r12,584(0x248)
1c005df0:	2a40018c 	ld.hu	$r12,$r12,0
1c005df4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005df8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005dfc:	2888418c 	ld.w	$r12,$r12,528(0x210)
1c005e00:	2900098d 	st.b	$r13,$r12,2(0x2)
1c005e04:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005e08:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c005e0c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005e10:	2887f084 	ld.w	$r4,$r4,508(0x1fc)
1c005e14:	54067000 	bl	1648(0x670) # 1c006484 <DL_LN3X_Send>
1c005e18:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c005e1c:	57d7f7ff 	bl	-10252(0xfffd7f4) # 1c003610 <delay_ms>
1c005e20:	53ff4bff 	b	-184(0xfffff48) # 1c005d68 <main+0x84>

1c005e24 <Ultrasonic_Hardware_Init>:
Ultrasonic_Hardware_Init():
1c005e24:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005e28:	29803061 	st.w	$r1,$r3,12(0xc)
1c005e2c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005e30:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005e34:	00150005 	move	$r5,$r0
1c005e38:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005e3c:	57b81bff 	bl	-18408(0xfffb818) # 1c001654 <gpio_pin_remap>
1c005e40:	00150005 	move	$r5,$r0
1c005e44:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005e48:	57b80fff 	bl	-18420(0xfffb80c) # 1c001654 <gpio_pin_remap>
1c005e4c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005e50:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005e54:	57ba0fff 	bl	-17908(0xfffba0c) # 1c001860 <gpio_set_direction>
1c005e58:	00150005 	move	$r5,$r0
1c005e5c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005e60:	57ba03ff 	bl	-17920(0xfffba00) # 1c001860 <gpio_set_direction>
1c005e64:	03400000 	andi	$r0,$r0,0x0
1c005e68:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005e6c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005e70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005e74:	4c000020 	jirl	$r0,$r1,0

1c005e78 <Ultrasonic_Software_Init>:
Ultrasonic_Software_Init():
1c005e78:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005e7c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005e80:	29806076 	st.w	$r22,$r3,24(0x18)
1c005e84:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005e88:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005e8c:	57e143ff 	bl	-7872(0xfffe140) # 1c003fcc <Timer_Init>
1c005e90:	00150005 	move	$r5,$r0
1c005e94:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005e98:	57b9cbff 	bl	-17976(0xfffb9c8) # 1c001860 <gpio_set_direction>
1c005e9c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005ea0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c005ea4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005ea8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005eac:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005eb0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005eb4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005eb8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005ebc:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c005ec0:	00150185 	move	$r5,$r12
1c005ec4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005ec8:	03808184 	ori	$r4,$r12,0x20
1c005ecc:	57d88fff 	bl	-10100(0xfffd88c) # 1c003758 <EXTI_Init>
1c005ed0:	03400000 	andi	$r0,$r0,0x0
1c005ed4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005ed8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005edc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005ee0:	4c000020 	jirl	$r0,$r1,0

1c005ee4 <Ultrasonic_Init>:
Ultrasonic_Init():
1c005ee4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005ee8:	29803061 	st.w	$r1,$r3,12(0xc)
1c005eec:	29802076 	st.w	$r22,$r3,8(0x8)
1c005ef0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005ef4:	57ff33ff 	bl	-208(0xfffff30) # 1c005e24 <Ultrasonic_Hardware_Init>
1c005ef8:	57ff83ff 	bl	-128(0xfffff80) # 1c005e78 <Ultrasonic_Software_Init>
1c005efc:	03400000 	andi	$r0,$r0,0x0
1c005f00:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005f04:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005f08:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005f0c:	4c000020 	jirl	$r0,$r1,0

1c005f10 <Ultrasonic_Test>:
Ultrasonic_Test():
1c005f10:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005f14:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005f18:	29806076 	st.w	$r22,$r3,24(0x18)
1c005f1c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005f20:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005f24:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005f28:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005f2c:	57e0efff 	bl	-7956(0xfffe0ec) # 1c004018 <TIM_Cmd>
1c005f30:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005f34:	0283518c 	addi.w	$r12,$r12,212(0xd4)
1c005f38:	29800180 	st.w	$r0,$r12,0
1c005f3c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005f40:	50006800 	b	104(0x68) # 1c005fa8 <Ultrasonic_Test+0x98>
1c005f44:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005f48:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005f4c:	57b693ff 	bl	-18800(0xfffb690) # 1c0015dc <gpio_write_pin>
1c005f50:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005f54:	50001000 	b	16(0x10) # 1c005f64 <Ultrasonic_Test+0x54>
1c005f58:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005f5c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f60:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005f64:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005f68:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005f6c:	6fffed8d 	bgeu	$r12,$r13,-20(0x3ffec) # 1c005f58 <Ultrasonic_Test+0x48>
1c005f70:	00150005 	move	$r5,$r0
1c005f74:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005f78:	57b667ff 	bl	-18844(0xfffb664) # 1c0015dc <gpio_write_pin>
1c005f7c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005f80:	50001000 	b	16(0x10) # 1c005f90 <Ultrasonic_Test+0x80>
1c005f84:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005f88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f8c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005f90:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005f94:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005f98:	6fffed8d 	bgeu	$r12,$r13,-20(0x3ffec) # 1c005f84 <Ultrasonic_Test+0x74>
1c005f9c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005fa0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005fa4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005fa8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005fac:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005fb0:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c005f44 <Ultrasonic_Test+0x34>
1c005fb4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005fb8:	57d65bff 	bl	-10664(0xfffd658) # 1c003610 <delay_ms>
1c005fbc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005fc0:	0281198c 	addi.w	$r12,$r12,70(0x46)
1c005fc4:	2a40018d 	ld.hu	$r13,$r12,0
1c005fc8:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c005fcc:	6c01398d 	bgeu	$r12,$r13,312(0x138) # 1c006104 <Ultrasonic_Test+0x1f4>
1c005fd0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005fd4:	0281018c 	addi.w	$r12,$r12,64(0x40)
1c005fd8:	2880018c 	ld.w	$r12,$r12,0
1c005fdc:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c005fe0:	028099ad 	addi.w	$r13,$r13,38(0x26)
1c005fe4:	2a4001ad 	ld.hu	$r13,$r13,0
1c005fe8:	001501ae 	move	$r14,$r13
1c005fec:	0021398d 	div.wu	$r13,$r12,$r14
1c005ff0:	5c0009c0 	bne	$r14,$r0,8(0x8) # 1c005ff8 <Ultrasonic_Test+0xe8>
1c005ff4:	002a0007 	break	0x7
1c005ff8:	006f81ac 	bstrpick.w	$r12,$r13,0xf,0x0
1c005ffc:	02bfe98c 	addi.w	$r12,$r12,-6(0xffa)
1c006000:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006004:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006008:	0280498c 	addi.w	$r12,$r12,18(0x12)
1c00600c:	2940018d 	st.h	$r13,$r12,0
1c006010:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006014:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c006018:	2a40018d 	ld.hu	$r13,$r12,0
1c00601c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006020:	02bfe18c 	addi.w	$r12,$r12,-8(0xff8)
1c006024:	2940018d 	st.h	$r13,$r12,0
1c006028:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00602c:	02bfb98c 	addi.w	$r12,$r12,-18(0xfee)
1c006030:	2a40018c 	ld.hu	$r12,$r12,0
1c006034:	00150186 	move	$r6,$r12
1c006038:	1c000045 	pcaddu12i	$r5,2(0x2)
1c00603c:	029c40a5 	addi.w	$r5,$r5,1808(0x710)
1c006040:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006044:	28bf6084 	ld.w	$r4,$r4,-40(0xfd8)
1c006048:	57c4dfff 	bl	-15140(0xfffc4dc) # 1c002524 <sprintf>
1c00604c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006050:	1cc7ff66 	pcaddu12i	$r6,409595(0x63ffb)
1c006054:	28bf20c6 	ld.w	$r6,$r6,-56(0xfc8)
1c006058:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00605c:	02806004 	addi.w	$r4,$r0,24(0x18)
1c006060:	57fa17ff 	bl	-1516(0xffffa14) # 1c005a74 <OLED_Show_Str>
1c006064:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006068:	02bec98c 	addi.w	$r12,$r12,-78(0xfb2)
1c00606c:	2a40018c 	ld.hu	$r12,$r12,0
1c006070:	00150185 	move	$r5,$r12
1c006074:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006078:	029b5084 	addi.w	$r4,$r4,1748(0x6d4)
1c00607c:	57bb1bff 	bl	-17640(0xfffbb18) # 1c001b94 <myprintf>
1c006080:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006084:	02be598c 	addi.w	$r12,$r12,-106(0xf96)
1c006088:	2a40018d 	ld.hu	$r13,$r12,0
1c00608c:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c006090:	68005d8d 	bltu	$r12,$r13,92(0x5c) # 1c0060ec <Ultrasonic_Test+0x1dc>
1c006094:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006098:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c00609c:	57b543ff 	bl	-19136(0xfffb540) # 1c0015dc <gpio_write_pin>
1c0060a0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0060a4:	02bdd98c 	addi.w	$r12,$r12,-138(0xf76)
1c0060a8:	2a40018c 	ld.hu	$r12,$r12,0
1c0060ac:	0015018d 	move	$r13,$r12
1c0060b0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0060b4:	001c31ac 	mul.w	$r12,$r13,$r12
1c0060b8:	00150184 	move	$r4,$r12
1c0060bc:	57d557ff 	bl	-10924(0xfffd554) # 1c003610 <delay_ms>
1c0060c0:	00150005 	move	$r5,$r0
1c0060c4:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0060c8:	57b517ff 	bl	-19180(0xfffb514) # 1c0015dc <gpio_write_pin>
1c0060cc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0060d0:	02bd298c 	addi.w	$r12,$r12,-182(0xf4a)
1c0060d4:	2a40018c 	ld.hu	$r12,$r12,0
1c0060d8:	0015018d 	move	$r13,$r12
1c0060dc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0060e0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0060e4:	00150184 	move	$r4,$r12
1c0060e8:	57d52bff 	bl	-10968(0xfffd528) # 1c003610 <delay_ms>
1c0060ec:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0060f0:	02bc598c 	addi.w	$r12,$r12,-234(0xf16)
1c0060f4:	29400180 	st.h	$r0,$r12,0
1c0060f8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0060fc:	02bc618c 	addi.w	$r12,$r12,-232(0xf18)
1c006100:	29800180 	st.w	$r0,$r12,0
1c006104:	03400000 	andi	$r0,$r0,0x0
1c006108:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00610c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006110:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006114:	4c000020 	jirl	$r0,$r1,0

1c006118 <LED_Init>:
LED_Init():
1c006118:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00611c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006120:	29802076 	st.w	$r22,$r3,8(0x8)
1c006124:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006128:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00612c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006130:	57b733ff 	bl	-18640(0xfffb730) # 1c001860 <gpio_set_direction>
1c006134:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006138:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c00613c:	57b727ff 	bl	-18652(0xfffb724) # 1c001860 <gpio_set_direction>
1c006140:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006144:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c006148:	57b71bff 	bl	-18664(0xfffb718) # 1c001860 <gpio_set_direction>
1c00614c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006150:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c006154:	57b70fff 	bl	-18676(0xfffb70c) # 1c001860 <gpio_set_direction>
1c006158:	03400000 	andi	$r0,$r0,0x0
1c00615c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006160:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006164:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006168:	4c000020 	jirl	$r0,$r1,0

1c00616c <KEY_Init>:
KEY_Init():
1c00616c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006170:	29803061 	st.w	$r1,$r3,12(0xc)
1c006174:	29802076 	st.w	$r22,$r3,8(0x8)
1c006178:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00617c:	00150005 	move	$r5,$r0
1c006180:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006184:	57b6dfff 	bl	-18724(0xfffb6dc) # 1c001860 <gpio_set_direction>
1c006188:	00150005 	move	$r5,$r0
1c00618c:	02805c04 	addi.w	$r4,$r0,23(0x17)
1c006190:	57b6d3ff 	bl	-18736(0xfffb6d0) # 1c001860 <gpio_set_direction>
1c006194:	00150005 	move	$r5,$r0
1c006198:	02806004 	addi.w	$r4,$r0,24(0x18)
1c00619c:	57b6c7ff 	bl	-18748(0xfffb6c4) # 1c001860 <gpio_set_direction>
1c0061a0:	00150005 	move	$r5,$r0
1c0061a4:	02806404 	addi.w	$r4,$r0,25(0x19)
1c0061a8:	57b6bbff 	bl	-18760(0xfffb6b8) # 1c001860 <gpio_set_direction>
1c0061ac:	03400000 	andi	$r0,$r0,0x0
1c0061b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0061b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0061b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0061bc:	4c000020 	jirl	$r0,$r1,0

1c0061c0 <DL_LN3X_Init>:
DL_LN3X_Init():
1c0061c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0061c4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0061c8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0061cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0061d0:	0015008c 	move	$r12,$r4
1c0061d4:	001500ae 	move	$r14,$r5
1c0061d8:	001500cd 	move	$r13,$r6
1c0061dc:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0061e0:	001501cc 	move	$r12,$r14
1c0061e4:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0061e8:	001501ac 	move	$r12,$r13
1c0061ec:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0061f0:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0061f4:	03880184 	ori	$r4,$r12,0x200
1c0061f8:	57c8abff 	bl	-14168(0xfffc8a8) # 1c002aa0 <Uart0_init>
1c0061fc:	02800804 	addi.w	$r4,$r0,2(0x2)
1c006200:	5401f000 	bl	496(0x1f0) # 1c0063f0 <DL_LN3X_Baud_Rate>
1c006204:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c006208:	57d40bff 	bl	-11256(0xfffd408) # 1c003610 <delay_ms>
1c00620c:	1400004c 	lu12i.w	$r12,2(0x2)
1c006210:	03960184 	ori	$r4,$r12,0x580
1c006214:	57c88fff 	bl	-14196(0xfffc88c) # 1c002aa0 <Uart0_init>
1c006218:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00621c:	5401d400 	bl	468(0x1d4) # 1c0063f0 <DL_LN3X_Baud_Rate>
1c006220:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c006224:	57d3efff 	bl	-11284(0xfffd3ec) # 1c003610 <delay_ms>
1c006228:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c00622c:	57d3e7ff 	bl	-11292(0xfffd3e4) # 1c003610 <delay_ms>
1c006230:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006234:	00150184 	move	$r4,$r12
1c006238:	54007400 	bl	116(0x74) # 1c0062ac <DL_LN3X_Address>
1c00623c:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c006240:	57d3d3ff 	bl	-11312(0xfffd3d0) # 1c003610 <delay_ms>
1c006244:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c006248:	00150184 	move	$r4,$r12
1c00624c:	5400d400 	bl	212(0xd4) # 1c006320 <DL_LN3X_Channel>
1c006250:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c006254:	57d3bfff 	bl	-11332(0xfffd3bc) # 1c003610 <delay_ms>
1c006258:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c00625c:	00150184 	move	$r4,$r12
1c006260:	54011c00 	bl	284(0x11c) # 1c00637c <DL_LN3X_Network_Id>
1c006264:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c006268:	57d3abff 	bl	-11352(0xfffd3a8) # 1c003610 <delay_ms>
1c00626c:	1400038c 	lu12i.w	$r12,28(0x1c)
1c006270:	03880184 	ori	$r4,$r12,0x200
1c006274:	57c82fff 	bl	-14292(0xfffc82c) # 1c002aa0 <Uart0_init>
1c006278:	5401d400 	bl	468(0x1d4) # 1c00644c <DL_LN3X_Reset>
1c00627c:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c006280:	57d393ff 	bl	-11376(0xfffd390) # 1c003610 <delay_ms>
1c006284:	1400004c 	lu12i.w	$r12,2(0x2)
1c006288:	03960184 	ori	$r4,$r12,0x580
1c00628c:	57c817ff 	bl	-14316(0xfffc814) # 1c002aa0 <Uart0_init>
1c006290:	5401bc00 	bl	444(0x1bc) # 1c00644c <DL_LN3X_Reset>
1c006294:	03400000 	andi	$r0,$r0,0x0
1c006298:	00150184 	move	$r4,$r12
1c00629c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0062a0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0062a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0062a8:	4c000020 	jirl	$r0,$r1,0

1c0062ac <DL_LN3X_Address>:
DL_LN3X_Address():
1c0062ac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0062b0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0062b4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0062b8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0062bc:	0015008c 	move	$r12,$r4
1c0062c0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0062c4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0062c8:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0062cc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0062d0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062d4:	02b5c18c 	addi.w	$r12,$r12,-656(0xd70)
1c0062d8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0062dc:	29001d8d 	st.b	$r13,$r12,7(0x7)
1c0062e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0062e4:	0048a18c 	srai.w	$r12,$r12,0x8
1c0062e8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0062ec:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062f0:	02b5518c 	addi.w	$r12,$r12,-684(0xd54)
1c0062f4:	2900218d 	st.b	$r13,$r12,8(0x8)
1c0062f8:	02802806 	addi.w	$r6,$r0,10(0xa)
1c0062fc:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c006300:	02b510a5 	addi.w	$r5,$r5,-700(0xd44)
1c006304:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006308:	57c6d7ff 	bl	-14636(0xfffc6d4) # 1c0029dc <UART_SendDataALL>
1c00630c:	03400000 	andi	$r0,$r0,0x0
1c006310:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006314:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006318:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00631c:	4c000020 	jirl	$r0,$r1,0

1c006320 <DL_LN3X_Channel>:
DL_LN3X_Channel():
1c006320:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006324:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006328:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00632c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006330:	0015008c 	move	$r12,$r4
1c006334:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006338:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00633c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006340:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006344:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006348:	02b4518c 	addi.w	$r12,$r12,-748(0xd14)
1c00634c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006350:	29001d8d 	st.b	$r13,$r12,7(0x7)
1c006354:	02802406 	addi.w	$r6,$r0,9(0x9)
1c006358:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c00635c:	02b400a5 	addi.w	$r5,$r5,-768(0xd00)
1c006360:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006364:	57c67bff 	bl	-14728(0xfffc678) # 1c0029dc <UART_SendDataALL>
1c006368:	03400000 	andi	$r0,$r0,0x0
1c00636c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006370:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006374:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006378:	4c000020 	jirl	$r0,$r1,0

1c00637c <DL_LN3X_Network_Id>:
DL_LN3X_Network_Id():
1c00637c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006380:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006384:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006388:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00638c:	0015008c 	move	$r12,$r4
1c006390:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006394:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006398:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00639c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0063a0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063a4:	02b2b18c 	addi.w	$r12,$r12,-852(0xcac)
1c0063a8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0063ac:	29001d8d 	st.b	$r13,$r12,7(0x7)
1c0063b0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0063b4:	0048a18c 	srai.w	$r12,$r12,0x8
1c0063b8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0063bc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063c0:	02b2418c 	addi.w	$r12,$r12,-880(0xc90)
1c0063c4:	2900218d 	st.b	$r13,$r12,8(0x8)
1c0063c8:	02802806 	addi.w	$r6,$r0,10(0xa)
1c0063cc:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0063d0:	02b200a5 	addi.w	$r5,$r5,-896(0xc80)
1c0063d4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0063d8:	57c607ff 	bl	-14844(0xfffc604) # 1c0029dc <UART_SendDataALL>
1c0063dc:	03400000 	andi	$r0,$r0,0x0
1c0063e0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0063e4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0063e8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0063ec:	4c000020 	jirl	$r0,$r1,0

1c0063f0 <DL_LN3X_Baud_Rate>:
DL_LN3X_Baud_Rate():
1c0063f0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0063f4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0063f8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0063fc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006400:	0015008c 	move	$r12,$r4
1c006404:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006408:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00640c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006410:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006414:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006418:	02b1418c 	addi.w	$r12,$r12,-944(0xc50)
1c00641c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006420:	29001d8d 	st.b	$r13,$r12,7(0x7)
1c006424:	02802406 	addi.w	$r6,$r0,9(0x9)
1c006428:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c00642c:	02b0f0a5 	addi.w	$r5,$r5,-964(0xc3c)
1c006430:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006434:	57c5abff 	bl	-14936(0xfffc5a8) # 1c0029dc <UART_SendDataALL>
1c006438:	03400000 	andi	$r0,$r0,0x0
1c00643c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006440:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006444:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006448:	4c000020 	jirl	$r0,$r1,0

1c00644c <DL_LN3X_Reset>:
DL_LN3X_Reset():
1c00644c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006450:	29803061 	st.w	$r1,$r3,12(0xc)
1c006454:	29802076 	st.w	$r22,$r3,8(0x8)
1c006458:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00645c:	02802006 	addi.w	$r6,$r0,8(0x8)
1c006460:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c006464:	02b040a5 	addi.w	$r5,$r5,-1008(0xc10)
1c006468:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c00646c:	57c573ff 	bl	-14992(0xfffc570) # 1c0029dc <UART_SendDataALL>
1c006470:	03400000 	andi	$r0,$r0,0x0
1c006474:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006478:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00647c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006480:	4c000020 	jirl	$r0,$r1,0

1c006484 <DL_LN3X_Send>:
DL_LN3X_Send():
1c006484:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006488:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00648c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006490:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006494:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006498:	001500ac 	move	$r12,$r5
1c00649c:	001500cd 	move	$r13,$r6
1c0064a0:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c0064a4:	001501ac 	move	$r12,$r13
1c0064a8:	297f62cc 	st.h	$r12,$r22,-40(0xfd8)
1c0064ac:	0283f805 	addi.w	$r5,$r0,254(0xfe)
1c0064b0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0064b4:	57c4dfff 	bl	-15140(0xfffc4dc) # 1c002990 <UART_SendData>
1c0064b8:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c0064bc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0064c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0064c4:	00150185 	move	$r5,$r12
1c0064c8:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0064cc:	57c4c7ff 	bl	-15164(0xfffc4c4) # 1c002990 <UART_SendData>
1c0064d0:	02824005 	addi.w	$r5,$r0,144(0x90)
1c0064d4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0064d8:	57c4bbff 	bl	-15176(0xfffc4b8) # 1c002990 <UART_SendData>
1c0064dc:	02824405 	addi.w	$r5,$r0,145(0x91)
1c0064e0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0064e4:	57c4afff 	bl	-15188(0xfffc4ac) # 1c002990 <UART_SendData>
1c0064e8:	2a7f62cc 	ld.hu	$r12,$r22,-40(0xfd8)
1c0064ec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0064f0:	00150185 	move	$r5,$r12
1c0064f4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0064f8:	57c49bff 	bl	-15208(0xfffc498) # 1c002990 <UART_SendData>
1c0064fc:	2a7f62cc 	ld.hu	$r12,$r22,-40(0xfd8)
1c006500:	0044a18c 	srli.w	$r12,$r12,0x8
1c006504:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006508:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00650c:	00150185 	move	$r5,$r12
1c006510:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006514:	57c47fff 	bl	-15236(0xfffc47c) # 1c002990 <UART_SendData>
1c006518:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00651c:	50009400 	b	148(0x94) # 1c0065b0 <DL_LN3X_Send+0x12c>
1c006520:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006524:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006528:	001031ac 	add.w	$r12,$r13,$r12
1c00652c:	2a00018d 	ld.bu	$r13,$r12,0
1c006530:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c006534:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c006554 <DL_LN3X_Send+0xd0>
1c006538:	0283f805 	addi.w	$r5,$r0,254(0xfe)
1c00653c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006540:	57c453ff 	bl	-15280(0xfffc450) # 1c002990 <UART_SendData>
1c006544:	0283f405 	addi.w	$r5,$r0,253(0xfd)
1c006548:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c00654c:	57c447ff 	bl	-15292(0xfffc444) # 1c002990 <UART_SendData>
1c006550:	50005400 	b	84(0x54) # 1c0065a4 <DL_LN3X_Send+0x120>
1c006554:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006558:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00655c:	001031ac 	add.w	$r12,$r13,$r12
1c006560:	2a00018d 	ld.bu	$r13,$r12,0
1c006564:	0283f80c 	addi.w	$r12,$r0,254(0xfe)
1c006568:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c006588 <DL_LN3X_Send+0x104>
1c00656c:	0283f805 	addi.w	$r5,$r0,254(0xfe)
1c006570:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006574:	57c41fff 	bl	-15332(0xfffc41c) # 1c002990 <UART_SendData>
1c006578:	0283f005 	addi.w	$r5,$r0,252(0xfc)
1c00657c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c006580:	57c413ff 	bl	-15344(0xfffc410) # 1c002990 <UART_SendData>
1c006584:	50002000 	b	32(0x20) # 1c0065a4 <DL_LN3X_Send+0x120>
1c006588:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00658c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006590:	001031ac 	add.w	$r12,$r13,$r12
1c006594:	2a00018c 	ld.bu	$r12,$r12,0
1c006598:	00150185 	move	$r5,$r12
1c00659c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0065a0:	57c3f3ff 	bl	-15376(0xfffc3f0) # 1c002990 <UART_SendData>
1c0065a4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0065a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0065ac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0065b0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0065b4:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c0065b8:	6bff69ac 	bltu	$r13,$r12,-152(0x3ff68) # 1c006520 <DL_LN3X_Send+0x9c>
1c0065bc:	0283fc05 	addi.w	$r5,$r0,255(0xff)
1c0065c0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0065c4:	57c3cfff 	bl	-15412(0xfffc3cc) # 1c002990 <UART_SendData>
1c0065c8:	03400000 	andi	$r0,$r0,0x0
1c0065cc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0065d0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0065d4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0065d8:	4c000020 	jirl	$r0,$r1,0

1c0065dc <Queue_isEmpty>:
Queue_isEmpty():
1c0065dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0065e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0065e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0065e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0065ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0065f0:	44000d80 	bnez	$r12,12(0xc) # 1c0065fc <Queue_isEmpty+0x20>
1c0065f4:	0015000c 	move	$r12,$r0
1c0065f8:	50002400 	b	36(0x24) # 1c00661c <Queue_isEmpty+0x40>
1c0065fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006600:	2a40018d 	ld.hu	$r13,$r12,0
1c006604:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006608:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c00660c:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c006618 <Queue_isEmpty+0x3c>
1c006610:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006614:	50000800 	b	8(0x8) # 1c00661c <Queue_isEmpty+0x40>
1c006618:	0015000c 	move	$r12,$r0
1c00661c:	00150184 	move	$r4,$r12
1c006620:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006624:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006628:	4c000020 	jirl	$r0,$r1,0

1c00662c <Queue_HadUse>:
Queue_HadUse():
1c00662c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006630:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006634:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006638:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00663c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006640:	44000d80 	bnez	$r12,12(0xc) # 1c00664c <Queue_HadUse+0x20>
1c006644:	0015000c 	move	$r12,$r0
1c006648:	50003800 	b	56(0x38) # 1c006680 <Queue_HadUse+0x54>
1c00664c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006650:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c006654:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006658:	2a40018c 	ld.hu	$r12,$r12,0
1c00665c:	001131ac 	sub.w	$r12,$r13,$r12
1c006660:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006664:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c006668:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00666c:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006670:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c006674:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00667c <Queue_HadUse+0x50>
1c006678:	002a0007 	break	0x7
1c00667c:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006680:	00150184 	move	$r4,$r12
1c006684:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006688:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00668c:	4c000020 	jirl	$r0,$r1,0

1c006690 <Queue_NoUse>:
Queue_NoUse():
1c006690:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006694:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006698:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00669c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0066a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0066a4:	44000d80 	bnez	$r12,12(0xc) # 1c0066b0 <Queue_NoUse+0x20>
1c0066a8:	0015000c 	move	$r12,$r0
1c0066ac:	50004000 	b	64(0x40) # 1c0066ec <Queue_NoUse+0x5c>
1c0066b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0066b4:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c0066b8:	0015018d 	move	$r13,$r12
1c0066bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0066c0:	2a40018c 	ld.hu	$r12,$r12,0
1c0066c4:	001131ac 	sub.w	$r12,$r13,$r12
1c0066c8:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c0066cc:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0066d0:	0020b1ae 	mod.w	$r14,$r13,$r12
1c0066d4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0066dc <Queue_NoUse+0x4c>
1c0066d8:	002a0007 	break	0x7
1c0066dc:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0066e0:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c0066e4:	001131ac 	sub.w	$r12,$r13,$r12
1c0066e8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0066ec:	00150184 	move	$r4,$r12
1c0066f0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0066f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0066f8:	4c000020 	jirl	$r0,$r1,0

1c0066fc <Queue_Wirte>:
Queue_Wirte():
1c0066fc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006700:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006704:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006708:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00670c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006710:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006714:	001500cc 	move	$r12,$r6
1c006718:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c00671c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006720:	44000d80 	bnez	$r12,12(0xc) # 1c00672c <Queue_Wirte+0x30>
1c006724:	0015000c 	move	$r12,$r0
1c006728:	50009c00 	b	156(0x9c) # 1c0067c4 <Queue_Wirte+0xc8>
1c00672c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c006730:	57ff63ff 	bl	-160(0xfffff60) # 1c006690 <Queue_NoUse>
1c006734:	0015008c 	move	$r12,$r4
1c006738:	0015018d 	move	$r13,$r12
1c00673c:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006740:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c00674c <Queue_Wirte+0x50>
1c006744:	0015000c 	move	$r12,$r0
1c006748:	50007c00 	b	124(0x7c) # 1c0067c4 <Queue_Wirte+0xc8>
1c00674c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006750:	50006400 	b	100(0x64) # 1c0067b4 <Queue_Wirte+0xb8>
1c006754:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006758:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00675c:	001031ac 	add.w	$r12,$r13,$r12
1c006760:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006764:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c006768:	001501ae 	move	$r14,$r13
1c00676c:	2a00018d 	ld.bu	$r13,$r12,0
1c006770:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006774:	0010398c 	add.w	$r12,$r12,$r14
1c006778:	2900118d 	st.b	$r13,$r12,4(0x4)
1c00677c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006780:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c006784:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006788:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00678c:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006790:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c006794:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00679c <Queue_Wirte+0xa0>
1c006798:	002a0007 	break	0x7
1c00679c:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c0067a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0067a4:	2940098d 	st.h	$r13,$r12,2(0x2)
1c0067a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0067b4:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0067b8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0067bc:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c006754 <Queue_Wirte+0x58>
1c0067c0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0067c4:	00150184 	move	$r4,$r12
1c0067c8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0067cc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0067d0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0067d4:	4c000020 	jirl	$r0,$r1,0

1c0067d8 <Queue_Read>:
Queue_Read():
1c0067d8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0067dc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0067e0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0067e4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0067e8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0067ec:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0067f0:	001500cc 	move	$r12,$r6
1c0067f4:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c0067f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0067fc:	44000d80 	bnez	$r12,12(0xc) # 1c006808 <Queue_Read+0x30>
1c006800:	0015000c 	move	$r12,$r0
1c006804:	50009c00 	b	156(0x9c) # 1c0068a0 <Queue_Read+0xc8>
1c006808:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00680c:	57fe23ff 	bl	-480(0xffffe20) # 1c00662c <Queue_HadUse>
1c006810:	0015008c 	move	$r12,$r4
1c006814:	0015018d 	move	$r13,$r12
1c006818:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c00681c:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c006828 <Queue_Read+0x50>
1c006820:	0015000c 	move	$r12,$r0
1c006824:	50007c00 	b	124(0x7c) # 1c0068a0 <Queue_Read+0xc8>
1c006828:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00682c:	50006400 	b	100(0x64) # 1c006890 <Queue_Read+0xb8>
1c006830:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006834:	2a40018c 	ld.hu	$r12,$r12,0
1c006838:	0015018e 	move	$r14,$r12
1c00683c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006840:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006844:	001031ac 	add.w	$r12,$r13,$r12
1c006848:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00684c:	001039ad 	add.w	$r13,$r13,$r14
1c006850:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c006854:	2900018d 	st.b	$r13,$r12,0
1c006858:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00685c:	2a40018c 	ld.hu	$r12,$r12,0
1c006860:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006864:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006868:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c00686c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c006870:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006878 <Queue_Read+0xa0>
1c006874:	002a0007 	break	0x7
1c006878:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c00687c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006880:	2940018d 	st.h	$r13,$r12,0
1c006884:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006888:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00688c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006890:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006894:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006898:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c006830 <Queue_Read+0x58>
1c00689c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0068a0:	00150184 	move	$r4,$r12
1c0068a4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0068a8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0068ac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0068b0:	4c000020 	jirl	$r0,$r1,0

1c0068b4 <BEEP_Init>:
BEEP_Init():
1c0068b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0068b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0068bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0068c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0068c4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0068c8:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0068cc:	57af97ff 	bl	-20588(0xfffaf94) # 1c001860 <gpio_set_direction>
1c0068d0:	03400000 	andi	$r0,$r0,0x0
1c0068d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0068d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0068dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0068e0:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c006900 <msg_wakeup>:
msg_wakeup():
1c006900:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01d460 <_sidata+0x14d0c>
1c006904:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c006909 <hexdecarr>:
hexdecarr():
1c006909:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c00690d:	37363534 	0x37363534
1c006911:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfeca49 <_start-0x135b7>
1c006915:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfece79 <_start-0x13187>
1c006919:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00691d:	79654b0a 	0x79654b0a
1c006921:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c006925:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c006929:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c00692d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01d99d <_sidata+0x15249>
1c006931:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffd891 <_start-0x276f>
1c006935:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c006939:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffd89d <_start-0x2763>
1c00693d:	72616220 	0x72616220
1c006941:	0a0d216b 	0x0a0d216b
1c006945:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006949:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffcabd <_start-0x3543>
1c00694d:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c006951:	b4000a0d 	0xb4000a0d
1c006955:	d01c001d 	0xd01c001d
1c006959:	d01c001e 	0xd01c001e
1c00695d:	d01c001e 	0xd01c001e
1c006961:	d01c001e 	0xd01c001e
1c006965:	d01c001e 	0xd01c001e
1c006969:	d01c001e 	0xd01c001e
1c00696d:	d01c001e 	0xd01c001e
1c006971:	d01c001e 	0xd01c001e
1c006975:	d01c001e 	0xd01c001e
1c006979:	d01c001e 	0xd01c001e
1c00697d:	cc1c001e 	0xcc1c001e
1c006981:	541c001d 	bl	7609344(0x741c00) # 1c748581 <_sidata+0x73fe2d>
1c006985:	541c001e 	bl	7871488(0x781c00) # 1c788585 <_sidata+0x77fe31>
1c006989:	541c001e 	bl	7871488(0x781c00) # 1c788589 <_sidata+0x77fe35>
1c00698d:	541c001e 	bl	7871488(0x781c00) # 1c78858d <_sidata+0x77fe39>
1c006991:	541c001e 	bl	7871488(0x781c00) # 1c788591 <_sidata+0x77fe3d>
1c006995:	541c001e 	bl	7871488(0x781c00) # 1c788595 <_sidata+0x77fe41>
1c006999:	541c001e 	bl	7871488(0x781c00) # 1c788599 <_sidata+0x77fe45>
1c00699d:	541c001e 	bl	7871488(0x781c00) # 1c78859d <_sidata+0x77fe49>
1c0069a1:	541c001e 	bl	7871488(0x781c00) # 1c7885a1 <_sidata+0x77fe4d>
1c0069a5:	d01c001e 	0xd01c001e
1c0069a9:	d01c001e 	0xd01c001e
1c0069ad:	d01c001e 	0xd01c001e
1c0069b1:	d01c001e 	0xd01c001e
1c0069b5:	d01c001e 	0xd01c001e
1c0069b9:	d01c001e 	0xd01c001e
1c0069bd:	d01c001e 	0xd01c001e
1c0069c1:	d01c001e 	0xd01c001e
1c0069c5:	d01c001e 	0xd01c001e
1c0069c9:	d01c001e 	0xd01c001e
1c0069cd:	d01c001e 	0xd01c001e
1c0069d1:	d01c001e 	0xd01c001e
1c0069d5:	d01c001e 	0xd01c001e
1c0069d9:	d01c001e 	0xd01c001e
1c0069dd:	d01c001e 	0xd01c001e
1c0069e1:	d01c001e 	0xd01c001e
1c0069e5:	d01c001e 	0xd01c001e
1c0069e9:	d01c001e 	0xd01c001e
1c0069ed:	d01c001e 	0xd01c001e
1c0069f1:	d01c001e 	0xd01c001e
1c0069f5:	d01c001e 	0xd01c001e
1c0069f9:	d01c001e 	0xd01c001e
1c0069fd:	d01c001e 	0xd01c001e
1c006a01:	d01c001e 	0xd01c001e
1c006a05:	d01c001e 	0xd01c001e
1c006a09:	d01c001e 	0xd01c001e
1c006a0d:	d01c001e 	0xd01c001e
1c006a11:	d01c001e 	0xd01c001e
1c006a15:	d01c001e 	0xd01c001e
1c006a19:	d01c001e 	0xd01c001e
1c006a1d:	d01c001e 	0xd01c001e
1c006a21:	d01c001e 	0xd01c001e
1c006a25:	d01c001e 	0xd01c001e
1c006a29:	d01c001e 	0xd01c001e
1c006a2d:	d01c001e 	0xd01c001e
1c006a31:	d01c001e 	0xd01c001e
1c006a35:	d01c001e 	0xd01c001e
1c006a39:	d01c001e 	0xd01c001e
1c006a3d:	d01c001e 	0xd01c001e
1c006a41:	d01c001e 	0xd01c001e
1c006a45:	441c001e 	bnez	$r0,-517120(0x781c00) # 1bf88645 <_start-0x779bb>
1c006a49:	6c1c001d 	bgeu	$r0,$r29,7168(0x1c00) # 1c008649 <tfont32+0x955>
1c006a4d:	d41c001c 	0xd41c001c
1c006a51:	d01c001c 	0xd01c001c
1c006a55:	d01c001e 	0xd01c001e
1c006a59:	d01c001e 	0xd01c001e
1c006a5d:	d01c001e 	0xd01c001e
1c006a61:	d01c001e 	0xd01c001e
1c006a65:	d01c001e 	0xd01c001e
1c006a69:	d01c001e 	0xd01c001e
1c006a6d:	d01c001e 	0xd01c001e
1c006a71:	d01c001e 	0xd01c001e
1c006a75:	d01c001e 	0xd01c001e
1c006a79:	0c1c001e 	0x0c1c001e
1c006a7d:	7c1c001d 	0x7c1c001d
1c006a81:	d01c001d 	0xd01c001d
1c006a85:	d01c001e 	0xd01c001e
1c006a89:	401c001e 	beqz	$r0,-517120(0x781c00) # 1bf88689 <_start-0x77977>
1c006a8d:	d01c001c 	0xd01c001c
1c006a91:	9c1c001e 	0x9c1c001e
1c006a95:	d01c001c 	0xd01c001c
1c006a99:	d01c001e 	0xd01c001e
1c006a9d:	7c1c001e 	0x7c1c001e
1c006aa1:	681c001d 	bltu	$r0,$r29,7168(0x1c00) # 1c0086a1 <tfont32+0x9ad>
1c006aa5:	8c1c0023 	0x8c1c0023
1c006aa9:	8c1c0024 	0x8c1c0024
1c006aad:	8c1c0024 	0x8c1c0024
1c006ab1:	8c1c0024 	0x8c1c0024
1c006ab5:	8c1c0024 	0x8c1c0024
1c006ab9:	8c1c0024 	0x8c1c0024
1c006abd:	8c1c0024 	0x8c1c0024
1c006ac1:	8c1c0024 	0x8c1c0024
1c006ac5:	8c1c0024 	0x8c1c0024
1c006ac9:	8c1c0024 	0x8c1c0024
1c006acd:	881c0024 	0x881c0024
1c006ad1:	101c0023 	addu16i.d	$r3,$r1,1792(0x700)
1c006ad5:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006ad9:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006add:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006ae1:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006ae5:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006ae9:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006aed:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006af1:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c006af5:	8c1c0024 	0x8c1c0024
1c006af9:	8c1c0024 	0x8c1c0024
1c006afd:	8c1c0024 	0x8c1c0024
1c006b01:	8c1c0024 	0x8c1c0024
1c006b05:	8c1c0024 	0x8c1c0024
1c006b09:	8c1c0024 	0x8c1c0024
1c006b0d:	8c1c0024 	0x8c1c0024
1c006b11:	8c1c0024 	0x8c1c0024
1c006b15:	8c1c0024 	0x8c1c0024
1c006b19:	8c1c0024 	0x8c1c0024
1c006b1d:	8c1c0024 	0x8c1c0024
1c006b21:	8c1c0024 	0x8c1c0024
1c006b25:	8c1c0024 	0x8c1c0024
1c006b29:	8c1c0024 	0x8c1c0024
1c006b2d:	8c1c0024 	0x8c1c0024
1c006b31:	8c1c0024 	0x8c1c0024
1c006b35:	8c1c0024 	0x8c1c0024
1c006b39:	8c1c0024 	0x8c1c0024
1c006b3d:	8c1c0024 	0x8c1c0024
1c006b41:	8c1c0024 	0x8c1c0024
1c006b45:	8c1c0024 	0x8c1c0024
1c006b49:	8c1c0024 	0x8c1c0024
1c006b4d:	8c1c0024 	0x8c1c0024
1c006b51:	8c1c0024 	0x8c1c0024
1c006b55:	8c1c0024 	0x8c1c0024
1c006b59:	8c1c0024 	0x8c1c0024
1c006b5d:	8c1c0024 	0x8c1c0024
1c006b61:	8c1c0024 	0x8c1c0024
1c006b65:	8c1c0024 	0x8c1c0024
1c006b69:	8c1c0024 	0x8c1c0024
1c006b6d:	8c1c0024 	0x8c1c0024
1c006b71:	8c1c0024 	0x8c1c0024
1c006b75:	8c1c0024 	0x8c1c0024
1c006b79:	8c1c0024 	0x8c1c0024
1c006b7d:	8c1c0024 	0x8c1c0024
1c006b81:	8c1c0024 	0x8c1c0024
1c006b85:	8c1c0024 	0x8c1c0024
1c006b89:	8c1c0024 	0x8c1c0024
1c006b8d:	8c1c0024 	0x8c1c0024
1c006b91:	8c1c0024 	0x8c1c0024
1c006b95:	f01c0024 	0xf01c0024
1c006b99:	081c0022 	fmadd.s	$f2,$f1,$f0,$f24
1c006b9d:	781c0022 	0x781c0022
1c006ba1:	8c1c0022 	0x8c1c0022
1c006ba5:	8c1c0024 	0x8c1c0024
1c006ba9:	8c1c0024 	0x8c1c0024
1c006bad:	8c1c0024 	0x8c1c0024
1c006bb1:	8c1c0024 	0x8c1c0024
1c006bb5:	8c1c0024 	0x8c1c0024
1c006bb9:	8c1c0024 	0x8c1c0024
1c006bbd:	8c1c0024 	0x8c1c0024
1c006bc1:	8c1c0024 	0x8c1c0024
1c006bc5:	8c1c0024 	0x8c1c0024
1c006bc9:	b41c0024 	0xb41c0024
1c006bcd:	2c1c0022 	vld	$vr2,$r1,1792(0x700)
1c006bd1:	8c1c0023 	0x8c1c0023
1c006bd5:	8c1c0024 	0x8c1c0024
1c006bd9:	d81c0024 	0xd81c0024
1c006bdd:	8c1c0021 	0x8c1c0021
1c006be1:	3c1c0024 	0x3c1c0024
1c006be5:	8c1c0022 	0x8c1c0022
1c006be9:	8c1c0024 	0x8c1c0024
1c006bed:	2c1c0024 	vld	$vr4,$r1,1792(0x700)
1c006bf1:	0a1c0023 	xvfmadd.s	$xr3,$xr1,$xr0,$xr24
1c006bf5:	7c000000 	0x7c000000
1c006bf9:	7c7c7c7c 	0x7c7c7c7c
1c006bfd:	7c7c7c7c 	0x7c7c7c7c
1c006c01:	7c7c7c7c 	0x7c7c7c7c
1c006c05:	7c7c7c7c 	0x7c7c7c7c
1c006c09:	7c7c7c7c 	0x7c7c7c7c
1c006c0d:	7c7c7c7c 	0x7c7c7c7c
1c006c11:	7c7c7c7c 	0x7c7c7c7c
1c006c15:	7c7c7c7c 	0x7c7c7c7c
1c006c19:	7c7c7c7c 	0x7c7c7c7c
1c006c1d:	7c7c7c7c 	0x7c7c7c7c
1c006c21:	7c7c7c7c 	0x7c7c7c7c
1c006c25:	7c7c7c7c 	0x7c7c7c7c
1c006c29:	7c7c7c7c 	0x7c7c7c7c
1c006c2d:	7c7c7c7c 	0x7c7c7c7c
1c006c31:	7c7c7c7c 	0x7c7c7c7c
1c006c35:	7c7c7c7c 	0x7c7c7c7c
1c006c39:	7c7c7c7c 	0x7c7c7c7c
1c006c3d:	7c7c7c7c 	0x7c7c7c7c
1c006c41:	7c7c7c7c 	0x7c7c7c7c
1c006c45:	7c7c7c7c 	0x7c7c7c7c
1c006c49:	7c7c7c7c 	0x7c7c7c7c
1c006c4d:	7c7c7c7c 	0x7c7c7c7c
1c006c51:	7c7c7c7c 	0x7c7c7c7c
1c006c55:	7c7c7c7c 	0x7c7c7c7c
1c006c59:	7c00000a 	0x7c00000a
1c006c5d:	7c20207c 	0x7c20207c
1c006c61:	7c7c7c7c 	0x7c7c7c7c
1c006c65:	7c7c7c7c 	0x7c7c7c7c
1c006c69:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006c6d:	7c202020 	0x7c202020
1c006c71:	7c7c7c7c 	0x7c7c7c7c
1c006c75:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006c79:	7c202020 	0x7c202020
1c006c7d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006c81:	7c7c2020 	0x7c7c2020
1c006c85:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006c89:	7c7c7c20 	0x7c7c7c20
1c006c8d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006c91:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006c95:	7c7c7c7c 	0x7c7c7c7c
1c006c99:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006c9d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006ca1:	7c7c7c7c 	0x7c7c7c7c
1c006ca5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006ca9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006cad:	7c7c7c7c 	0x7c7c7c7c
1c006cb1:	7c202020 	0x7c202020
1c006cb5:	7c7c7c7c 	0x7c7c7c7c
1c006cb9:	7c7c2020 	0x7c7c2020
1c006cbd:	7c00000a 	0x7c00000a
1c006cc1:	7c20207c 	0x7c20207c
1c006cc5:	7c7c7c7c 	0x7c7c7c7c
1c006cc9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006ccd:	7c7c2020 	0x7c7c2020
1c006cd1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006cd5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006cd9:	7c7c2020 	0x7c7c2020
1c006cdd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006ce1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006ce5:	7c202020 	0x7c202020
1c006ce9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006ced:	7c7c7c20 	0x7c7c7c20
1c006cf1:	7c20207c 	0x7c20207c
1c006cf5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006cf9:	7c7c7c20 	0x7c7c7c20
1c006cfd:	7c202020 	0x7c202020
1c006d01:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d05:	7c7c7c20 	0x7c7c7c20
1c006d09:	7c202020 	0x7c202020
1c006d0d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d11:	7c7c7c20 	0x7c7c7c20
1c006d15:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006d19:	7c7c7c7c 	0x7c7c7c7c
1c006d1d:	7c7c2020 	0x7c7c2020
1c006d21:	7c00000a 	0x7c00000a
1c006d25:	7c20207c 	0x7c20207c
1c006d29:	7c7c7c7c 	0x7c7c7c7c
1c006d2d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d31:	7c7c7c20 	0x7c7c7c20
1c006d35:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d39:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d3d:	7c7c7c20 	0x7c7c7c20
1c006d41:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d45:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d49:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c006d4d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d51:	7c7c7c20 	0x7c7c7c20
1c006d55:	7c7c2020 	0x7c7c2020
1c006d59:	7c7c7c7c 	0x7c7c7c7c
1c006d5d:	7c7c7c7c 	0x7c7c7c7c
1c006d61:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006d65:	7c7c7c20 	0x7c7c7c20
1c006d69:	7c7c7c7c 	0x7c7c7c7c
1c006d6d:	7c7c2020 	0x7c7c2020
1c006d71:	7c7c7c7c 	0x7c7c7c7c
1c006d75:	7c7c7c20 	0x7c7c7c20
1c006d79:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c006d7d:	7c7c7c20 	0x7c7c7c20
1c006d81:	7c7c2020 	0x7c7c2020
1c006d85:	7c00000a 	0x7c00000a
1c006d89:	7c20207c 	0x7c20207c
1c006d8d:	7c7c7c7c 	0x7c7c7c7c
1c006d91:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d95:	7c7c7c20 	0x7c7c7c20
1c006d99:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006d9d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006da1:	7c7c7c20 	0x7c7c7c20
1c006da5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006da9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006dad:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006db1:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006db5:	7c7c7c20 	0x7c7c7c20
1c006db9:	7c7c2020 	0x7c7c2020
1c006dbd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006dc1:	7c7c7c20 	0x7c7c7c20
1c006dc5:	7c7c7c7c 	0x7c7c7c7c
1c006dc9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006dcd:	7c7c7c7c 	0x7c7c7c7c
1c006dd1:	7c7c2020 	0x7c7c2020
1c006dd5:	7c7c7c7c 	0x7c7c7c7c
1c006dd9:	7c7c7c20 	0x7c7c7c20
1c006ddd:	7c7c2020 	0x7c7c2020
1c006de1:	7c7c2020 	0x7c7c2020
1c006de5:	7c7c2020 	0x7c7c2020
1c006de9:	7c00000a 	0x7c00000a
1c006ded:	7c20207c 	0x7c20207c
1c006df1:	7c7c7c7c 	0x7c7c7c7c
1c006df5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006df9:	7c7c7c20 	0x7c7c7c20
1c006dfd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006e01:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006e05:	7c7c7c20 	0x7c7c7c20
1c006e09:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006e0d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006e11:	7c7c7c20 	0x7c7c7c20
1c006e15:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c006e19:	7c7c7c20 	0x7c7c7c20
1c006e1d:	7c7c2020 	0x7c7c2020
1c006e21:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006e25:	7c7c7c20 	0x7c7c7c20
1c006e29:	7c7c7c7c 	0x7c7c7c7c
1c006e2d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006e31:	7c7c7c20 	0x7c7c7c20
1c006e35:	7c7c2020 	0x7c7c2020
1c006e39:	7c7c7c7c 	0x7c7c7c7c
1c006e3d:	7c7c7c20 	0x7c7c7c20
1c006e41:	7c7c2020 	0x7c7c2020
1c006e45:	7c20207c 	0x7c20207c
1c006e49:	7c7c2020 	0x7c7c2020
1c006e4d:	7c00000a 	0x7c00000a
1c006e51:	7c20207c 	0x7c20207c
1c006e55:	7c7c7c7c 	0x7c7c7c7c
1c006e59:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006e5d:	7c7c2020 	0x7c7c2020
1c006e61:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006e65:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006e69:	7c7c2020 	0x7c7c2020
1c006e6d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006e71:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006e75:	7c7c7c20 	0x7c7c7c20
1c006e79:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006e7d:	7c7c7c20 	0x7c7c7c20
1c006e81:	7c202020 	0x7c202020
1c006e85:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006e89:	7c7c7c20 	0x7c7c7c20
1c006e8d:	7c202020 	0x7c202020
1c006e91:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006e95:	7c7c7c7c 	0x7c7c7c7c
1c006e99:	7c202020 	0x7c202020
1c006e9d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006ea1:	7c7c7c20 	0x7c7c7c20
1c006ea5:	7c7c2020 	0x7c7c2020
1c006ea9:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006ead:	7c7c2020 	0x7c7c2020
1c006eb1:	7c00000a 	0x7c00000a
1c006eb5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006eb9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006ebd:	7c7c7c7c 	0x7c7c7c7c
1c006ec1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006ec5:	7c202020 	0x7c202020
1c006ec9:	7c7c7c7c 	0x7c7c7c7c
1c006ecd:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006ed1:	7c202020 	0x7c202020
1c006ed5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006ed9:	7c7c7c20 	0x7c7c7c20
1c006edd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006ee1:	7c7c7c20 	0x7c7c7c20
1c006ee5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006ee9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006eed:	7c7c7c7c 	0x7c7c7c7c
1c006ef1:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006ef5:	7c202020 	0x7c202020
1c006ef9:	7c7c7c7c 	0x7c7c7c7c
1c006efd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006f01:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006f05:	7c7c7c7c 	0x7c7c7c7c
1c006f09:	7c7c2020 	0x7c7c2020
1c006f0d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f11:	7c7c2020 	0x7c7c2020
1c006f15:	7c00000a 	0x7c00000a
1c006f19:	7c7c7c7c 	0x7c7c7c7c
1c006f1d:	7c7c7c7c 	0x7c7c7c7c
1c006f21:	7c7c7c7c 	0x7c7c7c7c
1c006f25:	7c7c7c7c 	0x7c7c7c7c
1c006f29:	7c7c7c7c 	0x7c7c7c7c
1c006f2d:	7c7c7c7c 	0x7c7c7c7c
1c006f31:	7c7c7c7c 	0x7c7c7c7c
1c006f35:	7c7c7c7c 	0x7c7c7c7c
1c006f39:	7c7c7c7c 	0x7c7c7c7c
1c006f3d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c006f41:	20343230 	ll.w	$r16,$r17,13360(0x3430)
1c006f45:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c006f49:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c006f4d:	7c7c7c5d 	0x7c7c7c5d
1c006f51:	7c7c7c7c 	0x7c7c7c7c
1c006f55:	7c7c7c7c 	0x7c7c7c7c
1c006f59:	7c7c7c7c 	0x7c7c7c7c
1c006f5d:	7c7c7c7c 	0x7c7c7c7c
1c006f61:	7c7c7c7c 	0x7c7c7c7c
1c006f65:	7c7c7c7c 	0x7c7c7c7c
1c006f69:	7c7c7c7c 	0x7c7c7c7c
1c006f6d:	7c7c7c7c 	0x7c7c7c7c
1c006f71:	7c7c7c7c 	0x7c7c7c7c
1c006f75:	7c7c7c7c 	0x7c7c7c7c
1c006f79:	0900000a 	0x0900000a
1c006f7d:	0a006425 	0x0a006425
1c006f81:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006f85:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c006f89:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c006f8d:	0050550a 	0x0050550a
1c006f91:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006f95:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00e4e1 <_sidata+0x5d8d>
1c006f99:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c006f9d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c006fa1:	756f430a 	0x756f430a
1c006fa5:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c006fa9:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c006fad:	3030090a 	0x3030090a
1c006fb1:	09313009 	0x09313009
1c006fb5:	30093230 	0x30093230
1c006fb9:	34300933 	0x34300933
1c006fbd:	09353009 	0x09353009
1c006fc1:	30093630 	0x30093630
1c006fc5:	38300937 	fldx.s	$f23,$r9,$r2
1c006fc9:	09393009 	0x09393009
1c006fcd:	31093031 	0x31093031
1c006fd1:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c006fd5:	746e630a 	0x746e630a
1c006fd9:	09000000 	0x09000000
1c006fdd:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c006fe1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006fe5:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c006fe9:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00d13d <_sidata+0x49e9>
1c006fed:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006ff1:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfee541 <_start-0x11abf>
1c006ff5:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c006ff9:	09000000 	0x09000000
1c006ffd:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c007001:	09000000 	0x09000000
1c007005:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c007009:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00700d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c007011:	3a515249 	0x3a515249
1c007015:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c007019:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffde8d <_start-0x2173>
1c00701d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c007021:	0d3e2020 	0x0d3e2020
1c007025:	0a00000a 	0x0a00000a
1c007029:	2e2e2e2e 	0x2e2e2e2e
1c00702d:	2e2e2e2e 	0x2e2e2e2e
1c007031:	2e2e2e2e 	0x2e2e2e2e
1c007035:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3abf85 <_sidata+0x3a3831>
1c007039:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c00703d:	2e2e2e54 	0x2e2e2e54
1c007041:	2e2e2e2e 	0x2e2e2e2e
1c007045:	2e2e2e2e 	0x2e2e2e2e
1c007049:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00704d:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c007051:	2e2e2e0a 	0x2e2e2e0a
1c007055:	2e2e2e2e 	0x2e2e2e2e
1c007059:	2e2e2e2e 	0x2e2e2e2e
1c00705d:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39b289 <_sidata+0x392b35>
1c007061:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1b6bd <_start-0x2e4943>
1c007065:	2e2e4c49 	0x2e2e4c49
1c007069:	2e2e2e2e 	0x2e2e2e2e
1c00706d:	2e2e2e2e 	0x2e2e2e2e
1c007071:	2e2e2e2e 	0x2e2e2e2e
1c007075:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c007079:	2e2e2e0a 	0x2e2e2e0a
1c00707d:	2e2e2e2e 	0x2e2e2e2e
1c007081:	2e2e2e2e 	0x2e2e2e2e
1c007085:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38b1b1 <_sidata+0x382a5d>
1c007089:	2e2e2e43 	0x2e2e2e43
1c00708d:	2e2e2e2e 	0x2e2e2e2e
1c007091:	2e2e2e2e 	0x2e2e2e2e
1c007095:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c007099:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b7099 <_sidata+0x2ae945>
1c00709d:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c0070a1:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01de09 <_sidata+0x156b5>
1c0070a5:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00d3c5 <_sidata+0x4c71>
1c0070a9:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c0070ad:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01e519 <_sidata+0x15dc5>
1c0070b1:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c0070b5:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c0070b9:	 	lu12i.w	$r10,0

1c0070bc <Ext_IrqHandle>:
1c0070bc:	1c004114 	pcaddu12i	$r20,520(0x208)
1c0070c0:	1c004160 	pcaddu12i	$r0,523(0x20b)
1c0070c4:	1c0041ac 	pcaddu12i	$r12,525(0x20d)
1c0070c8:	1c0041f8 	pcaddu12i	$r24,527(0x20f)
1c0070cc:	1c004244 	pcaddu12i	$r4,530(0x212)
1c0070d0:	1c004290 	pcaddu12i	$r16,532(0x214)
1c0070d4:	1c00435c 	pcaddu12i	$r28,538(0x21a)
1c0070d8:	1c0043a8 	pcaddu12i	$r8,541(0x21d)
1c0070dc:	1c0043f4 	pcaddu12i	$r20,543(0x21f)
1c0070e0:	1c004440 	pcaddu12i	$r0,546(0x222)
1c0070e4:	1c00448c 	pcaddu12i	$r12,548(0x224)
1c0070e8:	1c0044d8 	pcaddu12i	$r24,550(0x226)
1c0070ec:	1c004524 	pcaddu12i	$r4,553(0x229)
1c0070f0:	1c004570 	pcaddu12i	$r16,555(0x22b)
1c0070f4:	1c0045bc 	pcaddu12i	$r28,557(0x22d)
1c0070f8:	1c004608 	pcaddu12i	$r8,560(0x230)
1c0070fc:	1c004654 	pcaddu12i	$r20,562(0x232)
1c007100:	1c0046a0 	pcaddu12i	$r0,565(0x235)
1c007104:	1c0046ec 	pcaddu12i	$r12,567(0x237)
1c007108:	1c004738 	pcaddu12i	$r24,569(0x239)
1c00710c:	1c004784 	pcaddu12i	$r4,572(0x23c)
1c007110:	1c0047d0 	pcaddu12i	$r16,574(0x23e)
1c007114:	1c00481c 	pcaddu12i	$r28,576(0x240)
1c007118:	1c004868 	pcaddu12i	$r8,579(0x243)
1c00711c:	1c0048b4 	pcaddu12i	$r20,581(0x245)
1c007120:	1c004900 	pcaddu12i	$r0,584(0x248)
1c007124:	1c00494c 	pcaddu12i	$r12,586(0x24a)
1c007128:	1c004998 	pcaddu12i	$r24,588(0x24c)
1c00712c:	1c0049e4 	pcaddu12i	$r4,591(0x24f)
1c007130:	1c004a30 	pcaddu12i	$r16,593(0x251)
1c007134:	1c004a7c 	pcaddu12i	$r28,595(0x253)
1c007138:	1c004ac8 	pcaddu12i	$r8,598(0x256)
1c00713c:	1c004dac 	pcaddu12i	$r12,621(0x26d)
1c007140:	1c004d5c 	pcaddu12i	$r28,618(0x26a)
1c007144:	1c004dac 	pcaddu12i	$r12,621(0x26d)
1c007148:	1c004dac 	pcaddu12i	$r12,621(0x26d)
1c00714c:	1c004dac 	pcaddu12i	$r12,621(0x26d)
1c007150:	1c004dac 	pcaddu12i	$r12,621(0x26d)
1c007154:	1c004dac 	pcaddu12i	$r12,621(0x26d)
1c007158:	1c004dac 	pcaddu12i	$r12,621(0x26d)
1c00715c:	1c004dac 	pcaddu12i	$r12,621(0x26d)
1c007160:	1c004dac 	pcaddu12i	$r12,621(0x26d)
1c007164:	1c004dac 	pcaddu12i	$r12,621(0x26d)
1c007168:	1c004dac 	pcaddu12i	$r12,621(0x26d)
1c00716c:	1c004dac 	pcaddu12i	$r12,621(0x26d)
1c007170:	1c004dac 	pcaddu12i	$r12,621(0x26d)
1c007174:	1c004dac 	pcaddu12i	$r12,621(0x26d)
1c007178:	1c004dac 	pcaddu12i	$r12,621(0x26d)
1c00717c:	1c004d78 	pcaddu12i	$r24,619(0x26b)

1c007180 <__FUNCTION__.1743>:
1c007180:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e5f8 <_sidata+0x15ea4>
1c007184:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e1e8 <_sidata+0x15a94>
1c007188:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffa1e8 <_start-0x5e18>
1c00718c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe2fc <_start-0x1d04>
1c007190:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dff0 <_sidata+0x589c>
1c007194:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007198 <__FUNCTION__.1747>:
1c007198:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e610 <_sidata+0x15ebc>
1c00719c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e200 <_sidata+0x15aac>
1c0071a0:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffa300 <_start-0x5d00>
1c0071a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe314 <_start-0x1cec>
1c0071a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e008 <_sidata+0x58b4>
1c0071ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0071b0 <__FUNCTION__.1751>:
1c0071b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e628 <_sidata+0x15ed4>
1c0071b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e218 <_sidata+0x15ac4>
1c0071b8:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffa418 <_start-0x5be8>
1c0071bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe32c <_start-0x1cd4>
1c0071c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e020 <_sidata+0x58cc>
1c0071c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0071c8 <__FUNCTION__.1755>:
1c0071c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e640 <_sidata+0x15eec>
1c0071cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e230 <_sidata+0x15adc>
1c0071d0:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffa530 <_start-0x5ad0>
1c0071d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe344 <_start-0x1cbc>
1c0071d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e038 <_sidata+0x58e4>
1c0071dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0071e0 <__FUNCTION__.1759>:
1c0071e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e658 <_sidata+0x15f04>
1c0071e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e248 <_sidata+0x15af4>
1c0071e8:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffa648 <_start-0x59b8>
1c0071ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe35c <_start-0x1ca4>
1c0071f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e050 <_sidata+0x58fc>
1c0071f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0071f8 <__FUNCTION__.1766>:
1c0071f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e670 <_sidata+0x15f1c>
1c0071fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e260 <_sidata+0x15b0c>
1c007200:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffa860 <_start-0x57a0>
1c007204:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe374 <_start-0x1c8c>
1c007208:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e068 <_sidata+0x5914>
1c00720c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007210 <__FUNCTION__.1770>:
1c007210:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e688 <_sidata+0x15f34>
1c007214:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e278 <_sidata+0x15b24>
1c007218:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffa978 <_start-0x5688>
1c00721c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe38c <_start-0x1c74>
1c007220:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e080 <_sidata+0x592c>
1c007224:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007228 <__FUNCTION__.1774>:
1c007228:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e6a0 <_sidata+0x15f4c>
1c00722c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e290 <_sidata+0x15b3c>
1c007230:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffa290 <_start-0x5d70>
1c007234:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe3a4 <_start-0x1c5c>
1c007238:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e098 <_sidata+0x5944>
1c00723c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007240 <__FUNCTION__.1778>:
1c007240:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e6b8 <_sidata+0x15f64>
1c007244:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e2a8 <_sidata+0x15b54>
1c007248:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffa3a8 <_start-0x5c58>
1c00724c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe3bc <_start-0x1c44>
1c007250:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e0b0 <_sidata+0x595c>
1c007254:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007258 <__FUNCTION__.1782>:
1c007258:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e6d0 <_sidata+0x15f7c>
1c00725c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e2c0 <_sidata+0x15b6c>
1c007260:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffa4c0 <_start-0x5b40>
1c007264:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe3d4 <_start-0x1c2c>
1c007268:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e0c8 <_sidata+0x5974>
1c00726c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007270 <__FUNCTION__.1786>:
1c007270:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e6e8 <_sidata+0x15f94>
1c007274:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e2d8 <_sidata+0x15b84>
1c007278:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffa5d8 <_start-0x5a28>
1c00727c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe3ec <_start-0x1c14>
1c007280:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e0e0 <_sidata+0x598c>
1c007284:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007288 <__FUNCTION__.1790>:
1c007288:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e700 <_sidata+0x15fac>
1c00728c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e2f0 <_sidata+0x15b9c>
1c007290:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffa6f0 <_start-0x5910>
1c007294:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe404 <_start-0x1bfc>
1c007298:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e0f8 <_sidata+0x59a4>
1c00729c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0072a0 <__FUNCTION__.1794>:
1c0072a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e718 <_sidata+0x15fc4>
1c0072a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e308 <_sidata+0x15bb4>
1c0072a8:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffa808 <_start-0x57f8>
1c0072ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe41c <_start-0x1be4>
1c0072b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e110 <_sidata+0x59bc>
1c0072b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0072b8 <__FUNCTION__.1798>:
1c0072b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e730 <_sidata+0x15fdc>
1c0072bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e320 <_sidata+0x15bcc>
1c0072c0:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffa920 <_start-0x56e0>
1c0072c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe434 <_start-0x1bcc>
1c0072c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e128 <_sidata+0x59d4>
1c0072cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0072d0 <__FUNCTION__.1802>:
1c0072d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e748 <_sidata+0x15ff4>
1c0072d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e338 <_sidata+0x15be4>
1c0072d8:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffaa38 <_start-0x55c8>
1c0072dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe44c <_start-0x1bb4>
1c0072e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e140 <_sidata+0x59ec>
1c0072e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0072e8 <__FUNCTION__.1806>:
1c0072e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e760 <_sidata+0x1600c>
1c0072ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e350 <_sidata+0x15bfc>
1c0072f0:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffa350 <_start-0x5cb0>
1c0072f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe464 <_start-0x1b9c>
1c0072f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e158 <_sidata+0x5a04>
1c0072fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007300 <__FUNCTION__.1810>:
1c007300:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e778 <_sidata+0x16024>
1c007304:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e368 <_sidata+0x15c14>
1c007308:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffa468 <_start-0x5b98>
1c00730c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe47c <_start-0x1b84>
1c007310:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e170 <_sidata+0x5a1c>
1c007314:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007318 <__FUNCTION__.1814>:
1c007318:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e790 <_sidata+0x1603c>
1c00731c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e380 <_sidata+0x15c2c>
1c007320:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffa580 <_start-0x5a80>
1c007324:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe494 <_start-0x1b6c>
1c007328:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e188 <_sidata+0x5a34>
1c00732c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007330 <__FUNCTION__.1818>:
1c007330:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e7a8 <_sidata+0x16054>
1c007334:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e398 <_sidata+0x15c44>
1c007338:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffa698 <_start-0x5968>
1c00733c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe4ac <_start-0x1b54>
1c007340:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e1a0 <_sidata+0x5a4c>
1c007344:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007348 <__FUNCTION__.1822>:
1c007348:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e7c0 <_sidata+0x1606c>
1c00734c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e3b0 <_sidata+0x15c5c>
1c007350:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffa7b0 <_start-0x5850>
1c007354:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe4c4 <_start-0x1b3c>
1c007358:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e1b8 <_sidata+0x5a64>
1c00735c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007360 <__FUNCTION__.1826>:
1c007360:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e7d8 <_sidata+0x16084>
1c007364:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e3c8 <_sidata+0x15c74>
1c007368:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffa8c8 <_start-0x5738>
1c00736c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe4dc <_start-0x1b24>
1c007370:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e1d0 <_sidata+0x5a7c>
1c007374:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007378 <__FUNCTION__.1830>:
1c007378:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e7f0 <_sidata+0x1609c>
1c00737c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e3e0 <_sidata+0x15c8c>
1c007380:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffa9e0 <_start-0x5620>
1c007384:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe4f4 <_start-0x1b0c>
1c007388:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e1e8 <_sidata+0x5a94>
1c00738c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007390 <__FUNCTION__.1834>:
1c007390:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e808 <_sidata+0x160b4>
1c007394:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e3f8 <_sidata+0x15ca4>
1c007398:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffaaf8 <_start-0x5508>
1c00739c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe50c <_start-0x1af4>
1c0073a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e200 <_sidata+0x5aac>
1c0073a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0073a8 <__FUNCTION__.1838>:
1c0073a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e820 <_sidata+0x160cc>
1c0073ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e410 <_sidata+0x15cbc>
1c0073b0:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffa414 <_start-0x5bec>
1c0073b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe524 <_start-0x1adc>
1c0073b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e218 <_sidata+0x5ac4>
1c0073bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0073c0 <__FUNCTION__.1842>:
1c0073c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e838 <_sidata+0x160e4>
1c0073c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e428 <_sidata+0x15cd4>
1c0073c8:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffa52c <_start-0x5ad4>
1c0073cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe53c <_start-0x1ac4>
1c0073d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e230 <_sidata+0x5adc>
1c0073d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0073d8 <__FUNCTION__.1846>:
1c0073d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e850 <_sidata+0x160fc>
1c0073dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e440 <_sidata+0x15cec>
1c0073e0:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffa644 <_start-0x59bc>
1c0073e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe554 <_start-0x1aac>
1c0073e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e248 <_sidata+0x5af4>
1c0073ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0073f0 <__FUNCTION__.1850>:
1c0073f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e868 <_sidata+0x16114>
1c0073f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e458 <_sidata+0x15d04>
1c0073f8:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffa75c <_start-0x58a4>
1c0073fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe56c <_start-0x1a94>
1c007400:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e260 <_sidata+0x5b0c>
1c007404:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007408 <__FUNCTION__.1854>:
1c007408:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e880 <_sidata+0x1612c>
1c00740c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e470 <_sidata+0x15d1c>
1c007410:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffa874 <_start-0x578c>
1c007414:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe584 <_start-0x1a7c>
1c007418:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e278 <_sidata+0x5b24>
1c00741c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007420 <__FUNCTION__.1858>:
1c007420:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e898 <_sidata+0x16144>
1c007424:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e488 <_sidata+0x15d34>
1c007428:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffa98c <_start-0x5674>
1c00742c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe59c <_start-0x1a64>
1c007430:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e290 <_sidata+0x5b3c>
1c007434:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007438 <__FUNCTION__.1862>:
1c007438:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e8b0 <_sidata+0x1615c>
1c00743c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e4a0 <_sidata+0x15d4c>
1c007440:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffaaa4 <_start-0x555c>
1c007444:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe5b4 <_start-0x1a4c>
1c007448:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e2a8 <_sidata+0x5b54>
1c00744c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007450 <__FUNCTION__.1866>:
1c007450:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e8c8 <_sidata+0x16174>
1c007454:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e4b8 <_sidata+0x15d64>
1c007458:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffabbc <_start-0x5444>
1c00745c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe5cc <_start-0x1a34>
1c007460:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e2c0 <_sidata+0x5b6c>
1c007464:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007468 <asc2_1608>:
	...
1c007478:	f8000000 	0xf8000000
1c00747c:	00000000 	0x00000000
1c007480:	33000000 	0x33000000
1c007484:	00000000 	0x00000000
1c007488:	020c1000 	slti	$r0,$r0,772(0x304)
1c00748c:	00020c10 	0x00020c10
	...
1c007498:	78c04000 	0x78c04000
1c00749c:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c0074a0:	043f0400 	csrrd	$r0,0xfc1
1c0074a4:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c0074a8:	88887000 	0x88887000
1c0074ac:	003008fc 	0x003008fc
1c0074b0:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c0074b4:	001e21ff 	mulh.d	$r31,$r15,$r8
1c0074b8:	80f008f0 	0x80f008f0
1c0074bc:	00001860 	cto.w	$r0,$r3
1c0074c0:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c0074c4:	001e211e 	mulh.d	$r30,$r8,$r8
1c0074c8:	8808f000 	0x8808f000
1c0074cc:	00000070 	0x00000070
1c0074d0:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c0074d4:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c0074d8:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c0074e8:	e0000000 	0xe0000000
1c0074ec:	00020418 	0x00020418
1c0074f0:	07000000 	0x07000000
1c0074f4:	00402018 	0x00402018
1c0074f8:	18040200 	pcaddi	$r0,8208(0x2010)
1c0074fc:	000000e0 	0x000000e0
1c007500:	18204000 	pcaddi	$r0,66048(0x10200)
1c007504:	00000007 	0x00000007
1c007508:	f0804040 	0xf0804040
1c00750c:	00404080 	0x00404080
1c007510:	0f010202 	0x0f010202
1c007514:	00020201 	0x00020201
1c007518:	00000000 	0x00000000
1c00751c:	000000e0 	0x000000e0
1c007520:	01010100 	fadd.d	$f0,$f8,$f0
1c007524:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c007530:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c007540:	01010100 	fadd.d	$f0,$f8,$f0
1c007544:	00010101 	0x00010101
	...
1c007550:	00303000 	0x00303000
	...
1c00755c:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c007560:	07186000 	0x07186000
1c007564:	00000000 	0x00000000
1c007568:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c00756c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007570:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c007574:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007578:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c00757c:	000000f8 	0x000000f8
1c007580:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c007584:	0020203f 	div.w	$r31,$r1,$r8
1c007588:	08087000 	0x08087000
1c00758c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007590:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c007594:	00302122 	0x00302122
1c007598:	08083000 	0x08083000
1c00759c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c0075a0:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c0075a4:	001c2221 	mul.w	$r1,$r17,$r8
1c0075a8:	40800000 	beqz	$r0,32768(0x8000) # 1c00f5a8 <_sidata+0x6e54>
1c0075ac:	0000f830 	0x0000f830
1c0075b0:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c0075b4:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c0075b8:	8888f800 	0x8888f800
1c0075bc:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c0075c0:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c0075c4:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0075c8:	8810e000 	0x8810e000
1c0075cc:	00009088 	0x00009088
1c0075d0:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c0075d4:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c0075d8:	08081800 	0x08081800
1c0075dc:	00186888 	sra.w	$r8,$r4,$r26
1c0075e0:	3e000000 	0x3e000000
1c0075e4:	00000001 	0x00000001
1c0075e8:	08887000 	0x08887000
1c0075ec:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c0075f0:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c0075f4:	001c2221 	mul.w	$r1,$r17,$r8
1c0075f8:	0808f000 	0x0808f000
1c0075fc:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007600:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c007604:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c007608:	c0000000 	0xc0000000
1c00760c:	000000c0 	0x000000c0
1c007610:	30000000 	0x30000000
1c007614:	00000030 	0x00000030
1c007618:	80000000 	0x80000000
1c00761c:	00000000 	0x00000000
1c007620:	e0000000 	0xe0000000
1c007624:	00000000 	0x00000000
1c007628:	40800000 	beqz	$r0,32768(0x8000) # 1c00f628 <_sidata+0x6ed4>
1c00762c:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007630:	04020100 	csrxchg	$r0,$r8,0x80
1c007634:	00201008 	div.w	$r8,$r0,$r4
1c007638:	40404000 	beqz	$r0,16448(0x4040) # 1c00b678 <_sidata+0x2f24>
1c00763c:	00404040 	0x00404040
1c007640:	02020200 	slti	$r0,$r16,128(0x80)
1c007644:	00020202 	0x00020202
1c007648:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c00764c:	00008040 	0x00008040
1c007650:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c007654:	00010204 	0x00010204
1c007658:	08487000 	0x08487000
1c00765c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007660:	30000000 	0x30000000
1c007664:	00000037 	0x00000037
1c007668:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c00766c:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c007670:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c007674:	0017282f 	sll.w	$r15,$r1,$r10
1c007678:	38c00000 	0x38c00000
1c00767c:	000000e0 	0x000000e0
1c007680:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c007684:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c007688:	8888f808 	0x8888f808
1c00768c:	00007088 	0x00007088
1c007690:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007694:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007698:	080830c0 	0x080830c0
1c00769c:	00380808 	0x00380808
1c0076a0:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c0076a4:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c0076a8:	0808f808 	0x0808f808
1c0076ac:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0076b0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0076b4:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c0076b8:	8888f808 	0x8888f808
1c0076bc:	001008e8 	add.w	$r8,$r7,$r2
1c0076c0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0076c4:	00182023 	sra.w	$r3,$r1,$r8
1c0076c8:	8888f808 	0x8888f808
1c0076cc:	001008e8 	add.w	$r8,$r7,$r2
1c0076d0:	00203f20 	div.w	$r0,$r25,$r15
1c0076d4:	00000003 	0x00000003
1c0076d8:	080830c0 	0x080830c0
1c0076dc:	00003808 	revb.2w	$r8,$r0
1c0076e0:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c0076e4:	00021e22 	0x00021e22
1c0076e8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c0076ec:	08f80800 	0x08f80800
1c0076f0:	01213f20 	0x01213f20
1c0076f4:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c0076f8:	f8080800 	0xf8080800
1c0076fc:	00000808 	0x00000808
1c007700:	3f202000 	0x3f202000
1c007704:	00002020 	clo.d	$r0,$r1
1c007708:	08080000 	0x08080000
1c00770c:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c007710:	808080c0 	0x808080c0
1c007714:	0000007f 	0x0000007f
1c007718:	c088f808 	0xc088f808
1c00771c:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c007720:	01203f20 	0x01203f20
1c007724:	00203826 	div.w	$r6,$r1,$r14
1c007728:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00772c:	00000000 	0x00000000
1c007730:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007734:	00302020 	0x00302020
1c007738:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c00773c:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c007740:	3e013f20 	0x3e013f20
1c007744:	00203f01 	div.w	$r1,$r24,$r15
1c007748:	c030f808 	0xc030f808
1c00774c:	08f80800 	0x08f80800
1c007750:	00203f20 	div.w	$r0,$r25,$r15
1c007754:	003f1807 	0x003f1807
1c007758:	080810e0 	0x080810e0
1c00775c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007760:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c007764:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007768:	0808f808 	0x0808f808
1c00776c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007770:	01213f20 	0x01213f20
1c007774:	00000101 	0x00000101
1c007778:	080810e0 	0x080810e0
1c00777c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007780:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c007784:	004f5030 	0x004f5030
1c007788:	8888f808 	0x8888f808
1c00778c:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c007790:	00203f20 	div.w	$r0,$r25,$r15
1c007794:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c007798:	08887000 	0x08887000
1c00779c:	00380808 	0x00380808
1c0077a0:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c0077a4:	001c2221 	mul.w	$r1,$r17,$r8
1c0077a8:	f8080818 	0xf8080818
1c0077ac:	00180808 	sra.w	$r8,$r0,$r2
1c0077b0:	3f200000 	0x3f200000
1c0077b4:	00000020 	0x00000020
1c0077b8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c0077bc:	08f80800 	0x08f80800
1c0077c0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0077c4:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c0077c8:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c0077cc:	0838c800 	0x0838c800
1c0077d0:	38070000 	0x38070000
1c0077d4:	0000010e 	0x0000010e
1c0077d8:	f800f808 	0xf800f808
1c0077dc:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c0077e0:	013e0300 	0x013e0300
1c0077e4:	0000033e 	0x0000033e
1c0077e8:	80681808 	0x80681808
1c0077ec:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c0077f0:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c0077f4:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c0077f8:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c0077fc:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c007800:	3f200000 	0x3f200000
1c007804:	00000020 	0x00000020
1c007808:	08080810 	0x08080810
1c00780c:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c007810:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c007814:	00182020 	sra.w	$r0,$r1,$r8
1c007818:	fe000000 	0xfe000000
1c00781c:	00020202 	0x00020202
1c007820:	7f000000 	0x7f000000
1c007824:	00404040 	0x00404040
1c007828:	c0380400 	0xc0380400
1c00782c:	00000000 	0x00000000
1c007830:	01000000 	0x01000000
1c007834:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c007838:	02020200 	slti	$r0,$r16,128(0x80)
1c00783c:	000000fe 	0x000000fe
1c007840:	40404000 	beqz	$r0,16448(0x4040) # 1c00b880 <_sidata+0x312c>
1c007844:	0000007f 	0x0000007f
1c007848:	02040000 	slti	$r0,$r0,256(0x100)
1c00784c:	00000402 	0x00000402
	...
1c007860:	80808080 	0x80808080
1c007864:	80808080 	0x80808080
1c007868:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c007878:	80800000 	0x80800000
1c00787c:	00000080 	0x00000080
1c007880:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c007884:	00203f12 	div.w	$r18,$r24,$r15
1c007888:	8000f010 	0x8000f010
1c00788c:	00000080 	0x00000080
1c007890:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c007894:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007898:	80000000 	0x80000000
1c00789c:	00008080 	0x00008080
1c0078a0:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c0078a4:	00112020 	sub.w	$r0,$r1,$r8
1c0078a8:	80800000 	0x80800000
1c0078ac:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c0078b0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0078b4:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c0078b8:	80800000 	0x80800000
1c0078bc:	00008080 	0x00008080
1c0078c0:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c0078c4:	00172424 	sll.w	$r4,$r1,$r9
1c0078c8:	e0808000 	0xe0808000
1c0078cc:	00209090 	mod.w	$r16,$r4,$r4
1c0078d0:	3f202000 	0x3f202000
1c0078d4:	00002020 	clo.d	$r0,$r1
1c0078d8:	80800000 	0x80800000
1c0078dc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0078e0:	94946b00 	0x94946b00
1c0078e4:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c0078e8:	8000f010 	0x8000f010
1c0078ec:	00008080 	0x00008080
1c0078f0:	00213f20 	div.wu	$r0,$r25,$r15
1c0078f4:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c0078f8:	98988000 	0x98988000
1c0078fc:	00000000 	0x00000000
1c007900:	3f202000 	0x3f202000
1c007904:	00002020 	clo.d	$r0,$r1
1c007908:	80000000 	0x80000000
1c00790c:	00009898 	0x00009898
1c007910:	8080c000 	0x8080c000
1c007914:	00007f80 	0x00007f80
1c007918:	0000f010 	0x0000f010
1c00791c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007920:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c007924:	00203029 	div.w	$r9,$r1,$r12
1c007928:	f8101000 	0xf8101000
1c00792c:	00000000 	0x00000000
1c007930:	3f202000 	0x3f202000
1c007934:	00002020 	clo.d	$r0,$r1
1c007938:	80808080 	0x80808080
1c00793c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007940:	00203f20 	div.w	$r0,$r25,$r15
1c007944:	3f00203f 	0x3f00203f
1c007948:	80008080 	0x80008080
1c00794c:	00008080 	0x00008080
1c007950:	00213f20 	div.wu	$r0,$r25,$r15
1c007954:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c007958:	80800000 	0x80800000
1c00795c:	00008080 	0x00008080
1c007960:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007964:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007968:	80008080 	0x80008080
1c00796c:	00000080 	0x00000080
1c007970:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c007974:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007978:	80000000 	0x80000000
1c00797c:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c007980:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c007984:	80ff9120 	0x80ff9120
1c007988:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00798c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007990:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c007994:	00010020 	asrtle.d	$r1,$r0
1c007998:	80800000 	0x80800000
1c00799c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0079a0:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c0079a4:	00192424 	srl.d	$r4,$r1,$r9
1c0079a8:	e0808000 	0xe0808000
1c0079ac:	00008080 	0x00008080
1c0079b0:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c0079b4:	00102020 	add.w	$r0,$r1,$r8
1c0079b8:	00008080 	0x00008080
1c0079bc:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c0079c0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0079c4:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c0079c8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0079cc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0079d0:	300c0300 	0x300c0300
1c0079d4:	0000030c 	0x0000030c
1c0079d8:	80008080 	0x80008080
1c0079dc:	80800080 	0x80800080
1c0079e0:	0c300e01 	0x0c300e01
1c0079e4:	01063807 	0x01063807
1c0079e8:	80808000 	0x80808000
1c0079ec:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c0079f0:	0e312000 	0x0e312000
1c0079f4:	0020312e 	div.w	$r14,$r9,$r12
1c0079f8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0079fc:	80808000 	0x80808000
1c007a00:	78868100 	0x78868100
1c007a04:	00010618 	0x00010618
1c007a08:	80808000 	0x80808000
1c007a0c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007a10:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c007a14:	00302122 	0x00302122
1c007a18:	00000000 	0x00000000
1c007a1c:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c007a20:	00000000 	0x00000000
1c007a24:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04ba60 <_sidata+0x4330c>
1c007a28:	00000000 	0x00000000
1c007a2c:	000000ff 	0x000000ff
1c007a30:	00000000 	0x00000000
1c007a34:	000000ff 	0x000000ff
1c007a38:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c007a3c:	00000000 	0x00000000
1c007a40:	013e4040 	0x013e4040
1c007a44:	00000000 	0x00000000
1c007a48:	02010200 	slti	$r0,$r16,64(0x40)
1c007a4c:	00020402 	0x00020402
	...

1c007a58 <tfont16>:
1c007a58:	4085b6e8 	beqz	$r23,2131380(0x2085b4) # 1c21000c <_sidata+0x2078b8>
1c007a5c:	ff484848 	0xff484848
1c007a60:	a2424848 	0xa2424848
1c007a64:	c2a2829e 	0xc2a2829e
1c007a68:	800000be 	0x800000be
1c007a6c:	7f201f60 	0x7f201f60
1c007a70:	4f404444 	jirl	$r4,$r2,-49084(0x34044)
1c007a74:	48484848 	bceqz	$fcc2,2115656(0x204848) # 1c20c2bc <_sidata+0x203b68>
1c007a78:	e500404f 	0xe500404f
1c007a7c:	1404b0a3 	lu12i.w	$r3,9605(0x2585)
1c007a80:	545454d4 	bl	55596116(0x3505454) # 1f50ced4 <_sidata+0x3504780>
1c007a84:	5454df54 	bl	-45067044(0xd5054dc) # 1950cf60 <_start-0x2af30a0>
1c007a88:	14d45454 	lu12i.w	$r20,434850(0x6a2a2)
1c007a8c:	60800004 	blt	$r0,$r4,32768(0x8000) # 1c00fa8c <_sidata+0x7338>
1c007a90:	0202021f 	slti	$r31,$r16,128(0x80)
1c007a94:	02020302 	slti	$r2,$r24,128(0x80)
1c007a98:	00030202 	0x00030202
1c007a9c:	b3e60000 	0xb3e60000
1c007aa0:	026010a2 	sltui	$r2,$r5,-2044(0x804)
1c007aa4:	f800c00c 	0xf800c00c
1c007aa8:	ff888888 	0xff888888
1c007aac:	18a88888 	pcaddi	$r8,345156(0x54444)
1c007ab0:	7c040400 	0x7c040400
1c007ab4:	1f608003 	pcaddu18i	$r3,-326656(0xb0400)
1c007ab8:	102c4380 	addu16i.d	$r0,$r28,2832(0xb10)
1c007abc:	80814628 	0x80814628
1c007ac0:	9280e500 	0x9280e500
1c007ac4:	07f86080 	0x07f86080
1c007ac8:	c45c6404 	0xc45c6404
1c007acc:	f8004464 	0xf8004464
1c007ad0:	0000ff00 	0x0000ff00
1c007ad4:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c007ad8:	1f226220 	pcaddu18i	$r0,-453871(0x91311)
1c007adc:	4f001212 	jirl	$r18,$r16,-65520(0x30010)
1c007ae0:	00007f80 	0x00007f80
1c007ae4:	00a6bde8 	bstrins.d	$r8,$r15,0x26,0x2f
1c007ae8:	28488808 	ld.h	$r8,$r0,546(0x222)
1c007aec:	08e80f18 	fnmsub.d	$f24,$f24,$f3,$f16
1c007af0:	08080808 	0x08080808
1c007af4:	08000008 	0x08000008
1c007af8:	09090908 	0x09090908
1c007afc:	09ff0909 	0x09ff0909
1c007b00:	09090909 	0x09090909
1c007b04:	e9000808 	0xe9000808
1c007b08:	1820b79b 	pcaddi	$r27,67004(0x105bc)
1c007b0c:	aaaaaa0a 	0xaaaaaa0a
1c007b10:	aa0afe0a 	0xaa0afe0a
1c007b14:	280aaaaa 	ld.b	$r10,$r21,682(0x2aa)
1c007b18:	00000018 	0x00000018
1c007b1c:	929292fe 	0x929292fe
1c007b20:	9292fe92 	0x9292fe92
1c007b24:	00fe9292 	bstrpick.d	$r18,$r20,0x3e,0x24
1c007b28:	bee80000 	0xbee80000
1c007b2c:	424040be 	beqz	$r5,-376768(0x7a4040) # 1bfabb6c <_start-0x54494>
1c007b30:	101000cc 	addu16i.d	$r12,$r6,1024(0x400)
1c007b34:	907f9010 	0x907f9010
1c007b38:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007b3c:	20400000 	ll.w	$r0,$r0,16384(0x4000)
1c007b40:	4448201f 	bnez	$r0,-243680(0x7c4820) # 1bfcc360 <_start-0x33ca0>
1c007b44:	40404142 	beqz	$r10,540736(0x84040) # 1c08bb84 <_sidata+0x83430>
1c007b48:	404c4241 	beqz	$r18,281664(0x44c40) # 1c04c788 <_sidata+0x44034>
1c007b4c:	baa4e700 	0xbaa4e700
1c007b50:	42424040 	beqz	$r2,148032(0x24240) # 1c02bd90 <_sidata+0x2363c>
1c007b54:	c2424242 	0xc2424242
1c007b58:	42424242 	beqz	$r18,672320(0xa4240) # 1c0abd98 <_sidata+0xa3644>
1c007b5c:	00404042 	0x00404042
1c007b60:	06081020 	cacop	0x0,$r1,516(0x204)
1c007b64:	7f804000 	0x7f804000
1c007b68:	02000000 	slti	$r0,$r0,0
1c007b6c:	00300804 	0x00300804
1c007b70:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c007b74:	92fe0000 	0x92fe0000
1c007b78:	92929292 	0x92929292
1c007b7c:	00fe9292 	bstrpick.d	$r18,$r20,0x3e,0x24
1c007b80:	40000000 	beqz	$r0,0 # 1c007b80 <tfont16+0x128>
1c007b84:	40584442 	beqz	$r2,546884(0x85844) # 1c08d3c8 <_sidata+0x84c74>
1c007b88:	4040407f 	beqz	$r3,-245696(0x7c4040) # 1bfcbbc8 <_start-0x34438>
1c007b8c:	4850407f 	bceqz	$fcc3,-241600(0x7c5040) # 1bfccbcc <_start-0x33434>
1c007b90:	e5004046 	0xe5004046
1c007b94:	0c109eae 	0x0c109eae
1c007b98:	64148404 	bge	$r0,$r4,5252(0x1484) # 1c00901c <_sidata+0x8c8>
1c007b9c:	04f40605 	csrxchg	$r5,$r16,0x3d01
1c007ba0:	14040404 	lu12i.w	$r4,8224(0x2020)
1c007ba4:	8404000c 	0x8404000c
1c007ba8:	24474484 	ldptr.w	$r4,$r4,18244(0x4744)
1c007bac:	0c070c14 	0x0c070c14
1c007bb0:	84442414 	0x84442414
1c007bb4:	aae90004 	0xaae90004
1c007bb8:	82fa028c 	0x82fa028c
1c007bbc:	4080fe82 	beqz	$r20,557308(0x880fc) # 1c08fcb8 <_sidata+0x87564>
1c007bc0:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03c810 <_sidata+0x340bc>
1c007bc4:	4020504c 	beqz	$r2,3154000(0x302050) # 1c309c14 <_sidata+0x3014c0>
1c007bc8:	48180800 	bceqz	$fcc0,6152(0x1808) # 1c0093d0 <_sidata+0xc7c>
1c007bcc:	403f4484 	beqz	$r4,1064772(0x103f44) # 1c10bb10 <_sidata+0x1033bc>
1c007bd0:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c007bd4:	40475860 	beqz	$r3,18264(0x4758) # 1c00c32c <_sidata+0x3bd8>
1c007bd8:	8bb5e600 	0x8bb5e600
1c007bdc:	8c026010 	0x8c026010
1c007be0:	f202fe00 	0xf202fe00
1c007be4:	f800fe02 	0xf800fe02
1c007be8:	0000ff00 	0x0000ff00
1c007bec:	017e0404 	0x017e0404
1c007bf0:	0f304780 	0x0f304780
1c007bf4:	47002710 	bnez	$r24,-3997660(0x430024) # 1bc37c18 <_start-0x3c83e8>
1c007bf8:	00007f80 	0x00007f80
1c007bfc:	009db7e8 	bstrins.d	$r8,$r31,0x1d,0x2d
1c007c00:	22e2223e 	ll.d	$r30,$r17,-7648(0xe220)
1c007c04:	22fe003e 	ll.d	$r30,$r1,-512(0xfe00)
1c007c08:	22222222 	ll.d	$r2,$r17,8736(0x2220)
1c007c0c:	200002e2 	ll.w	$r2,$r23,0
1c007c10:	111f203f 	addu16i.d	$r31,$r1,18376(0x47c8)
1c007c14:	447f0011 	bnez	$r0,-3899648(0x447f00) # 1bc4fb14 <_start-0x3b04ec>
1c007c18:	44444444 	bnez	$r2,1066052(0x104444) # 1c10c05c <_sidata+0x103908>
1c007c1c:	e7004047 	0xe7004047
1c007c20:	0404bba6 	csrxchg	$r6,$r29,0x12e
1c007c24:	d484f404 	0xd484f404
1c007c28:	d4a4a6a5 	0xd4a4a6a5
1c007c2c:	0404f484 	csrxchg	$r4,$r4,0x13d
1c007c30:	fe000004 	0xfe000004
1c007c34:	3a120202 	0x3a120202
1c007c38:	1a121316 	pcalau12i	$r22,37016(0x9098)
1c007c3c:	7e824232 	0x7e824232
1c007c40:	aee50000 	0xaee50000
1c007c44:	040c109e 	csrxchg	$r30,$r4,0x304
1c007c48:	05641484 	0x05641484
1c007c4c:	0404f406 	csrrd	$r6,0x13d
1c007c50:	0c140404 	fcmp.cun.s	$fcc4,$f0,$f1
1c007c54:	84840400 	0x84840400
1c007c58:	14244744 	lu12i.w	$r4,74298(0x1223a)
1c007c5c:	140c070c 	lu12i.w	$r12,24632(0x6038)
1c007c60:	04844424 	csrwr	$r4,0x2111
1c007c64:	8caae900 	0x8caae900
1c007c68:	8282fa02 	0x8282fa02
1c007c6c:	204080fe 	ll.w	$r30,$r7,16512(0x4080)
1c007c70:	4c434c50 	jirl	$r16,$r2,17228(0x434c)
1c007c74:	00402050 	0x00402050
1c007c78:	84481808 	0x84481808
1c007c7c:	44403f44 	bnez	$r26,1065020(0x10403c) # 1c10bcb8 <_sidata+0x103564>
1c007c80:	604e4158 	blt	$r10,$r24,20032(0x4e40) # 1c00cac0 <_sidata+0x436c>
1c007c84:	00404758 	0x00404758
1c007c88:	4085b6e8 	beqz	$r23,2131380(0x2085b4) # 1c21023c <_sidata+0x207ae8>
1c007c8c:	ff484848 	0xff484848
1c007c90:	a2424848 	0xa2424848
1c007c94:	c2a2829e 	0xc2a2829e
1c007c98:	800000be 	0x800000be
1c007c9c:	7f201f60 	0x7f201f60
1c007ca0:	4f404444 	jirl	$r4,$r2,-49084(0x34044)
1c007ca4:	48484848 	bceqz	$fcc2,2115656(0x204848) # 1c20c4ec <_sidata+0x203d98>
1c007ca8:	e500404f 	0xe500404f
1c007cac:	1404b0a3 	lu12i.w	$r3,9605(0x2585)
1c007cb0:	545454d4 	bl	55596116(0x3505454) # 1f50d104 <_sidata+0x35049b0>
1c007cb4:	5454df54 	bl	-45067044(0xd5054dc) # 1950d190 <_start-0x2af2e70>
1c007cb8:	14d45454 	lu12i.w	$r20,434850(0x6a2a2)
1c007cbc:	60800004 	blt	$r0,$r4,32768(0x8000) # 1c00fcbc <_sidata+0x7568>
1c007cc0:	0202021f 	slti	$r31,$r16,128(0x80)
1c007cc4:	02020302 	slti	$r2,$r24,128(0x80)
1c007cc8:	00030202 	0x00030202
1c007ccc:	b3e60000 	0xb3e60000
1c007cd0:	026010a2 	sltui	$r2,$r5,-2044(0x804)
1c007cd4:	f800c00c 	0xf800c00c
1c007cd8:	ff888888 	0xff888888
1c007cdc:	18a88888 	pcaddi	$r8,345156(0x54444)
1c007ce0:	7c040400 	0x7c040400
1c007ce4:	1f608003 	pcaddu18i	$r3,-326656(0xb0400)
1c007ce8:	102c4380 	addu16i.d	$r0,$r28,2832(0xb10)
1c007cec:	80814628 	0x80814628
1c007cf0:	00000000 	0x00000000

1c007cf4 <tfont32>:
1c007cf4:	00be99e7 	bstrins.d	$r7,$r15,0x3e,0x26
1c007cf8:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007cfc:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007d00:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007d04:	70f0f010 	vsrlr.h	$vr16,$vr0,$vr28
1c007d08:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007d0c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007d10:	10181010 	addu16i.d	$r16,$r0,1540(0x604)
	...
1c007d1c:	f8fc0000 	0xf8fc0000
1c007d20:	08080808 	0x08080808
1c007d24:	08080b0c 	0x08080b0c
1c007d28:	08080808 	0x08080808
1c007d2c:	f8fc0808 	0xf8fc0808
	...
1c007d3c:	ffff0000 	0xffff0000
1c007d40:	08080808 	0x08080808
1c007d44:	08080808 	0x08080808
1c007d48:	08080808 	0x08080808
1c007d4c:	ffff0808 	0xffff0808
	...
1c007d5c:	3f7f0000 	0x3f7f0000
1c007d60:	08080808 	0x08080808
1c007d64:	08080808 	0x08080808
1c007d68:	08080808 	0x08080808
1c007d6c:	3f7f0808 	0x3f7f0808
1c007d70:	00000000 	0x00000000
1c007d74:	e7000000 	0xe7000000
1c007d78:	000091a7 	0x000091a7
1c007d7c:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c007d80:	e0e02020 	0xe0e02020
1c007d84:	18181030 	pcaddi	$r16,49281(0xc081)
1c007d88:	80000000 	0x80000000
1c007d8c:	00000080 	0x00000080
1c007d90:	f8fc0000 	0xf8fc0000
1c007d94:	00000008 	0x00000008
1c007d98:	00000000 	0x00000000
1c007d9c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007da0:	ffff9010 	0xffff9010
1c007da4:	18101010 	pcaddi	$r16,32896(0x8080)
1c007da8:	c0000010 	0xc0000010
1c007dac:	00060781 	alsl.wu	$r1,$r28,$r1,0x1
1c007db0:	ffff0000 	0xffff0000
	...
1c007dbc:	18204080 	pcaddi	$r0,66052(0x10204)
1c007dc0:	ffff030e 	0xffff030e
1c007dc4:	5e060301 	bne	$r24,$r1,-129536(0x20600) # 1bfe83c4 <_start-0x17c3c>
1c007dc8:	20202040 	ll.w	$r0,$r2,8224(0x2020)
1c007dcc:	10102321 	addu16i.d	$r1,$r25,1032(0x408)
1c007dd0:	ffff1010 	0xffff1010
1c007dd4:	0c0c0808 	0x0c0c0808
1c007dd8:	01000000 	0x01000000
1c007ddc:	00000000 	0x00000000
1c007de0:	3f7f0000 	0x3f7f0000
	...
1c007df0:	3f7f0000 	0x3f7f0000
1c007df4:	00000000 	0x00000000
1c007df8:	8de80000 	0x8de80000
1c007dfc:	000000a3 	0x000000a3
1c007e00:	80808080 	0x80808080
1c007e04:	80808080 	0x80808080
1c007e08:	8088f8fc 	0x8088f8fc
1c007e0c:	80808080 	0x80808080
1c007e10:	8088f8fc 	0x8088f8fc
1c007e14:	e0c08080 	0xe0c08080
1c007e18:	000080c0 	0x000080c0
1c007e1c:	00000000 	0x00000000
1c007e20:	10f8c080 	addu16i.d	$r0,$r4,15920(0x3e30)
1c007e24:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c007e28:	10101717 	addu16i.d	$r23,$r24,1029(0x405)
1c007e2c:	1050f0f0 	addu16i.d	$r16,$r7,5180(0x143c)
1c007e30:	10101317 	addu16i.d	$r23,$r24,1028(0x404)
1c007e34:	f0d01010 	0xf0d01010
1c007e38:	00001038 	clo.w	$r24,$r1
1c007e3c:	00000000 	0x00000000
1c007e40:	02020200 	slti	$r0,$r16,128(0x80)
1c007e44:	c2820202 	0xc2820202
1c007e48:	061e3a62 	cacop	0x2,$r19,1934(0x78e)
1c007e4c:	0e02ffff 	0x0e02ffff
1c007e50:	82c26212 	0x82c26212
1c007e54:	03020282 	lu52i.d	$r2,$r20,128(0x80)
1c007e58:	00000203 	0x00000203
1c007e5c:	10000000 	addu16i.d	$r0,$r0,0
1c007e60:	06040808 	cacop	0x8,$r0,258(0x102)
1c007e64:	00010102 	0x00010102
1c007e68:	00000000 	0x00000000
1c007e6c:	00003f7f 	revb.d	$r31,$r27
1c007e70:	01000000 	0x01000000
1c007e74:	0e060303 	0x0e060303
1c007e78:	0004040e 	alsl.w	$r14,$r0,$r1,0x1
1c007e7c:	9b88e500 	0x9b88e500
1c007e80:	00000000 	0x00000000
1c007e84:	c0000000 	0xc0000000
1c007e88:	28183cf0 	ld.b	$r16,$r7,1551(0x60f)
1c007e8c:	80c04060 	0x80c04060
	...
1c007e98:	f8000000 	0xf8000000
1c007e9c:	000000f8 	0x000000f8
1c007ea0:	40800000 	beqz	$r0,32768(0x8000) # 1c00fea0 <_sidata+0x774c>
1c007ea4:	23e6f830 	sc.d	$r16,$r1,-6408(0xe6f8)
1c007ea8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007eac:	23f0e020 	sc.d	$r0,$r1,-3872(0xf0e0)
1c007eb0:	00000207 	0x00000207
1c007eb4:	0002ff00 	0x0002ff00
1c007eb8:	ff000000 	0xff000000
1c007ebc:	000000ff 	0x000000ff
1c007ec0:	00000100 	0x00000100
1c007ec4:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c007ec8:	60200000 	blt	$r0,$r0,8192(0x2000) # 1c009ec8 <_sidata+0x1774>
1c007ecc:	001f3f60 	mulw.d.w	$r0,$r27,$r15
1c007ed0:	00008000 	0x00008000
1c007ed4:	00007f00 	0x00007f00
1c007ed8:	ff000000 	0xff000000
1c007edc:	000000ff 	0x000000ff
1c007ee0:	00000000 	0x00000000
1c007ee4:	303f0700 	0x303f0700
1c007ee8:	30303030 	0x30303030
1c007eec:	30303030 	0x30303030
1c007ef0:	00103f38 	add.w	$r24,$r25,$r15
1c007ef4:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007ef8:	3f703030 	0x3f703030
1c007efc:	0000001f 	0x0000001f
1c007f00:	0088bcef 	bstrins.d	$r15,$r7,0x8,0x2f
	...
1c007f18:	40800000 	beqz	$r0,32768(0x8000) # 1c00ff18 <_sidata+0x77c4>
1c007f1c:	00102040 	add.w	$r0,$r2,$r8
	...
1c007f34:	1cf00000 	pcaddu12i	$r0,491520(0x78000)
1c007f38:	00000306 	0x00000306
	...
1c007f54:	701f0000 	vaddwev.d.w	$vr0,$vr0,$vr0
1c007f58:	000000c0 	0x000000c0
	...
1c007f78:	04020100 	csrxchg	$r0,$r8,0x80
1c007f7c:	0010080c 	add.w	$r12,$r0,$r2
1c007f80:	e5000000 	0xe5000000
1c007f84:	0000978c 	0x0000978c
	...
1c007f90:	08f8fc00 	0x08f8fc00
1c007f94:	00000000 	0x00000000
1c007f98:	0008f8fc 	bytepick.w	$r28,$r7,$r30,0x1
	...
1c007fa8:	08080808 	0x08080808
1c007fac:	08080808 	0x08080808
1c007fb0:	00ffff08 	bstrpick.d	$r8,$r24,0x3f,0x3f
1c007fb4:	00000000 	0x00000000
1c007fb8:	4040ffff 	beqz	$r31,-245508(0x7c40fc) # 1bfcc0b4 <_start-0x33f4c>
1c007fbc:	18103020 	pcaddi	$r0,33153(0x8181)
1c007fc0:	00040e0c 	alsl.w	$r12,$r16,$r3,0x1
	...
1c007fcc:	80000000 	0x80000000
1c007fd0:	00ffff80 	bstrpick.d	$r0,$r28,0x3f,0x3f
1c007fd4:	00000000 	0x00000000
1c007fd8:	0000ffff 	0x0000ffff
1c007fdc:	00000000 	0x00000000
1c007fe0:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
1c007fe4:	00000000 	0x00000000
1c007fe8:	03060606 	lu52i.d	$r6,$r16,385(0x181)
1c007fec:	00010103 	0x00010103
1c007ff0:	003f7f00 	0x003f7f00
1c007ff4:	00000000 	0x00000000
1c007ff8:	30303f1f 	0x30303f1f
1c007ffc:	30303030 	0x30303030
1c008000:	183f3830 	pcaddi	$r16,129473(0x1f9c1)
1c008004:	bae40000 	0xbae40000
1c008008:	800000ac 	0x800000ac
1c00800c:	80808080 	0x80808080
1c008010:	80808080 	0x80808080
1c008014:	8c808080 	0x8c808080
1c008018:	80b0f898 	0x80b0f898
1c00801c:	80808080 	0x80808080
1c008020:	c0808080 	0xc0808080
1c008024:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
	...
1c008030:	08f8f800 	0x08f8f800
1c008034:	08080808 	0x08080808
1c008038:	08080808 	0x08080808
1c00803c:	f8080808 	0xf8080808
1c008040:	000008fc 	0x000008fc
	...
1c008050:	e4cf0f00 	0xe4cf0f00
1c008054:	04040444 	csrxchg	$r4,$r2,0x101
1c008058:	0404fcfc 	csrxchg	$r28,$r7,0x13f
1c00805c:	cf442404 	0xcf442404
1c008060:	0000008f 	0x0000008f
1c008064:	00000000 	0x00000000
1c008068:	20000000 	ll.w	$r0,$r0,0
1c00806c:	04081010 	csrrd	$r16,0x204
1c008070:	00010306 	0x00010306
1c008074:	70301010 	vsubwev.h.bu	$vr16,$vr0,$vr4
1c008078:	00003f3f 	revb.d	$r31,$r25
1c00807c:	00000000 	0x00000000
1c008080:	1e0e0301 	pcaddu18i	$r1,28696(0x7018)
1c008084:	00000018 	0x00000018
1c008088:	89bcef00 	0x89bcef00
1c00808c:	00000000 	0x00000000
1c008090:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c008094:	0080c060 	bstrins.d	$r0,$r3,0x0,0x30
	...
1c0080b4:	06010000 	cacop	0x0,$r0,64(0x40)
1c0080b8:	0000f03c 	0x0000f03c
	...
1c0080d4:	c0800000 	0xc0800000
1c0080d8:	00000f78 	0x00000f78
	...
1c0080f0:	0c081000 	0x0c081000
1c0080f4:	00010306 	0x00010306
	...
1c00810c:	0091a7e7 	bstrins.d	$r7,$r31,0x11,0x29
1c008110:	40404000 	beqz	$r0,16448(0x4040) # 1c00c150 <_sidata+0x39fc>
1c008114:	e0202020 	0xe0202020
1c008118:	181030e0 	pcaddi	$r0,33159(0x8187)
1c00811c:	00000018 	0x00000018
1c008120:	00008080 	0x00008080
1c008124:	fc000000 	0xfc000000
1c008128:	000008f8 	0x000008f8
1c00812c:	00000000 	0x00000000
1c008130:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008134:	ff901010 	0xff901010
1c008138:	101010ff 	addu16i.d	$r31,$r7,1028(0x404)
1c00813c:	00001018 	clo.w	$r24,$r0
1c008140:	060781c0 	cacop	0x0,$r14,480(0x1e0)
1c008144:	ff000000 	0xff000000
1c008148:	000000ff 	0x000000ff
1c00814c:	00000000 	0x00000000
1c008150:	20408000 	ll.w	$r0,$r0,16512(0x4080)
1c008154:	ff030e18 	0xff030e18
1c008158:	060301ff 	cacop	0x1f,$r15,192(0xc0)
1c00815c:	2020405e 	ll.w	$r30,$r2,8256(0x2040)
1c008160:	10232120 	addu16i.d	$r0,$r9,2248(0x8c8)
1c008164:	ff101010 	0xff101010
1c008168:	0c0808ff 	0x0c0808ff
1c00816c:	0000000c 	0x0000000c
1c008170:	00000001 	0x00000001
1c008174:	7f000000 	0x7f000000
1c008178:	0000003f 	0x0000003f
	...
1c008184:	7f000000 	0x7f000000
1c008188:	0000003f 	0x0000003f
1c00818c:	e6000000 	0xe6000000
1c008190:	0000808a 	0x0000808a
1c008194:	00000000 	0x00000000
1c008198:	08f8fc00 	0x08f8fc00
	...
1c0081a4:	f8fc0000 	0xf8fc0000
1c0081a8:	00000008 	0x00000008
	...
1c0081b4:	02020202 	slti	$r2,$r16,128(0x80)
1c0081b8:	02ffff02 	addi.d	$r2,$r24,-1(0xfff)
1c0081bc:	42438382 	beqz	$r28,672640(0xa4380) # 1c0ac53c <_sidata+0xa3de8>
1c0081c0:	82828282 	0x82828282
1c0081c4:	ffff8282 	0xffff8282
1c0081c8:	82828282 	0x82828282
1c0081cc:	020383c2 	slti	$r2,$r30,224(0xe0)
1c0081d0:	00000000 	0x00000000
1c0081d4:	06060c0c 	cacop	0xc,$r0,387(0x183)
1c0081d8:	01ffff02 	0x01ffff02
1c0081dc:	00000000 	0x00000000
1c0081e0:	1c030000 	pcaddu12i	$r0,6144(0x1800)
1c0081e4:	8000c070 	0x8000c070
1c0081e8:	0f3c70c0 	0x0f3c70c0
1c0081ec:	00000003 	0x00000003
1c0081f0:	00000000 	0x00000000
1c0081f4:	30101000 	vldrepl.d	$vr0,$r0,32(0x20)
1c0081f8:	003f3f70 	0x003f3f70
1c0081fc:	20204040 	ll.w	$r0,$r2,8256(0x2040)
1c008200:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c008204:	0703060c 	0x0703060c
1c008208:	38180c0f 	stx.w	$r15,$r0,$r3
1c00820c:	20303030 	ll.w	$r16,$r1,12336(0x3030)
1c008210:	8fe50000 	0x8fe50000
1c008214:	00000091 	0x00000091
1c008218:	f0800000 	0xf0800000
1c00821c:	00000070 	0x00000070
1c008220:	18fcc000 	pcaddi	$r0,517632(0x7e600)
1c008224:	00000000 	0x00000000
1c008228:	70100800 	0x70100800
1c00822c:	0000c0e0 	0x0000c0e0
	...
1c008238:	05070e04 	0x05070e04
1c00823c:	84040404 	0x84040404
1c008240:	8487fff4 	0x8487fff4
1c008244:	84848484 	0x84848484
1c008248:	84848484 	0x84848484
1c00824c:	0484c584 	csrxchg	$r4,$r12,0x2131
1c008250:	00040606 	alsl.w	$r6,$r16,$r1,0x1
	...
1c00825c:	0f3ce080 	0x0f3ce080
1c008260:	06010003 	cacop	0x3,$r0,64(0x40)
1c008264:	80e03018 	0x80e03018
1c008268:	1e3860c0 	pcaddu18i	$r0,115462(0x1c306)
1c00826c:	00000307 	0x00000307
1c008270:	00000000 	0x00000000
1c008274:	20000000 	ll.w	$r0,$r0,0
1c008278:	03040810 	lu52i.d	$r16,$r0,258(0x102)
1c00827c:	20204041 	ll.w	$r1,$r2,8256(0x2040)
1c008280:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c008284:	0303060c 	lu52i.d	$r12,$r16,193(0xc1)
1c008288:	0c060703 	0x0c060703
1c00828c:	3038181c 	0x3038181c
1c008290:	00103030 	add.w	$r16,$r1,$r12
1c008294:	95b1e500 	0x95b1e500
1c008298:	00000000 	0x00000000
1c00829c:	08f80400 	0x08f80400
1c0082a0:	08080808 	0x08080808
1c0082a4:	08080808 	0x08080808
1c0082a8:	08080808 	0x08080808
1c0082ac:	08080808 	0x08080808
1c0082b0:	08f8fc08 	0x08f8fc08
	...
1c0082bc:	21ff0000 	sc.w	$r0,$r0,-256(0xff00)
1c0082c0:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c0082c4:	21fdff21 	sc.w	$r1,$r25,-516(0xfdfc)
1c0082c8:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c0082cc:	2121fdff 	sc.w	$r31,$r15,8700(0x21fc)
1c0082d0:	00233321 	div.du	$r1,$r25,$r12
	...
1c0082dc:	043fff00 	csrxchg	$r0,$r24,0xfff
1c0082e0:	fc040404 	0xfc040404
1c0082e4:	040707fc 	csrxchg	$r28,$r31,0x1c1
1c0082e8:	04c4740c 	csrrd	$r12,0x311d
1c0082ec:	64448707 	bge	$r24,$r7,17540(0x4484) # 1c00c770 <_sidata+0x401c>
1c0082f0:	06062434 	cacop	0x14,$r1,393(0x189)
1c0082f4:	00000004 	0x00000004
1c0082f8:	18204000 	pcaddi	$r0,66048(0x10200)
1c0082fc:	00000107 	0x00000107
1c008300:	3f000000 	0x3f000000
1c008304:	0818103f 	fmadd.s	$f31,$f1,$f4,$f16
1c008308:	03000004 	lu52i.d	$r4,$r0,0
1c00830c:	180c0607 	pcaddi	$r7,24624(0x6030)
1c008310:	30383818 	0x30383818
1c008314:	00001010 	clo.w	$r16,$r0
1c008318:	00899ce6 	bstrins.d	$r6,$r7,0x9,0x27
1c00831c:	80808000 	0x80808000
1c008320:	80808080 	0x80808080
1c008324:	80808080 	0x80808080
1c008328:	88b8fce0 	0x88b8fce0
1c00832c:	80808080 	0x80808080
1c008330:	80808080 	0x80808080
1c008334:	c0e0c080 	0xc0e0c080
1c008338:	00000080 	0x00000080
1c00833c:	00000000 	0x00000000
1c008340:	c0800000 	0xc0800000
1c008344:	171cf8e0 	lu32i.d	$r0,-464953(0x8e7c7)
1c008348:	10101013 	addu16i.d	$r19,$r0,1028(0x404)
1c00834c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008350:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
	...
1c00835c:	04081000 	csrrd	$r0,0x204
1c008360:	00010306 	0x00010306
1c008364:	4242ffff 	beqz	$r31,-113924(0x7e42fc) # 1bfec660 <_start-0x139a0>
1c008368:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac5a8 <_sidata+0xa3e54>
1c00836c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac5ac <_sidata+0xa3e58>
1c008370:	00ff4242 	bstrpick.d	$r2,$r18,0x3f,0x10
	...
1c008384:	00003f7f 	revb.d	$r31,$r27
1c008388:	00000000 	0x00000000
1c00838c:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008390:	003f7030 	0x003f7030
1c008394:	00000000 	0x00000000
1c008398:	e9000000 	0xe9000000
1c00839c:	00009099 	0x00009099
1c0083a0:	10f00800 	addu16i.d	$r0,$r0,15362(0x3c02)
1c0083a4:	f0101010 	0xf0101010
1c0083a8:	00001078 	clo.w	$r24,$r3
1c0083ac:	1010f0f8 	addu16i.d	$r24,$r7,1084(0x43c)
1c0083b0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0083b4:	f8101010 	0xf8101010
1c0083b8:	00000010 	0x00000010
1c0083bc:	00000000 	0x00000000
1c0083c0:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c0083c4:	c33e0000 	0xc33e0000
1c0083c8:	00000000 	0x00000000
1c0083cc:	8484ffff 	0x8484ffff
1c0083d0:	84848484 	0x84848484
1c0083d4:	ff848484 	0xff848484
	...
1c0083e0:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c0083e4:	c0c04000 	0xc0c04000
1c0083e8:	00007eff 	0x00007eff
1c0083ec:	0000ffff 	0x0000ffff
1c0083f0:	c0701e01 	0xc0701e01
1c0083f4:	0d1030a0 	vbitsel.v	$vr0,$vr5,$vr12,$vr0
1c0083f8:	0000040e 	0x0000040e
1c0083fc:	00000000 	0x00000000
1c008400:	007f0000 	bstrins.w	$r0,$r0,0x1f,0x0
1c008404:	00010000 	asrtle.d	$r0,$r0
1c008408:	00000000 	0x00000000
1c00840c:	08183f1f 	fmadd.s	$f31,$f24,$f15,$f16
1c008410:	01020204 	0x01020204
1c008414:	1c0e0703 	pcaddu12i	$r3,28728(0x7038)
1c008418:	00183818 	sra.w	$r24,$r0,$r14
1c00841c:	85e50000 	0x85e50000
1c008420:	000000ac 	0x000000ac
1c008424:	00000000 	0x00000000
1c008428:	80000000 	0x80000000
1c00842c:	001078e0 	add.w	$r0,$r7,$r30
1c008430:	1c000000 	pcaddu12i	$r0,0
1c008434:	000080e0 	0x000080e0
	...
1c008444:	c0800000 	0xc0800000
1c008448:	070e3860 	0x070e3860
1c00844c:	00000001 	0x00000001
1c008450:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
1c008454:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
1c008458:	c0c0e070 	0xc0c0e070
1c00845c:	00000080 	0x00000080
1c008460:	04000000 	csrrd	$r0,0x0
1c008464:	00010302 	0x00010302
1c008468:	c0000000 	0xc0000000
1c00846c:	071c3860 	0x071c3860
1c008470:	00000103 	0x00000103
1c008474:	0080c020 	bstrins.d	$r0,$r1,0x0,0x30
1c008478:	03010000 	lu52i.d	$r0,$r0,64(0x40)
1c00847c:	00010103 	0x00010103
1c008480:	00000000 	0x00000000
1c008484:	38080000 	ldx.w	$r0,$r0,$r0
1c008488:	191b1e3c 	pcaddi	$r28,-468751(0x8d8f1)
1c00848c:	08081818 	0x08081818
1c008490:	08080808 	0x08080808
1c008494:	0f090808 	0x0f090808
1c008498:	00307c1e 	0x00307c1e
1c00849c:	00000000 	0x00000000
1c0084a0:	b88fe500 	0xb88fe500
1c0084a4:	00000000 	0x00000000
1c0084a8:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c0084ac:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0084b0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0084b4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0084b8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0084bc:	00f0f810 	bstrpick.d	$r16,$r0,0x30,0x3e
1c0084c0:	00000000 	0x00000000
1c0084c4:	04000000 	csrrd	$r0,0x0
1c0084c8:	84c40404 	0x84c40404
1c0084cc:	84848484 	0x84848484
1c0084d0:	84848484 	0x84848484
1c0084d4:	0684c484 	0x0684c484
1c0084d8:	00000406 	0x00000406
1c0084dc:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c0084e8:	ffff0000 	0xffff0000
1c0084ec:	40404040 	beqz	$r2,16448(0x4040) # 1c00c52c <_sidata+0x3dd8>
1c0084f0:	40404040 	beqz	$r2,16448(0x4040) # 1c00c530 <_sidata+0x3ddc>
1c0084f4:	0000ff40 	0x0000ff40
1c0084f8:	00000000 	0x00000000
1c0084fc:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c008508:	01030000 	fsub.d	$f0,$f0,$f0
	...
1c008514:	00010100 	asrtle.d	$r8,$r0
1c008518:	30101010 	vldrepl.d	$vr16,$r0,32(0x20)
1c00851c:	000f3f70 	bytepick.d	$r16,$r27,$r15,0x6
1c008520:	00000000 	0x00000000
1c008524:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c008528:	00000000 	0x00000000
1c00852c:	f0080000 	0xf0080000
1c008530:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008534:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008538:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00853c:	f0f81010 	0xf0f81010
	...
1c00854c:	ff000000 	0xff000000
1c008550:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac790 <_sidata+0xa403c>
1c008554:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac794 <_sidata+0xa4040>
1c008558:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac798 <_sidata+0xa4044>
1c00855c:	ffff4242 	0xffff4242
	...
1c008568:	08000000 	0x08000000
1c00856c:	c0e17030 	0xc0e17030
1c008570:	fe000000 	0xfe000000
1c008574:	000000fe 	0x000000fe
1c008578:	00fefe00 	bstrpick.d	$r0,$r16,0x3e,0x3f
1c00857c:	60c08000 	blt	$r0,$r0,49280(0xc080) # 1c0145fc <_sidata+0xbea8>
1c008580:	00081c38 	bytepick.w	$r24,$r1,$r7,0x0
1c008584:	00000000 	0x00000000
1c008588:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c00858c:	13111010 	addu16i.d	$r16,$r0,-15292(0xc444)
1c008590:	1f101010 	pcaddu18i	$r16,-491392(0x88080)
1c008594:	1010101f 	addu16i.d	$r31,$r0,1028(0x404)
1c008598:	141f1f10 	lu12i.w	$r16,63736(0xf8f8)
1c00859c:	10101112 	addu16i.d	$r18,$r8,1028(0x404)
1c0085a0:	10181810 	addu16i.d	$r16,$r0,1542(0x606)
1c0085a4:	e7000000 	0xe7000000
1c0085a8:	0000baa4 	0x0000baa4
1c0085ac:	00000000 	0x00000000
1c0085b0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0085b4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0085b8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0085bc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0085c0:	30382020 	0x30382020
1c0085c4:	00000020 	0x00000020
1c0085c8:	00000000 	0x00000000
1c0085cc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0085d0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0085d4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0085d8:	20e0e020 	ll.w	$r0,$r1,-7968(0xe0e0)
1c0085dc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0085e0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0085e4:	20303020 	ll.w	$r0,$r1,12336(0x3030)
1c0085e8:	00000000 	0x00000000
1c0085ec:	80000000 	0x80000000
1c0085f0:	1e3c70c0 	pcaddu18i	$r0,123782(0x1e386)
1c0085f4:	00000406 	0x00000406
1c0085f8:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c0085fc:	04020000 	csrrd	$r0,0x80
1c008600:	e0701808 	0xe0701808
1c008604:	000080c0 	0x000080c0
1c008608:	00000000 	0x00000000
1c00860c:	01030408 	fsub.d	$f8,$f0,$f1
1c008610:	08000000 	0x08000000
1c008614:	30101008 	vldrepl.d	$vr8,$r0,32(0x20)
1c008618:	001f3f70 	mulw.d.w	$r16,$r27,$r15
	...
1c008624:	00030701 	0x00030701
1c008628:	aee50000 	0xaee50000
1c00862c:	0000009e 	0x0000009e
1c008630:	00800000 	bstrins.d	$r0,$r0,0x0,0x0
1c008634:	00000000 	0x00000000
1c008638:	04000000 	csrrd	$r0,0x0
1c00863c:	0070f818 	bstrpick.w	$r24,$r0,0x10,0x1e
	...
1c008648:	00000080 	0x00000080
1c00864c:	00000000 	0x00000000
1c008650:	810f1c18 	0x810f1c18
1c008654:	09010101 	0x09010101
1c008658:	01713919 	0x01713919
1c00865c:	fdff0101 	0xfdff0101
1c008660:	01010105 	fadd.d	$f5,$f8,$f0
1c008664:	07090101 	0x07090101
1c008668:	00020307 	0x00020307
1c00866c:	10000000 	addu16i.d	$r0,$r0,0
1c008670:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008674:	1e171311 	pcaddu18i	$r17,47256(0xb898)
1c008678:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00867c:	93bffcd0 	0x93bffcd0
1c008680:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008684:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008688:	00101818 	add.w	$r24,$r0,$r6
1c00868c:	40000000 	beqz	$r0,0 # 1c00868c <tfont32+0x998>
1c008690:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c008694:	10102020 	addu16i.d	$r0,$r1,1032(0x408)
1c008698:	070e0c18 	0x070e0c18
1c00869c:	01000003 	0x01000003
1c0086a0:	06020301 	cacop	0x1,$r24,128(0x80)
1c0086a4:	383c1c0e 	fstx.d	$f14,$r0,$r7
1c0086a8:	00000030 	0x00000030
1c0086ac:	8caae900 	0x8caae900
1c0086b0:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c0086b4:	10109090 	addu16i.d	$r16,$r4,1060(0x424)
1c0086b8:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
1c0086bc:	00000000 	0x00000000
1c0086c0:	f0800000 	0xf0800000
1c0086c4:	80e8183c 	0x80e8183c
	...
1c0086d0:	80000000 	0x80000000
1c0086d4:	00001fff 	ctz.w	$r31,$r31
1c0086d8:	003fff00 	0x003fff00
1c0086dc:	50204080 	b	33562688(0x2002040) # 1e00a71c <_sidata+0x2001fc8>
1c0086e0:	4043474c 	beqz	$r26,3162948(0x304344) # 1c30ca24 <_sidata+0x3042d0>
1c0086e4:	43404040 	beqz	$r2,213056(0x34040) # 1c03c724 <_sidata+0x33fd0>
1c0086e8:	70784c66 	0x70784c66
1c0086ec:	00202070 	div.w	$r16,$r3,$r8
1c0086f0:	c1c14000 	0xc1c14000
1c0086f4:	21214143 	sc.w	$r3,$r10,8512(0x2140)
1c0086f8:	ff810121 	0xff810121
1c0086fc:	1c00000f 	pcaddu12i	$r15,0
1c008700:	0c02c0f0 	0x0c02c0f0
1c008704:	0000e0f8 	0x0000e0f8
1c008708:	061f7cc0 	cacop	0x0,$r6,2015(0x7df)
	...
1c008714:	18080800 	pcaddi	$r0,16448(0x4040)
1c008718:	070f1838 	0x070f1838
1c00871c:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008720:	10101113 	addu16i.d	$r19,$r8,1028(0x404)
1c008724:	1e101011 	pcaddu18i	$r17,32896(0x8080)
1c008728:	18101013 	pcaddi	$r19,32896(0x8080)
1c00872c:	00001018 	clo.w	$r24,$r0
1c008730:	e585b6e8 	0xe585b6e8
1c008734:	b3e6b0a3 	0xb3e6b0a3
1c008738:	9280e5a2 	0x9280e5a2
1c00873c:	e9a6bde8 	0xe9a6bde8
1c008740:	bee8b79b 	0xbee8b79b
1c008744:	000000be 	0x000000be
1c008748:	20643525 	ll.w	$r5,$r9,25652(0x6434)
1c00874c:	20204d43 	ll.w	$r3,$r10,8268(0x204c)
1c008750:	00002020 	clo.d	$r0,$r1

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c006909 	pcaddu12i	$r9,840(0x348)
80001008:	8000019c 	0x8000019c
8000100c:	80000018 	0x80000018
80001010:	8000000c 	0x8000000c
80001014:	8000103c 	0x8000103c
80001018:	800001c0 	0x800001c0
8000101c:	80000008 	0x80000008
80001020:	80000010 	0x80000010
80001024:	800001dc 	0x800001dc
80001028:	80000002 	0x80000002
8000102c:	1c006900 	pcaddu12i	$r0,840(0x348)
80001030:	80000014 	0x80000014
80001034:	80000004 	0x80000004
80001038:	8000009c 	0x8000009c

8000103c <g_SystemFreq>:
8000103c:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

80001040 <dlln3x_address>:
80001040:	219007fe 	sc.w	$r30,$r31,-28668(0x9004)
80001044:	90110000 	0x90110000
80001048:	0000ff00 	0x0000ff00

8000104c <dlln3x_network_id>:
8000104c:	219007fe 	sc.w	$r30,$r31,-28668(0x9004)
80001050:	91120000 	0x91120000
80001054:	0000ff01 	0x0000ff01

80001058 <dlln3x_channel>:
80001058:	219006fe 	sc.w	$r30,$r23,-28668(0x9004)
8000105c:	12130000 	addu16i.d	$r0,$r0,-31552(0x84c0)
80001060:	000000ff 	0x000000ff

80001064 <dlln3x_baud>:
80001064:	219006fe 	sc.w	$r30,$r23,-28668(0x9004)
80001068:	08140000 	fmadd.s	$f0,$f0,$f0,$f8
8000106c:	000000ff 	0x000000ff

80001070 <dlln3x_rest>:
80001070:	219005fe 	sc.w	$r30,$r15,-28668(0x9004)
80001074:	ff100000 	0xff100000

Disassembly of section .bss:

80000000 <_sbss>:
	...

80000002 <show_time>:
	...

80000004 <status>:
_sbss():
80000004:	00000000 	0x00000000

80000008 <real_time>:
80000008:	00000000 	0x00000000

8000000c <dis_temp>:
8000000c:	00000000 	0x00000000

80000010 <show_distance>:
80000010:	00000000 	0x00000000

80000014 <current_distance>:
	...

80000016 <distance.1481>:
	...

80000018 <Read_length>:
80000018:	00000000 	0x00000000

8000001c <exti_irq_handle>:
	...

8000009c <Read_Buffer>:
	...

8000019c <zigbee_data>:
8000019c:	00000000 	0x00000000

800001a0 <str>:
	...

800001c0 <display>:
	...

800001d4 <Ultrasonic_ts>:
	...

800001dc <Circular_queue>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
