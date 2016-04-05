Mitchell Griest
The University of Alabama
Spring 2016
CS 403 Programming Languages
Studying for Exam 02

SICP Quiz 2.3

Question 20:
- Consider modifying the make-sum function of the text's differentiation
program to handle arity of one or more operands.
- Which of the following cases is correct for the addend selector if a sum
s has exactly two operands?

http://beastie.cs.ua.edu/proglan/2-3.html
----------------------------------My Response----------------------------------
- A sum that handles one or more operands looks like (list '+ a @)
- Selecting the addened of a sum that looks like (list '+ a b c ...), for
example, means returning the sum (+ b c ...)
- If the sum has exactly two operands, (list '+ a b), we just want to return b
(caddr s)
