;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.1

    Question 6:
    Given the following incrementer and base:
        (define (inc x) 1)
        (define base (lambda (y) (+ 1 y)))
    and the evaluation of the Church numbers four:
        (define x ((four inc) base))
    What is the value of x?

    http://beastie.cs.ua.edu/proglan/2-1.html

    Our notes:
    - inc is a function of one argument that always returns 1
    - base is a function of one argument (y) that returns (y + 1)
        it could be equivalently stated as:
        (define (base y) (+ 1 y))

    - inc is passed in as the argument 'f' in four
    - base is passed in as the argument 'x' in four
    - As stated above, no matter what argument is passed to inc, it always
        returns 1
    - So whether we leave base in the definition of x or replace it with
    any other value, x is 1

    Further explanation:
    - The innermost call inside of four (f x) applies inc to base (inc base).
    Since inc returns 1 no matter what is passed to it, this call (f x) returns
    1.
    - The three subsequent calls are all just (inc 1), which each return 1
    as well.
;}
(include "exprTest.scm")
;As included in the question prompt
(define (inc x) 1)
(define base (lambda (y) (+ 1 y)))

;From in class notes, 02/16/2016
(define four
    (lambda (f)
        (lambda (x)
            (f (f (f (f x))))
            )
        )
    )

(define x ((four inc) base))
(define y ((four inc) '()))
(define z ((four inc) 999))
(exprTest x 1)
(exprTest y 1)
(exprTest z 1)
