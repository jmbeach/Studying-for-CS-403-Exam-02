;{
    Mitchell Griest
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.4

    Question 1:
    - Define a version of the apply-generic function for binary operators.
    - Do not implement a variadic function.
    - Do not implement any error checking.

    http://beastie.cs.ua.edu/proglan/2-4.html

    Not testable without implementing several helper functions
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

;Hopefully an acceptable version for this question
(define (apply-generic op a b)
    (define args (list a b))
    (define type-tags (map type-tag args))
    (define proc (get op type-tags))
    (cond
        ((valid? proc) (apply proc (map contents args)))
        (else (error
            "No method for these types -- APPLY-GENERIC" (list op type-tags)))))
