Mitchell Griest
The University of Alabama
Spring 2016
CS 403 Programming Languages
Studying for Exam 02

SICP Quiz 2.3

Question 21:
- Consider modifying the make-sum function of the text's differentiation program
to handle arity of 2 or more operands.
- Which of the following cases is correct for the addend selector if a sum s has
exactly one operands?

http://beastie.cs.ua.edu/proglan/2-3.html
----------------------------------My Response----------------------------------
- A sum that handles 2 or more operands looks like (list '+ a b @)
- Selecting the addend of a sum that looks like (list '+ a b c d ...) means
returning the sum (+ b c d ...)
- A sum of exactly one operand looks like (list '+ a) Since there is no addend
explicitly provided (there is no 'b'), we can simply add 0 to a.
