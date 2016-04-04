;{
    Mitchell Griest
    Jake Zarobsky
    Dillon Wastrack
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages

    Exam 02, 2013

    Question 5:
    Recall the interleave funtion that shuffles two lists:

    (define (interleave s t)
        (if (null? s)
            t
            (cons (car s) (interleave t (cdr s)))
            )
        )

    - Define a version of interleave, named merge, that takes two ordered lists
    and a two-argument predicate function. This predicate function returns true
    if its first argument precedes the second. The resulting list should be
    ordered.
    - Note: The lists are not necessarily made up of numbers.
    Hence the need for the predicate function.

    http://beastie.cs.ua.edu/proglan/2013-e2.pdf
;}
(include "exprTest.scm")

(define (merge a b f)
    (cond
        ((null? a) b)
        ((null? b) a)
        ((f (car a) (car b)) (cons (car a) (merge (cdr a) b f)))
        (else (cons (car b) (merge a (cdr b) f)))))

(define a (list 1 3 5 7))
(define b (list 2 4 6 8))
(exprTest (merge a b <) '(1 2 3 4 5 6 7 8))
(exprTest (merge a b >) '(2 4 6 8 1 3 5 7))
