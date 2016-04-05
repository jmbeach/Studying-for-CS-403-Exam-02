;{
    Mitchell Griest
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.3

    Questions 15-17:
    - Consider adding exponentiation to the differentiation program with ** as
    the exponentiation operator. What would be a vaild implementation for
    exponentiation? For base? For exponent?

    http://beastie.cs.ua.edu/proglan/2-3.html

    Explanation of the choice below:
    - I am anticipating p to have the form '(** base exponent)
;}
(include "exprTest.scm")

(define (exponentiation? p) (eq? (car p) '**))
(define (base p) (cadr p))

;{
    This is how I would choose to implement exponent.
    However it is not an option.
;}
(define (exponent p) (caddr p))

;{
    Of those available, I would choose this implementation with the hope
    that p had the form '(** exponent base)
;}
(define (exponent2 p) (cadr p)

(define a '(** 2 3))
(define b '(^ 2 3))
(exprTest (exponentiation? a) #t)
(exprTest (exponentiation? b) #f)
(exprTest (base a) 2)
(exprTest (exponent a) 3)
