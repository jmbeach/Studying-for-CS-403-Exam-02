;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.1

    Question 2:
    Suppose the rational constructor make-rat could be passed both integers
    and rational numbers. How many cases must the constructor handle in order
    to simply its result?

    http://beastie.cs.ua.edu/proglan/2-1.html

    Our answer:
    As demonstrated in Question 1 (sicp2_1_01.scm), we can create a rational
    number constructor that deals with only one case, but eventually we must
    differentiate between two cases for both the numerator and denominator
    (since either one could be an integer or a rational number).

    TLDR: One or two cases, depending on how you cut it
;}
