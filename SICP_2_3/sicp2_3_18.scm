;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.3

    Question 18:
    - Consider adding exponentiation to the differentiation program with ** as
    the exponentiation operator. Which of the following cases is correct for the
    make-exponentiation working on an expression p that has a base of zero?

    http://beastie.cs.ua.edu/proglan/2-3.html

    Based on https://wqzhang.wordpress.com/2009/06/24/sicp-exercise-2-56/
    we are inclined to go with answer C, but certainly would like some
    clarification.
;}
(include "exprTest.scm")

;Answer C formatted for clarity
(make-product
    (make-product
        (exponent p)
        (make-exponentiation
            (base p)
            (- (exponent p) 1)))
    (derive (base p) var))

;Answer D formatted for clarity
(make-product
    (exponent p)
    (make-exponentiation
        (base p)
        (- (exponent p) 1)))
