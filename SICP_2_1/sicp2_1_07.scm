;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.1

    Question 7:
    Which are valid functions for adding two Church numerals?

    (define (add a b)
        (lambda (f)
           (lambda (x)
               ((((a add-1) b) f) x)
               )
            )
        )

    (define (add a b)
        (lambda (f)
            (lambda (x)
                ((a f) ((b f) x))
                )
            )
        )

    http://beastie.cs.ua.edu/proglan/2-1.html

    NOTE: Need to ask Dr. J. for some clarification on this.
;}
(include "exprTest.scm")
(include "pretty.lib")

;Already defined in main library, but included here for clarity
(define (inc x) (+ x 1))

;Zero is a function that ignores its argument and returns the identity function
(define (zero f) (lambda (x) x))

(define (one f)  (lambda (x) (f x)))
(define (two f)  (lambda (x) (f (f x))))

;From in class notes, 02/11/2016
(define (add-1 n)
    (lambda (f)
        (lambda (x)
            (f ((n f) x)))))

;From question prompt
(define (add-A a b)
    (lambda (f)
       (lambda (x)
           ((((a add-1) b) f) x))))

;From question prompt
(define (add-B a b)
    (lambda (f)
        (lambda (x)
            ((a f) ((b f) x)))))

;(exprTest ((zero 99) 10) 10)
;(exprTest ((zero "pizza") 10) 10)
;(inspect ((add-1 zero) 0))

(define int-two (((add-A one one) inc) 0))
(define int-three (((add-A two one) inc) 0))
(define int-four (((add-A two two) inc) 0))
(exprTest int-two 2)
(exprTest int-three 3)
(exprTest int-four 4)
(define church-two ((add-A one one) inc))

;Why does this work
(define church-three ((add-A one two) inc))
;And this does not?
(define church-three ((add-A one church-two) inc))

(define church-four-a ((add-A one church-three) inc))
(define church-four-b ((add-A church-two church-two) inc))
(pretty church-two)
(pretty church-three)
(pretty church-four-a)
(pretty church-four-b)
(inspect church-four-b)
(exprTest (church-two 0) 2)
(exprTest (church-three 0) 3)
