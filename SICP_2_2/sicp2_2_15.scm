;{
    Mitchell Griest
    Margaret Tiedt
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 15:
    Sum of all the even numbered squares of the numbers in a given list named
    items. Pick from the components enumerate, map, remove, accumulate, square,
    and even?. Note: keep is not available.

    http://beastie.cs.ua.edu/proglan/2-2.html

    We interpreted this question to mean that given the list (2 3 4 5 6), we
    should return (2^2 + 4^2 + 6^2)
;}
(include "exprTest.scm")
(include "../sequenceHelpers.scm")

(define (sumEvenSquares items)
    (accumulate + 0
        (map square
            (filter even?
                items))))

(define items1 (list 2 3 4 5 6))
(exprTest (sumEvenSquares items1) 56)
