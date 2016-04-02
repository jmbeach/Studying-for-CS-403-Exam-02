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

(define (cons a b) (* (^ 2 a) (^ 2 b)))

;Answer A (with paren typo removed)
(define (a-car x) (if (= (% x 2) 0) 0 (+ 1 (a-car (/ x 2)))))

;Answer B
(define (b-car x) (if (= (% x 2) 0) (ilog 3 x) (b-car (/ x 2))))

;Answer C
(define (c-car x) (ilog x 2))

;Answer D (with paren typo removed)
(define (d-car x) (if (!= (% x 3) 0) (ilog 2 x) (d-car (/ x 3))))


;{
    It appears that none of the provided answers work correctly
;}
(define a (cons 1 9))
(println "Attempting to take car of " '(1 . 9))
(exprTest (a-car a) 3)
(exprTest (b-car a) 3)
(exprTest (c-car a) 3)
(exprTest (d-car a) 3)
