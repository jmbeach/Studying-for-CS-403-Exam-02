;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 22:
    - Define a function named list? that determines whether a given cons
    structure is a list at the top level.
    - Do not check if sub-structures are lists.
    - Do not perform any error checking.

    http://beastie.cs.ua.edu/proglan/2-2.html

    In order to be a list at the top level, the cons structure
    should consist of a chain of cons strucutres that ends in nil.
    Therefore, we can cdr down the input and stop as soon as we see something
    that isn't a cons cell. If it is nil, the input was a list. Otherwise,
    the input was not a list at the top level.
;}
(include "exprTest.scm")

(define (list? x)
    (define (iter src)
        (cond
            ((null? (cdr src)) #t)
            ((pair? (cdr src)) (iter (cdr src)))
            (else #f)))
    (iter x))

(define a (cons 1 nil))
(define b (cons 1 2))
(define c (list 1 2 (list 3 4 5 (cons 6 7))))
(define d (cons 1 (cons 2 3)))
(exprTest (list? a) #t)
(exprTest (list? b) #f)
(exprTest (list? c) #t)
(exprTest (list? d) #f)
