Mitchell Griest
The University of Alabama
Spring 2016
CS 403 Programming Languages
Studying for Exam 02

SICP Quiz 2.3

Question 19:
- Consider modifying the make-sum function of the text's differentiation
program to handle arity of 2 or more operands. Which of the following cases
is correct for the addend selector if a sum s has three or more operands?

http://beastie.cs.ua.edu/proglan/2-3.html
----------------------------------My Response----------------------------------
Contrary to the book's incorrect definition of addend (they flipped it with
the augend), selecting the addend in the case of a sum that looks like
(list '+ a b c d ...) means selecting the sum (+ b c d ...).

So, we need to return a new sum of all the elements from 'b' (the 3rd
element of the list) forward. (Answer A)

(make-sum       ;Return a new sum
    (caddr s)   ;With augend (first argument) = to the 3rd element of the original sum list (this is b)
    (addend     ;And second element determined by a recursive call to addend
        (cons
            '+  ;We are still dealing with a sum (operator has not changed)
            (cddr s)))) ;From 'b' forward
