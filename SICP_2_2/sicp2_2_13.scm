;{
    Mitchell Griest
    Margaret Tiedt
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 13:
    Suppose I wish to find the product of all the prime numbers from 1 to n?
    Pick from the components enumerate, map, keep, remove, accumulate, and
    prime?. Start with n.

    http://beastie.cs.ua.edu/proglan/2-2.html
;}
(include "exprTest.scm")
(include "../sequenceHelpers.scm")

(define (prodOfPrimes n)
    (accumulate * 1
        (filter prime?
            (enumerate 1 n))))

(exprTest (prodOfPrimes 2) 2)
(exprTest (prodOfPrimes 5) 30)
(exprTest (prodOfPrimes 7) 210)
