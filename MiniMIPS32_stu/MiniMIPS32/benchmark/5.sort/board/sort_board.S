#################################################################################
#本程序实现从地址0x10000000开始的8个字的降序排序
#################################################################################			

  .set noat
  .set noreorder
  .globl main

 .data
testdata: .word -25, -30, 16, 24, -64, 35, 42, 66
ansdata:  .word 66, 42, 35, 24, 16, -25, -30, -64

 .text
main:
 la $s0,testdata  	#$s0=0x10000000; la是伪指令，它将被转化为两条汇编指令：lui s0,0x1000和addiu s0,s0,0
 ori $s1,$s0,0x1C   #排序区间 $s1=0x1000001C
sort_loop:
 lw $s3,0($s0)     
 lw $s4,0($s1)
 slt $t0,$s3,$s4
 beq $t0,$0,sort_next   #降序排序
 sw $s3, 0($s1)
 sw $s4, 0($s0)   
sort_next:
 addiu $s1, $s1, -4   
 bne $s0, $s1, sort_loop  
 
 addiu $s0,$s0,4     
 la $t0,testdata	#la是伪指令，它将被转化为两条汇编指令：lui t0,0x1000和addiu t0,t0,0
 ori $t1,$zero,0x1C
 addu $s1,$t0,$t1
 bne $s0, $s1, sort_loop  
 la $s0,testdata	#la是伪指令，它将被转化为两条汇编指令：lui s0,0x1000和addiu s0,s0,0
 lw $t0,  0($s0)
 lw $t1,  4($s0)
 lw $t2,  8($s0)
 lw $t3, 12($s0)
 lw $t4, 16($s0)
 lw $t5, 20($s0)
 lw $t6, 24($s0)
 lw $t7, 28($s0)

 la $v0, ansdata
 lw $s0,  0($v0)
 lw $s1,  4($v0)
 lw $s2,  8($v0)
 lw $s3, 12($v0)
 lw $s4, 16($v0)
 lw $s5, 20($v0)
 lw $s6, 24($v0)
 lw $s7, 28($v0)
 
 ori $a0, $zero, 1
 li $a1, 0x80040000	#0x80004000为绿灯访问地址
 li $a2, 0x80000000	#0x80000000为红灯访问地址
 bne $t0, $s0, ERROR
 bne $t1, $s1, ERROR  
 bne $t2, $s2, ERROR  
 bne $t3, $s3, ERROR
 bne $t4, $s4, ERROR
 bne $t5, $s5, ERROR  
 bne $t6, $s6, ERROR  
 bne $t7, $s7, ERROR    

sort_end:
 sw $a0, 0($a1)
 j sort_end    

ERROR:
 sw $a0, 0($a2)
 j ERROR
