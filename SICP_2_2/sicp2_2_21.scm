;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 21:
    Define a function named index that retrieves the ith element of a
    given list. Do not perform any error checking.

    http://beastie.cs.ua.edu/proglan/2-2.html
;}
(include "exprTest.scm")

;(This function considers the first element in the list to be at index 0)
(define (index i lyst)
    (define (iter count src)
        (cond
            ((= count i) (car src))
            ((null? src) (string+ "Error: " lyst " contains fewer than " i " elements"))
            (else (iter (+ 1 count) (cdr src)))))
    (iter 0 lyst))

(define a (list 0 1 2 3 4))
(exprTest (index 0 a) 0)
(exprTest (index 3 a) 3)
(exprTest (index 7 a) "<An error message>")
