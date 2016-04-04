;{
    Mitchell Griest
    Jake Zarobsky
    Dillon Wastrack
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages

    Exam 02, 2013

    Question 1:
    Consider this version of cons, which is only valid for small, non-negative,
    integer arguments:

    (define (cons a b)
        (* (^ 7 a) (^ 11 b))
        )

    The ^ function implements exponentiation and returns an integer if both its
    arguments are integers. Define a compatible version of car.

    http://beastie.cs.ua.edu/proglan/2013-e2.pdf
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

(define (newCons a b)
    (* (^ 7 a) (^ 11 b))
    )

(define (newCar x)
    (cond
        ((!= (% x 11) 0) (ilog 7 x))
        (else (newCar (/ x 11)))))

;Just for kicks
(define (newCdr x)
    (cond
        ((!= (% x 7) 0) (ilog 11 x))
        (else (newCdr (/  x 7)))))

(define a (newCons 2 5))
(define b (newCons 6 3))
(exprTest (newCar a) 2)
(exprTest (newCar b) 6)
(exprTest (newCdr a) 5)
(exprTest (newCdr b) 3)
