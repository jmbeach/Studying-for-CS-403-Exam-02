;{
    Mitchell Griest
    Margaret Tiedt
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 17:
    Collect the squares of all the Mersenne primes generated from a list of
    exponents, named raises. A Mersenne prime has the form (2^n)−1. Pick from
    the components enumerate, map, keep, remove, accumulate, prime?, square,
    and expt.

    http://beastie.cs.ua.edu/proglan/2-2.html
;}
(include "exprTest.scm")
(include "../sequenceHelpers.scm")

(define (mPrime? x) (integer? (/ (log (+ x 1)) (log 2))))

(define (enumerateSquaresOfMPrimes raises)
    (accumulate cons '()
        (map square
            (map (lambda (x) (- (^ 2 x) 1))
                raises))))

(define a (list 1 2 3 4 5))
(exprTest (enumerateSquaresOfMPrimes a) '(1 9 49 225 961))
