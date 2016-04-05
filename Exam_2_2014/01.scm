Mitchell Griest
The University of Alabama
Spring 2016
CS 403 Programming Languages

Exam 02, 2013

http://beastie.cs.ua.edu/proglan/2014-e2.pdf

Question 1:
Consider the do-while statement in the language Arggh!, an example of which follows:

do {
    display(x);
    x = x + 1;
}
while (x < 0);

In an Arggh! do-while, the keyword do is followed by a block. The block is
followed by the keyword while, which, in turn, is followed by a
parenthesized expression. The do-while statement is terminated by a
semicolon.

Assume that the following is true:
(i)     a block encloses a sequence of definitions followed by a sequence of statements
(ii)    a block may may have no definitions and no statements
(iii)   a block may have definitions but no statements
(iv)    a block may have statements but no definitions
(v)     a statement is an expression followed by a semicolon or a statement is a do-while statement.
(vi)    the grammar rule for a definition already exists
(vii)   the grammar rule for an expression already exists
(viii)  the terminals of the language include DO, WHILE, OBRACE, CBRACE, OPAREN, CPAREN, and SEMI

You are to define a series of grammar rules to recognize Arggh!
do-while statements. Use the convention that terminals are written in
(mostly) upper-case and non-terminals are written in (mostly) lower-case.
If you use non-terminals beyond expression and definition, you must provide
the associated grammar rules.
------------------------------ My Response ------------------------------
do-whileStatement : DO block WHILE OPAREN expression CPAREN SEMI

block : OBRACE optDefinitionSequence optStatementSequence CBRACE

optDefinitionSequence : definitionSequence
                      | *empty*

optStatementSequence : statementSequence
                     | *empty*

definitionSequence : definition
                   | definition definitionSequence

statementSequence : statement
                  | statement statementSequence

statement : expression SEMI
          | do-whileStatement
-------------------------------------------------------------------------
