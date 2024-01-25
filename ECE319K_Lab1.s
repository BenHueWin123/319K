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
Phase:  .long 10 // 0 for info, 1-6 for debug, 10 for grade

        .global Lab1
// Input: R0 points to the list
// Return: R0 as specified in Lab 1 assignment and terminal window
// According to AAPCS, you must save/restore R4-R7
// If your function calls another function, you must save/restore LR
Lab1: PUSH {R4-R7,LR}
       // your solution goes here
LdStr:
		LDR R1, =EID //Grab EID Pointer
		LDR R2, [R0]	//Grab List Pointer
		ADDS R5, R5, #1	//Array Counter
		CMP R2, #0	//Checking if the list is empty
		BEQ Empty

LdChr:
		LDRB R3, [R1]	//Load my EID
		LDRB R4, [R2]
		CMP R3, #0	//Checking if it is the end of EID
		BEQ LdCounter
		CMP R4, #0	//Checks to see if the string ended
		BEQ Empty

ChkChr:
		CMP R3, R4
		BNE NxtStr
		ADDS R1, R1, #1	//Increments next character of EID
		ADDS R2, R2, #1	//Increments next character of List
		B LdChr

NxtStr:
		ADDS R0, R0, #8 //Goes to the next Pointer
		B LdStr

Empty:
		MOVS R0, #0
		SUBS R0, R0, #1
		B Finish

LdCounter:
		MOVS R0, R5	//Move counter from R5 to R0

Finish:
      POP  {R4-R7,PC} // return


        .end
