;{
    Mitchell Griest
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 28:
    - Define a function named consCount that counts the number of cons cells in
    a given structure.
    - Assume the existence of the predicate pair? which returns true if its
    argument is a cons cell.

    http://beastie.cs.ua.edu/proglan/2-2.html
;}
(include "exprTest.scm")
(include "../sequenceHelpers.scm")

(define (consCount struct)
    (define (iter count src)
        (cond
            ((pair? src)
                (+ 1
                   (iter count (car src))
                   (iter count (cdr src))))
            (else count)))
    (iter 0 struct))

(define a (cons 1 2))
(define b (cons 1 (cons 2 3)))
(define c (cons (cons 1 2) (cons 3 4)))
(exprTest (consCount a) 1)
(exprTest (consCount b) 2)
(exprTest (consCount c) 3)
