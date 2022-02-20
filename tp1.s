	.file	1 "tp1.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.rdata
	.align	2
$LC0:
	.ascii	"Usage: \000"
	.align	2
$LC1:
	.ascii	"\011tp1 -h \000"
	.align	2
$LC2:
	.ascii	"\011tp1 -V \000"
	.align	2
$LC3:
	.ascii	"\011tp1 -i in_file -o outfile \000"
	.align	2
$LC4:
	.ascii	"Options: \012 \000"
	.align	2
$LC5:
	.ascii	"\011-V, --version     Print version and quit.\000"
	.align	2
$LC6:
	.ascii	"\011-h, --help        Print this information and quit. \000"
	.align	2
$LC7:
	.ascii	"\011-i, --input       Specify input stream/file, '-' for"
	.ascii	" stdin. \000"
	.align	2
$LC8:
	.ascii	"\011-o, --output      Specify output stream/file, '-' fo"
	.ascii	"r stdout \000"
	.align	2
$LC9:
	.ascii	"\011-d, --decode      Decode a base64-encoded file. \000"
	.align	2
$LC10:
	.ascii	"Examples: \000"
	.align	2
$LC11:
	.ascii	"\011tp1 < in.txt > out.txt \000"
	.align	2
$LC12:
	.ascii	"\011cat in.txt | tp1 -i - > out.txt \000"
	.text
	.align	2
	.globl	mensaje_ayuda
	.set	nomips16
	.set	nomicromips
	.ent	mensaje_ayuda
	.type	mensaje_ayuda, @function
mensaje_ayuda:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC1)($28)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC2)($28)
	addiu	$4,$2,%lo($LC2)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC3)($28)
	addiu	$4,$2,%lo($LC3)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC4)($28)
	addiu	$4,$2,%lo($LC4)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC5)($28)
	addiu	$4,$2,%lo($LC5)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC6)($28)
	addiu	$4,$2,%lo($LC6)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC7)($28)
	addiu	$4,$2,%lo($LC7)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC8)($28)
	addiu	$4,$2,%lo($LC8)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC9)($28)
	addiu	$4,$2,%lo($LC9)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC10)($28)
	addiu	$4,$2,%lo($LC10)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC11)($28)
	addiu	$4,$2,%lo($LC11)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got($LC12)($28)
	addiu	$4,$2,%lo($LC12)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	mensaje_ayuda
	.size	mensaje_ayuda, .-mensaje_ayuda
	.rdata
	.align	2
$LC13:
	.ascii	"-i\000"
	.align	2
$LC14:
	.ascii	"-\000"
	.align	2
$LC15:
	.ascii	"-o\000"
	.align	2
$LC16:
	.ascii	"-h\000"
	.align	2
$LC17:
	.ascii	"-V\000"
	.align	2
$LC19:
	.ascii	"Versi\303\263n del TP: %.1f \012\000"
	.align	2
$LC20:
	.ascii	"r\000"
	.align	2
$LC21:
	.ascii	"w\000"
	.align	2
$LC22:
	.ascii	"%d %d\000"
	.align	2
$LC23:
	.ascii	"GCD(%d,%d) = %d \012\000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,200,$31		# vars= 128, regs= 10/0, args= 24, gp= 8
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-200
	sw	$31,196($sp)
	sw	$fp,192($sp)
	sw	$23,188($sp)
	sw	$22,184($sp)
	sw	$21,180($sp)
	sw	$20,176($sp)
	sw	$19,172($sp)
	sw	$18,168($sp)
	sw	$17,164($sp)
	sw	$16,160($sp)
	move	$fp,$sp
	.cprestore	24
	sw	$4,200($fp)
	sw	$5,204($fp)
	sw	$0,40($fp)
	sw	$0,44($fp)
	lw	$2,204($fp)
	addiu	$2,$2,4
	lw	$3,0($2)
	lw	$2,%got($LC13)($28)
	addiu	$5,$2,%lo($LC13)
	move	$4,$3
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L3
	nop

	lw	$2,204($fp)
	addiu	$2,$2,8
	lw	$3,0($2)
	lw	$2,%got($LC14)($28)
	addiu	$5,$2,%lo($LC14)
	move	$4,$3
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L4
	nop

	li	$2,1			# 0x1
	sw	$2,44($fp)
	lw	$2,%got(stdin)($28)
	lw	$2,0($2)
	sw	$2,48($fp)
	b	$L3
	nop

$L4:
	lw	$2,204($fp)
	lw	$2,8($2)
	sw	$2,32($fp)
$L3:
	lw	$2,204($fp)
	addiu	$2,$2,12
	lw	$3,0($2)
	lw	$2,%got($LC15)($28)
	addiu	$5,$2,%lo($LC15)
	move	$4,$3
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L5
	nop

	lw	$2,204($fp)
	addiu	$2,$2,16
	lw	$3,0($2)
	lw	$2,%got($LC14)($28)
	addiu	$5,$2,%lo($LC14)
	move	$4,$3
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L6
	nop

	li	$2,1			# 0x1
	sw	$2,40($fp)
	lw	$2,%got(stdout)($28)
	lw	$2,0($2)
	sw	$2,52($fp)
	b	$L5
	nop

