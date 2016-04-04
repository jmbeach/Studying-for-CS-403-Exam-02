;{
    Mitchell Griest
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 25:
    - Define a function named list+ that returns the sum of all the elements in
    a given list made up of numbers.
    - The list may have sub-lists that need to be considered.
    - Assume the existence of the predicate list?.
    - Do not perform any error checking.

    http://beastie.cs.ua.edu/proglan/2-2.html
;}
(include "exprTest.scm")
(include "../sequenceHelpers.scm")

;Using the solutions from previous problems we can solve this in a single line
(define (list+ lyst) (accumulate + 0 (flatten lyst)))

(define a (list 1 2 3))
(define b (list 10 50 20))
(exprTest (list+ a) 6)
(exprTest (list+ b) 80)
