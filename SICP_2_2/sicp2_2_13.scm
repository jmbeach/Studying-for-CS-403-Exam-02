;{
    Mitchell Griest
    Margaret Tiedt
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 13:
    Suppose I wish to find the product of all the prime numbers from 1 to n?
    Pick from the components enumerate, map, keep, remove, accumulate, and
    prime?. Start with n.

    http://beastie.cs.ua.edu/proglan/2-2.html
;}
(include "exprTest.scm")
(define (square x) (* x x))

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

(define (prodOfPrimes n)
    (accumulate * 1
        (filter prime?
            (enumerate 1 n))))

(exprTest (prodOfPrimes 2) 2)
(exprTest (prodOfPrimes 5) 30)
(exprTest (prodOfPrimes 7) 210)
