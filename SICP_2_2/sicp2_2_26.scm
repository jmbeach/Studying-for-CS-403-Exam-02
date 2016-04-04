;{
    Mitchell Griest
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 26:
    - Define a function named oddCount that returns the number of elements in a
    given list that are odd. The list does not have any sub-lists.
    - You must use the predefined predicate function even?.
    - Do not perform any error checking.

    http://beastie.cs.ua.edu/proglan/2-2.html
;}
(include "exprTest.scm")
(include "../sequenceHelpers.scm")

;The no-frills method
(define (oddCount lyst)
    (define (iter count src)
        (cond
            ((null? src) count)
            ((even? (car src)) (iter count (cdr src)))
            (else (iter (+ 1 count) (cdr src)))))
    (iter 0 lyst))

(define a (list 1 2 3 4 5))
(define b (list 2 4 6 8))
(exprTest (oddCount a) 3)
(exprTest (oddCount b) 0)
