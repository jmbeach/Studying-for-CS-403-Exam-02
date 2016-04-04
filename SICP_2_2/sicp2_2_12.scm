;{
    Mitchell Griest
    Margaret Tiedt
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 12:
    Sum the odd values in a deeply nested list. Pick from the components
    flatten, map, keep, remove, accumulate, append, and odd?.
    Assume the name of the incoming list is items.

    http://beastie.cs.ua.edu/proglan/2-2.html
;}
(include "exprTest.scm")

;From SICP 2.2 11
(define (flatten lyst)
    (cond
        ((null? lyst) nil)
        ((pair? (car lyst)) (append (flatten (car lyst)) (flatten (cdr lyst))))
        (else (append (list (car lyst)) (flatten (cdr lyst))))))

(define (sumOddValues lyst)
    (define flatList (flatten lyst))
    (define (iter sum src)
        (cond
            ((null? src) sum)
            ((odd? (car src)) (iter (+ sum (car src)) (cdr src)))
            (else (iter sum (cdr src)))))
    (iter 0 flatList))

(define a (list 1 2 3 4 5))
(define b (list 2 4 6 8 9))
(exprTest (sumOddValues a) 9)
(exprTest (sumOddValues b) 9)
