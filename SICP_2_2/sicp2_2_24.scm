;{
    Mitchell Griest
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 24:
    Define a function named list+ that returns the sum of all the elements in a
    given list made up of numbers. The list does not have any sub-lists.
    Do not perform any error checking.

    http://beastie.cs.ua.edu/proglan/2-2.html
;}
(include "exprTest.scm")
(include "../sequenceHelpers.scm")

;The problem is trivial if we are allowed to use accumulate
(define (list+ lyst) (accumulate + 0 lyst))

;Just to be safe, here it is without calling accumulate
(define (list+2 lyst)
    (define (iter store src)
        (cond
            ((null? src) store)
            (else (iter (+ store (car src)) (cdr src)))))
    (iter 0 lyst))

(define a (list 1 2 3))
(define b (list 10 50 20))
(exprTest (list+ a) 6)
(exprTest (list+ b) 80)
(exprTest (list+2 a) 6)
(exprTest (list+2 b) 80)
