;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 9:
    - Consider the singly-linked list 2→5→3→2→5→3→nil.
    - Draw a cons cell representation of this list, assuming there is
    only a head pointer. Use the style of the text.
    - Use the variable items to point to this list

    I am not quite sure which bit of the text we are supposed to base
    this on, but here is my best guess...

    http://beastie.cs.ua.edu/proglan/2-2.html
;}
(include "exprTest.scm")

;The list can be represented as follows
(define items
    (cons 2
          (cons 5
                (cons 3
                      (cons 2
                            (cons 5
                                  (cons 3 nil)))))))
(exprTest items '(2 5 3 2 5 3))

;{
    Hopefully this give you an idea of what the cons
    structure for this list would look like, but to be
    safe, I have included "SICP 2.2 09.pdf" as well.
;}