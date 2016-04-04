;{
    Mitchell Griest
    Margaret Tiedt
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 16:
    Collect all the odd numbered squares of the numbers in a given list named
    items. Pick from the components enumerate, map, remove, accumulate, square,
    and even?.

    http://beastie.cs.ua.edu/proglan/2-2.html

    This problem is analagous to SICP 2.2 15
;}
(include "exprTest.scm")
(include "../sequenceHelpers.scm")

(define (sumOddSquares items)
    (accumulate + 0
        (map square
            (filter odd?
                items))))

(define items1 (list 2 3 4 5 6))
(exprTest (sumOddSquares items1) 34)
