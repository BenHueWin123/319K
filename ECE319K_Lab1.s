//****************** ECE319K_Lab1.s ***************
// Your solution to Lab 1 in assembly code
// Author: Your name
// Last Modified: Your date
// Spring 2024
        .data
        .align 2
// Declare global variables here if needed
// with the .space assembly directive

        .text
        .thumb
        .align 2
        .global EID
EID:    .string "BH32399" // replace ZZZ123 with your EID here
        .align 2
        .global Phase
Phase:  .long 1 // 0 for info, 1-6 for debug, 10 for grade

        .global Lab1
// Input: R0 points to the list
// Return: R0 as specified in Lab 1 assignment and terminal window
// According to AAPCS, you must save/restore R4-R7
// If your function calls another function, you must save/restore LR
Lab1: PUSH {R4-R7,LR}
       // your solution goes here
			LDR R1, =myClass
			LDR R2, [R1]
			LDR R3, [R2]
			BEQ	Null
			LDR R4, =myEID
			LDR R5, [R4]
			LDR R6, [R5]

StrCmp:		CMP R3, R6
			BNE NxtStr
			BEQ Done

NxtStr:		ADDS R0, R0, #1
			ADDS R1, R1, #4
			LDR R2, [R1]
			LDR R3, [R2]
			BEQ Done			//If the list is Null
			B StrCmp


Null:		ADDS R0, R0, #0xFF
			BX LR

Done:		BX LR


			.text
			.align 2
myClass:	.long pXB174	//Pointer to EID
			.long pDD85618	//Pointer to EID
			.long pWFW979	//Pointer to EID
			.long pBH42399	//Pointer to EID
			.long pBH32399	//Pointer to EID
			.long 0			//Null Pointer
			.long 0
pXB174:		.string "XB174"
pDD85618:	.string "DD85618"
pWFW979:	.string "WFW979"
pBH42399:	.string "BH42399"
pBH32399:	.string "BH32399"

myEID:		.long myBH32399

myBH32399:	.string "BH32399"


      POP  {R4-R7,PC} // return


        .end
