;{
    Mitchell Griest
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages

    Exam 02, 2014

    http://beastie.cs.ua.edu/proglan/2014-e2.pdf

    Question 6:
    - 6. Define the function allPairs, which generates all pairings of two
    given lists.
    - items in the first given list come first in the resulting pairings.
    For example, the expression (allPairs '(a b c d) '(1 2 3)) would produce
    the result:

    ((a 1) (a 2) (a 3)
    (b 1) (b 2) (b 3)
    (c 1) (c 2) (c 3)
    (d 1) (d 2) (d 3))

    - You must use this strategy: generate the first row, then generate the
    rest of the table, then combine the two results with append.
    - You may not define any helper functions and you may only call map once.

    This is a tricky one.
;}
(include "exprTest.scm")

;I am not at all sure of how to do this without helper functions,
;but here is a function that at least gets the job done
(define (allPairs a b)
    (define (firstRow store srca srcb)
        (cond
            ((null? srcb) store)
            (else
                (firstRow
                    (append store (list (list (car srca) (car srcb))))
                    srca
                    (cdr srcb)))))
    (define (restOfTable store srca srcb)
        (cond
            ((null? srca) store)
            ((null? srcb)
                (println 'XXX)
                (append store (firstRow '() (cdr srca) b)))
            (else
                (append store (firstRow '() (cdr srca) (cdr srcb))))))

    (define fr (firstRow '() a b))
    (define rest (restOfTable '() a b))
    (append fr rest)
    )

(define a '(a b c d e f))
(define b '(1 2 3))
(inspect (allPairs a b))
