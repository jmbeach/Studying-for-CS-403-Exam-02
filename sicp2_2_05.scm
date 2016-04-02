;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 5:
    What is the minimum number of cons cells needed to bundle up 4 numbers
    into a single cons structure?

    http://beastie.cs.ua.edu/proglan/2-2.html
;}
(include "exprTest.scm")

;The answer is 3

;Here is one solution
(exprTest
    (cons
        1
        (cons
            2
            (cons 3 4)))
    '(1 2 3 . 4))

;And here is another (this time a bit cleaner)
(exprTest
    (cons
        (cons 1 2)
        (cons 3 4))
    '( (1 . 2) 3 . 4))
