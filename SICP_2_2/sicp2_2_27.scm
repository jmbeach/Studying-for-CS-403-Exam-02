;{
    Mitchell Griest
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 27:
    - Define a function named evenCount that returns the number of elements in
    a given list that are even.
    - The list may have sub-lists that need to be considered.
    - You must use the predefined predicates even? and list?.
    - Do not perform any error checking.

    http://beastie.cs.ua.edu/proglan/2-2.html

    This is just a special case of SICP 2.2 26
;}
(include "exprTest.scm")
(include "../sequenceHelpers.scm")

;Here is one solution using the flatten procedure we defined earlier
(define (evenCount lyst)
    (define (iter count src)
        (cond
            ((null? src) count)
            ((even? (car src)) (iter (+ 1 count) (cdr src)))
            (else (iter count (cdr src)))))
    (iter 0 (flatten lyst)))

;But what if we couldn't use that? (Simply write it from scratch again...)
(define (evenCount2 lyst)
    (define (iter count src)
        (cond
            ((null? src) count)
            ((even? (car src)) (iter (+ 1 count) (cdr src)))
            (else (iter count (cdr src)))))
    (define (flatten x)
        (cond
            ((null? x) nil)
            ((pair? (car x)) (append (flatten (car x)) (flatten (cdr x))))
            (else (append (list (car x)) (flatten (cdr x))))))
    (iter 0 (flatten lyst)))


(define a (list 1 2 3 4 5 6))
(define b (list 1 3 5 7))
(exprTest (evenCount a) 3)
(exprTest (evenCount b) 0)
(exprTest (evenCount2 a) 3)
(exprTest (evenCount2 b) 0)
