;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 8:
    - Draw a cons structure in the style of the text that represents a trinary
    search tree with the elements 3, 1, 2, 1, 5, 1 inserted in that order.
    - A trinary search tree behaves just as a binary search tree except
    duplicates are inserted as middle children.
    - Use nils to indicate missing children.

    http://beastie.cs.ua.edu/proglan/2-2.html

    See SICP 2.2 08 TST.pdf

    Each node in the tree has the general form:
        CONS
       /    \
    val    CONS
          /    \
       left    CONS
               /  \
             mid  CONS
                 /   \
             right   nil

    Keep in mind that left and right are themselves nodes of this form or nils
    whereas mid is either nil or a list of identical values (for example (cons 1 (cons 1 (cons 1 nil)))

    Included below are methods for constructing and displaying a trinary
    search tree. Parent-mid-child links are emphasized with arrows whereas
    parent-left and parent-right child links are left as whitespace.

    Because the structure asked for in the prompt would contain so
    many cons structures, we have opted not to write it out at this time.
;}
(include "exprTest.scm")

;Based on Task 08, Assignment 02
(define (triNode value left mid right)
    (define (display) (print value))
    this)

(define (displayTriTree root indent)
    (if (valid? root)
        (begin
            (displayTriTree (root'right) (string+ indent "    "))
            (print indent)
            ((root'display))
            (displayTriTree (root'mid) "--->")  ;indent)
            (println)
            (displayTriTree (root'left) (string+ indent "    ")))))

(define (insertInTriTree tree val)
    (cond
        ((null? tree) (triNode val nil nil nil))
        ((= val (tree'value))
            (triNode
                (tree'value)
                (tree'left)
                (insertInTriTree (tree'mid) val)
                (tree'right)))

        ((< val (tree'value))
            (triNode
                (tree'value)
                (insertInTriTree (tree'left) val)
                (tree'mid)
                (tree'right)))

        ((> val (tree'value))
            (triNode
                (tree'value)
                (tree'left)
                (tree'mid)
                (insertInTriTree (tree'right) val)))))


(define t0 (triNode 3 nil nil nil))
(define t1 (insertInTriTree t0 1))
(define t2 (insertInTriTree t1 2))
(define t3 (insertInTriTree t2 1))
(define t4 (insertInTriTree t3 5))
(define t5 (insertInTriTree t4 1))
(displayTriTree t5 "    ")
