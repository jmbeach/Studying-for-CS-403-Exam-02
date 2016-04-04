;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 6:
    What is the minimum number of cons cells needed to bundle up 4 numbers into
    a single list structure (i.e. no nested lists)?

    http://beastie.cs.ua.edu/proglan/2-2.html
;}
(include "exprTest.scm")

;We believe the answer to be 4
;The most obvious solution
(exprTest
    (cons
        1
        (cons
            2
            (cons
                3
                (cons 4 nil))))
    '(1 2 3 4))
