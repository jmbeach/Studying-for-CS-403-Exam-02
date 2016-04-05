;{
    Mitchell Griest
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.4

    Question 2:
    - Redefine the make-rat procedure to use a dispatch function.
    - Handle the messages numer, denom, and mult.

    http://beastie.cs.ua.edu/proglan/2-4.html

    See also SICP 2.1 01 and page 87.
    This version of make-rat does not simplify its results.
;}
(include "exprTest.scm")

;From page 49
(define (gcd a b)
    (cond
        ((= b 0) a)
        (else (gcd b (% a b))
            )
        )
    )

(define (mult-rat x y) (make-rat (* (num x) (num y)) (* (denom x) (denom y))))

(define (make-rat x y)
    (define numer x)
    (define denom y)
    (define (mult b)
        (make-rat
            (* numer (b'numer))
            (* denom (b'denom))))
    (define (dispatch msg)
        (cond
            ((eq? msg 'numer) numer)
            ((eq? msg 'denom) denom)
            ((eq? msg 'mult) mult)
            (else (string+ "Error: Unknown message -- " msg))))
    dispatch)

;Define two rational numbers, a and b
(define a (make-rat 1 2))
(define b (make-rat 3 4))
(exprTest (a'numer) 1)
(exprTest (a'denom) 2)
;Let c be the product of a and b
(define c ((a'mult) b))
(exprTest (c'numer) 3)
(exprTest (c'denom) 8)
