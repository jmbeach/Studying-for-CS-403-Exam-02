;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.1

    Question 5:
    With this implementation for cons, which only works for integers:
    (define (cons a b) (* (^ 2 a) (^ 2 b)))
    Which of the following would is a valid implementation of car?
    - Assume ^ is the exponentiation function and that when given two integers,
    returns an integer.
    - Assume (ilog b d) returns the closest integer to log_b(d).

    http://beastie.cs.ua.edu/proglan/2-1.html
;}
(include "exprTest.scm")

;Takes a number x and returns the integer to which x is closest
(define (round x)
    (cond
        ((integer? x) x)
        (else
            (define tensPlace (% (int (* x 10)) 10))
            (cond
                ((< tensPlace 5) (int x))
                (else (+ (int x) 1))))))

;Returns the closest integer to log_b(d)
(define (ilog b d)
    (round (/ (log d) (log b)))) ;round( log_b(d) )

(define (cons a b) (* (^ 2 a) (^ 3 b)))

;Answer A
(define (a-car x) (if (!= (% x 3)) 0) (ilog 2 x) (a-car (/ x 3)))

;Answer B
(define (b-car x) (ilog x 2))

;Answer C
(define (c-car x) (if (= (% x 2)) 0) 0 (+ 1 (c-car (/ x 2))))

;Answer D
(define (d-car x)  (if  (= (% x 2) 0) (ilog 3 x) (d-car (/ x 2))))  ;Answer from quiz (still wrong)
(define (d-car2 x) (if (!= (% x 3) 0) (ilog 2 x) (d-car2 (/ x 3)))) ;Modified to work as car
(define (d-cdr x)  (if (!= (% x 2) 0) (ilog 3 x) (d-cdr (/ x 2))))  ;Modified to work as cdr


(define a (cons 2 9))
(define b (cons 7 3))
;(exprTest (a-car a) 1) ;Causes Stack overflow. Infinite recursion?
;(exprTest (b-car a) 1) ;Causes Stack overflow. Infinite recursion?
;(exprTest (c-car a) 1) ;Causes Stack overflow. Infinite recursion?
(exprTest (d-car a) 2)  ;Still does not work correctly

(exprTest (d-car2 a) 2) ;Working car
(exprTest (d-cdr a) 9)  ;Working cdr
(exprTest (d-car2 b) 7)
(exprTest (d-cdr  b) 3)