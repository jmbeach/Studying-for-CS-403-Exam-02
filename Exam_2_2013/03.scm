;{
    Mitchell Griest
    Jake Zarobsky
    Dillon Wastrack
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages

    Exam 02, 2013

    Question 3:
    - Draw a minimal cons structure that represents a singly-linked list with a
    tail pointer.
    - The linked list contains the numbers 1, 2, and 3 in that order.
    - Have the variable items point to this linked list.
    - Give a minimal expression, using cars and cdrs, that retrieves the first
    value, via the variable items.
    - Give a minimal expression, using cars and cdrs, that retrieves the last
    value, via the variable items. Make use of the tail pointer.

    - See "03 Linked List.pdf" for the cons structure
    - To make items point to this linked list, simply define it to be
    the top-most cons cell in the drawing (which represents the head and tail)

    http://beastie.cs.ua.edu/proglan/2013-e2.pdf
;}
(include "exprTest.scm")

(define tail (cons 3 nil))

(define lyst
    (cons 1
        (cons 2
              tail)))

(define items (cons lyst tail))

(define (getLast x) (cadr x))
(exprTest (getLast items) 3)
