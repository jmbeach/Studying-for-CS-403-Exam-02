;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 3:
    How many cons cells make up the structure with the print value of
    (1 (2 . 3) . 4)?

    http://beastie.cs.ua.edu/proglan/2-2.html
;}
(include "exprTest.scm")

;The answer is 3
(exprTest
    (cons
        1
        (cons
            (cons 2 3)
            4))
    '(1 (2 . 3) . 4))
