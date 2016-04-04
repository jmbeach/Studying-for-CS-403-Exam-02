;{
    Mitchell Griest
    Margaret Tiedt
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 14:
    Suppose I wish to collect all the non-prime numbers from 1 to n?
    Pick from the components enumerate, map, keep, accumulate, and prime?.
    Start with n. Note: remove is not available.

    http://beastie.cs.ua.edu/proglan/2-2.html
;}
(include "exprTest.scm")
(include "../sequenceHelpers.scm")

;Returns a list of all nonprimes on the interval [1,n]
(define (enumerateNonPrimes n)
    (accumulate cons '()
        (filter (lambda (x) (not (prime? x)))
            (enumerate 1 n))))

(exprTest (enumerateNonPrimes 3) "<nil>")
(exprTest (enumerateNonPrimes 7) '(4 6))
(exprTest (enumerateNonPrimes 10) '(4 6 8 9 10))
