;{
    Mitchell Griest
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.1

    Question 1:
    Suppose the rational constructor make-rat could be passed both integers AND
    rational numbers. How could the constructor identify the type of its
    arguments in order to simply its result? Choose the most complete answer.

    http://beastie.cs.ua.edu/proglan/2-1.html
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

(define (num rat) (car rat))
(define (denom rat) (cdr rat))

;Takes a rational number and returns its reciprocal
(define (recip rat) (make-rat (denom rat) (num rat)))

;Multiply two rational numbers
(define (mult-rat x y) (make-rat (* (num x) (num y)) (* (denom x) (denom y))))

;Starting with constructor from page 87
;Takes two integers and returns simplified rational number
(define (make-rat n d)
    (define g (gcd n d))
    (cons (/ n g) (/ d g))
    )

;Takes either an integer or a rational number and returns a rational number
(define (pair-to-rat x)
    (cond
        ((pair? x) x)
        (else (make-rat x 1))))

;Takes either an integer or a rational number and returns a rational number
(define (int-to-rat x)
    (cond
        ((integer? x) (make-rat x 1))
        (else x)))

;Using pair?
(define (pair-make-rat n d) (mult-rat (pair-to-rat n) (recip (pair-to-rat d))))

;Using integer?
(define (int-make-rat n d) (mult-rat (int-to-rat n) (recip (int-to-rat d))))

(define a (make-rat 7 3))
(define b (make-rat 2 5))
(define c 5)
(define d 7)
(exprTest (pair-make-rat a b) '(35 . 6))
(exprTest (pair-make-rat a c) '(7 . 15))
(exprTest (pair-make-rat a d) '(1 . 3))

(exprTest (int-make-rat a b) '(35 . 6))
(exprTest (int-make-rat a c) '(7 . 15))
(exprTest (int-make-rat a d) '(1 . 3))
