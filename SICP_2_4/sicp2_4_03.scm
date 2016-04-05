;{
    Mitchell Griest
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

;From the textbook
(define (apply-generic op . args)
 (let ((type-tags (map type-tag args)))
 (let ((proc (get op type-tags)))
 (if proc
     (apply proc (map contents args))
     (error
         "No method for these types -- APPLY-GENERIC"
         (list op type-tags))))))
