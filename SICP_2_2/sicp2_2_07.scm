;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 7:
    Draw a cons structure in the style of the text that represents a binary
    search tree with the elements 3, 1, 2, 5 inserted in that order.
    Use nils to indicate missing children.

    http://beastie.cs.ua.edu/proglan/2-2.html

    See page 108 in the textbook
    See SICP 2.2 07 BST.pdf

    (3)             (list 3)
    ((1) 3)         (cons (list 1) (list 3))
    ((1 2) 3)       (cons (list 1 2) (list 3))
    ((1 2) 3 5)     (cons (list 1 2) (list 3 5))
;}
(include "exprTest.scm")

(exprTest (list 3) '(3))
(exprTest
    (cons
        (list 1)
        (list 3))
    '((1) 3))

(exprTest
    (cons
        (list 1 2)
        (list 3))
    '((1 2) 3))

(exprTest
    (cons
        (list 1 2)
        (list 3 5))
    '((1 2) 3 5))
