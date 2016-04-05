;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.4

    Question 3:
    - Define a version of the apply-generic function for binary operators in
    which the operands are message passing procedures.
    - Do not implement a variadic function.
    - Do not implement any error checking.

    http://beastie.cs.ua.edu/proglan/2-4.html

    Not testable without implementing several helper functions

    Not sure how to do this. TODO ask Dr. J.
;}
(include "exprTest.scm")

; From Page 187 of the text
; It's variadic, but it's the model for our actual answer below.
(define (apply-generic-1 op arg)
    (arg op)
)

; Apply generic for binary operators in which operands are message
; passing procedures.
(define (apply-generic op a b)
    ((a op) b)
)

