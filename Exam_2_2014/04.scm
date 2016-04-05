Mitchell Griest
The University of Alabama
Spring 2016
CS 403 Programming Languages

Exam 02, 2014

http://beastie.cs.ua.edu/proglan/2014-e2.pdf

Question 4:
In the cons-cell style of the textbook, draw a representation of a structure,
pointed to by t, such that:

scam> (car t)
((1 2 3))

scam> (cadadr t)
(3 . 4)
----> (cadadr t) = (car (cdr (car (cdr t)))) = (3 . 4), which is (cons 3 4)

scam> (caadr t)
(3 . 4)
----> (caadr t) = (car (car (cdr t))) = (3 . 4), which is (cons 3 4)

scam> (caddr t)
5
----> (caddr t) = (car (cdr (cdr t))) = 5

scam> (cdddr t)
(6 7)
----> (cdddr t) = (cdr (cdr (cdr t))) = (6 7), which is (cons 6 (cons 7 nil))

scam> (cddadr t)
nil
----> (cddadr t) = (cdr (cdr (car (cdr t)))) = nil

A drawing of the resulting structure can be found in "04.pdf"
