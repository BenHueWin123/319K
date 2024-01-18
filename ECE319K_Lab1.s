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
Phase:  .long 0 // 0 for info, 1-6 for debug, 10 for grade

        .global Lab1
// Input: R0 points to the list
// Return: R0 as specified in Lab 1 assignment and terminal window
// According to AAPCS, you must save/restore R4-R7
// If your function calls another function, you must save/restore LR
Lab1: PUSH {R4-R7,LR}
       // your solution goes here

      POP  {R4-R7,PC} // return


        .end