$L6:
	lw	$2,204($fp)
	lw	$2,16($2)
	sw	$2,36($fp)
$L5:
	lw	$3,200($fp)
	li	$2,2			# 0x2
	bne	$3,$2,$L7
	nop

	lw	$2,204($fp)
	addiu	$2,$2,4
	lw	$3,0($2)
	lw	$2,%got($LC16)($28)
	addiu	$5,$2,%lo($LC16)
	move	$4,$3
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L7
	nop

	lw	$2,%got(mensaje_ayuda)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,mensaje_ayuda
1:	jalr	$25
	nop

	lw	$28,24($fp)
	move	$2,$0
	b	$L26
	nop

$L7:
	lw	$3,200($fp)
	li	$2,2			# 0x2
	bne	$3,$2,$L9
	nop

	lw	$2,204($fp)
	addiu	$2,$2,4
	lw	$3,0($2)
	lw	$2,%got($LC17)($28)
	addiu	$5,$2,%lo($LC17)
	move	$4,$3
	lw	$2,%call16(strcmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,strcmp
1:	jalr	$25
	nop

	lw	$28,24($fp)
	bne	$2,$0,$L9
	nop

	lw	$2,%got($LC18)($28)
	ldc1	$f0,%lo($LC18)($2)
	mfc1	$7,$f0
	mfhc1	$6,$f0
	lw	$2,%got($LC19)($28)
	addiu	$4,$2,%lo($LC19)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	move	$2,$0
	b	$L26
	nop

$L9:
	lw	$2,44($fp)
	bne	$2,$0,$L10
	nop

	lw	$2,%got($LC20)($28)
	addiu	$5,$2,%lo($LC20)
	lw	$4,32($fp)
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,48($fp)
	lw	$2,48($fp)
	bne	$2,$0,$L10
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L26
	nop

$L10:
	lw	$2,40($fp)
	bne	$2,$0,$L11
	nop

	lw	$2,%got($LC21)($28)
	addiu	$5,$2,%lo($LC21)
	lw	$4,36($fp)
	lw	$2,%call16(fopen)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fopen
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,52($fp)
	lw	$2,52($fp)
	bne	$2,$0,$L11
	nop

	li	$2,-1			# 0xffffffffffffffff
	b	$L26
	nop

$L11:
	sw	$0,56($fp)
	lw	$2,44($fp)
	bne	$2,$0,$L12
	nop

	b	$L13
	nop

$L14:
	addiu	$2,$fp,80
	lw	$6,48($fp)
	li	$5,50			# 0x32
	move	$4,$2
	lw	$2,%call16(fgets)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fgets
1:	jalr	$25
	nop

	lw	$28,24($fp)
	beq	$2,$0,$L13
	nop

	lb	$3,80($fp)
	li	$2,10			# 0xa
	beq	$3,$2,$L13
	nop

	lw	$2,56($fp)
	addiu	$2,$2,1
	sw	$2,56($fp)
$L13:
	lw	$4,48($fp)
	lw	$2,%call16(feof)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,feof
1:	jalr	$25
	nop

	lw	$28,24($fp)
	beq	$2,$0,$L14
	nop

	lw	$4,48($fp)
	lw	$2,%call16(rewind)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,rewind
1:	jalr	$25
	nop

	lw	$28,24($fp)
	b	$L15
	nop

$L12:
	li	$2,100			# 0x64
	sw	$2,56($fp)
$L15:
	lw	$2,56($fp)
	bgtz	$2,$L16
	nop

	lw	$2,44($fp)
	bne	$2,$0,$L17
	nop

	lw	$4,48($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,24($fp)
$L17:
	lw	$2,40($fp)
	bne	$2,$0,$L18
	nop

	lw	$4,52($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,24($fp)
$L18:
	li	$2,-1			# 0xffffffffffffffff
	b	$L26
	nop

$L16:
	lw	$6,56($fp)
	move	$2,$sp
	sw	$2,152($fp)
	addiu	$2,$6,-1
	sw	$2,60($fp)
	move	$2,$6
	sw	$2,140($fp)
	sw	$0,136($fp)
	lw	$9,140($fp)
	lw	$8,136($fp)
	move	$3,$9
	move	$2,$8
	srl	$4,$3,31
	sll	$22,$2,1
	or	$22,$4,$22
	sll	$23,$3,1
	move	$3,$23
	move	$2,$22
	move	$7,$9
	addu	$5,$3,$7
	sltu	$7,$5,$3
	addu	$4,$2,$8
	addu	$2,$7,$4
	move	$4,$2
	move	$3,$5
	move	$2,$4
	srl	$4,$3,27
	sll	$20,$2,5
	or	$20,$4,$20
	sll	$21,$3,5
	move	$3,$21
	move	$2,$20
	move	$3,$6
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	move	$2,$6
	sw	$2,148($fp)
	sw	$0,144($fp)
	lw	$9,148($fp)
	lw	$8,144($fp)
	move	$3,$9
	move	$2,$8
	srl	$4,$3,31
	sll	$18,$2,1
	or	$18,$4,$18
	sll	$19,$3,1
	move	$3,$19
	move	$2,$18
	move	$7,$9
	addu	$5,$3,$7
	sltu	$7,$5,$3
	addu	$4,$2,$8
	addu	$2,$7,$4
	move	$4,$2
	move	$3,$5
	move	$2,$4
	srl	$4,$3,27
	sll	$16,$2,5
	or	$16,$4,$16
	sll	$17,$3,5
	move	$3,$17
	move	$2,$16
	move	$3,$6
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$2,$2,3
	addiu	$2,$2,7
	srl	$2,$2,3
	sll	$2,$2,3
	subu	$sp,$sp,$2
	addiu	$2,$sp,24
	addiu	$2,$2,3
	srl	$2,$2,2
	sll	$2,$2,2
	sw	$2,64($fp)
	sw	$0,56($fp)
	b	$L19
	nop

$L20:
	addiu	$2,$fp,80
	lw	$6,48($fp)
	li	$5,50			# 0x32
	move	$4,$2
	lw	$2,%call16(fgets)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fgets
1:	jalr	$25
	nop

	lw	$28,24($fp)
	beq	$2,$0,$L19
	nop

	lb	$3,80($fp)
	li	$2,10			# 0xa
	beq	$3,$2,$L19
	nop

	lw	$4,64($fp)
	lw	$3,56($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	addu	$2,$4,$2
	sw	$2,68($fp)
	lw	$4,68($fp)
	lw	$2,68($fp)
	addiu	$2,$2,4
	addiu	$3,$fp,80
	move	$7,$2
	move	$6,$4
	lw	$2,%got($LC22)($28)
	addiu	$5,$2,%lo($LC22)
	move	$4,$3
	lw	$2,%call16(__isoc99_sscanf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__isoc99_sscanf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,56($fp)
	addiu	$2,$2,1
	sw	$2,56($fp)
$L19:
	lw	$4,48($fp)
	lw	$2,%call16(feof)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,feof
1:	jalr	$25
	nop

	lw	$28,24($fp)
	beq	$2,$0,$L20
	nop

	lw	$2,64($fp)
	sw	$2,72($fp)
	lw	$2,56($fp)
	sw	$2,76($fp)
	lw	$2,76($fp)
	beq	$2,$0,$L21
	nop

	lw	$5,76($fp)
	lw	$4,72($fp)
	lw	$2,%call16(euclides)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,euclides
1:	jalr	$25
	nop

	lw	$28,24($fp)
$L21:
	sw	$0,56($fp)
	b	$L22
	nop

$L23:
	lw	$4,64($fp)
	lw	$3,56($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	addu	$2,$4,$2
	lw	$5,0($2)
	lw	$4,64($fp)
	lw	$3,56($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	addu	$2,$4,$2
	lw	$6,4($2)
	lw	$4,64($fp)
	lw	$3,56($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	sll	$2,$2,2
	addu	$2,$4,$2
	lw	$2,8($2)
	sw	$2,16($sp)
	move	$7,$6
	move	$6,$5
	lw	$2,%got($LC23)($28)
	addiu	$5,$2,%lo($LC23)
	lw	$4,52($fp)
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	lw	$2,56($fp)
	addiu	$2,$2,1
	sw	$2,56($fp)
$L22:
	lw	$3,56($fp)
	lw	$2,76($fp)
	sltu	$2,$3,$2
	bne	$2,$0,$L23
	nop

	lw	$2,44($fp)
	bne	$2,$0,$L24
	nop

	lw	$4,48($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,24($fp)
$L24:
	lw	$2,40($fp)
	bne	$2,$0,$L25
	nop

	lw	$4,52($fp)
	lw	$2,%call16(fclose)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fclose
1:	jalr	$25
	nop

	lw	$28,24($fp)
$L25:
	move	$2,$0
	lw	$sp,152($fp)
$L26:
	move	$sp,$fp
	lw	$31,196($sp)
	lw	$fp,192($sp)
	lw	$23,188($sp)
	lw	$22,184($sp)
	lw	$21,180($sp)
	lw	$20,176($sp)
	lw	$19,172($sp)
	lw	$18,168($sp)
	lw	$17,164($sp)
	lw	$16,160($sp)
	addiu	$sp,$sp,200
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.rdata
	.align	3
$LC18:
	.word	1072798105
	.word	-1717986918
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
