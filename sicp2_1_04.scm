;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.1

    Question 4:
    With this implementation for cons:
        (define (cons a b) (lambda (w) (w a b)))
    which of the following would be a valid implementation of car?

    http://beastie.cs.ua.edu/proglan/2-1.html
;}
(include "exprTest.scm")
(define (cons a b) (lambda (w) (w a b)))

(define (car c) (c (lambda (x y) x))) ;Answer B is correct
(define (cdr c) (c (lambda (x y) y))) ;Here is what cdr would look like

(define a (cons 2 3))
(exprTest (car a) 2)
(exprTest (cdr a) 3)
