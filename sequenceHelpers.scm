;{
    Mitchell Griest
    Margaret Tiedt
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    sequenceHelpers.scm

    Various useful helper functions for dealing with cons structures
;}
(define (square x) (* x x))

;From page 105
(define (map f seq)
    (cond
        ((null? seq) nil)
        (else (cons (f (car seq)) (map f (cdr seq))))))

;From page 115
(define (filter pred seq)
    (cond
        ((null? seq) nil)
        ((pred (car seq)) (cons (car seq) (filter pred (cdr seq))))
        (else (filter pred (cdr seq)))))

;From page 116 (returns a list of all values on the interval [low,high]
(define (enumerate low high)
    (cond
        ((> low high) nil)
        (else (cons low (enumerate (+ 1 low) high)))))

;From page 116
(define (accumulate op initial seq)
    (cond
        ((null? seq) initial)
        (else (op (car seq) (accumulate op initial (cdr seq))))))

;From page 50
(define (divides? a b) (= (% b a) 0))
(define (findDivisor n testDivisor)
    (cond
        ((> (square testDivisor) n) n)
        ((divides? testDivisor n) testDivisor)
        (else (findDivisor n (+ 1 testDivisor)))))
(define (smallestDivisor n) (findDivisor n 2))
(define (prime? n) (= n (smallestDivisor n)))

;From SICP 2.2 11
(define (flatten lyst)
    (cond
        ((null? lyst) nil)
        ((pair? (car lyst)) (append (flatten (car lyst)) (flatten (cdr lyst))))
        (else (append (list (car lyst)) (flatten (cdr lyst))))))
        
;From SICP 2.2 22
(define (list? x)
    (define (iter src)
        (cond
            ((null? (cdr src)) #t)
            ((pair? (cdr src)) (iter (cdr src)))
            (else #f)))
    (iter x))
