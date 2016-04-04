;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 11:
    - Define a function named flatten that takes deeply nested
    list and returns a flat list of all the elements in the
    original list.
    - For example, (flatten '((a (b)) c)) evaluates to
    (a b c).
    - You may find the functions pair? or atom? useful.

;}
(include "exprTest.scm")

(define (flatten lyst)
    (cond
        ((null? lyst) nil)
        ((pair? (car lyst)) (append (flatten (car lyst)) (flatten (cdr lyst))))
        (else (append (list (car lyst)) (flatten (cdr lyst))))))

(define x '((a (b)) c))
(define y '(a ((b) c)))
(define z '(((a ((b) c) (d)))))
(exprTest (flatten x) '(a b c))
(exprTest (flatten y) '(a b c))
(exprTest (flatten z) '(a b c d))