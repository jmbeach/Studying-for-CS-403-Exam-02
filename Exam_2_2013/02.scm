;{
    Mitchell Griest
    Jake Zarobsky
    Dillon Wastrack
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages

    Exam 02, 2013

    Question 2:
    - Using the style of the text (Exercise 2.6), give the Church numeral
    representation of four.
    - Give a base value and incrementer function such that the realization of
    four would yield the Scam number 16.
    - In the text, the parameter f is the incrementer and the parameter x is the
    base value.

    http://beastie.cs.ua.edu/proglan/2013-e2.pdf
;}
(include "exprTest.scm")

;Church numeral representation of four
(define four
    (lambda (f)
        (lambda (x)
            (f (f (f (f x)))))))

(define base 12)
(define inc (lambda (x) (+ 1 x)))
(exprTest ((four inc) base) 16)
