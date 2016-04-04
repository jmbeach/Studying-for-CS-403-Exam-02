;{
    Mitchell Griest
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 29:
    - Define a function named doubleList that returns a new list composed of
    the numbers that are twice that in a given list of numbers
    (in the same order).
    - Do not use map.
    - Do not perform any error checking.

    http://beastie.cs.ua.edu/proglan/2-2.html
;}
(include "exprTest.scm")
(include "../sequenceHelpers.scm")

;This solution assumes that the list does not contain any sublists
(define (doubleList lyst)
    (define (iter store src)
        (cond
            ((null? src) store)
            (else (iter (append store (list (* 2 (car src)))) (cdr src)))))
    (iter '() lyst))

(define a (list 20))
(define b (list 1 2 3))
(exprTest (doubleList a) '(40))
(exprTest (doubleList b) '(2 4 6))
