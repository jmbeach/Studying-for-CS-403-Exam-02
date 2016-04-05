;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.3

    Question 19:
    - Consider modifying the make-sum function of the text's differentiation
    program to handle arity of 2 or more operands. Which of the following cases
    is correct for the addend selector if a sum s has three or more operands?

    http://beastie.cs.ua.edu/proglan/2-3.html

    Very confusing question.
;}
(include "exprTest.scm")
(include "../differentiation.scm")

;From page 149, modified to handle multiple operands
(define (new-make-sum a b)
    (cond
        ((=number? a 0) b)
        ((=number? b 0) a)
        ((and (number? a) (number? b)) (+ a b))
        (else (list '+ a b))))
