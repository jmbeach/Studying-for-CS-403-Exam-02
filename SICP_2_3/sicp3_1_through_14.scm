;{
    Mitchell Griest
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.3

    Questions 1-14:

    http://beastie.cs.ua.edu/proglan/2-3.html
;}
(include "exprTest.scm")

;{
    1: What is the print value of the expression (list '1 2 3)
    - This will print the list consisting of the SYMBOL '1' followed by 2 and 3
;}
(exprTest (list '1 2 3) '(1 2 3))

;{
    2: Assuming a and b have value 2 and 3, respectively, what is the print
    value of the expression (list 'a b)?
    - IT'S A TRAP! It doesn't matter what value a is bound to, we are talking
    about a list whose first element is the SYMBOL 'a' and whose second element
    is b (which is bound to the value 3)
;}
(define a 2)
(define b 3)
(exprTest (list 'a b) '(a 3))

;{
    3: Assuming a and b have value 2 and 3, respectively, what is the print
    value of the expression '(list 'a b)?
    - Here we are dealing with a quoted list, inside of which a is "double"
    quoted. So, we should see the symbol 'list', (quote a), and the symbol 'b'
;}
(exprTest '(list 'a b) '(list (quote a) b))

;{
    4: Assuming a and b have value 2 and 3, respectively, what is the print
    value of the expression ('list a b)?
    - This is an attempt to call the symbol 'list' as a function and will
    result in an error
;}
(exprTest ('list a b) "<Error: Attempt to call symbol as function>")

;{
    5: Assuming a and b have value 2 and 3, respectively, what is the print
    value of the expression '('list a b)?
    - We are just printing out a quoted list containing the quoted symbol for
    list, then a, b.
    - Since this is a quoted list, we do not care about the values of a and b
    (we are dealing with the symbols)
;}
(exprTest '('list a b) '((quote list) a b))

;{
    6: Assuming a, b, and c have value 2, 3, and 4, respectively, what is the
    print value of the expression (car (list 'a 'b 'c)?
    - Before taking the car, lets examine what we are going to take the car of.
    It is simply the list containing the symbols 'a', 'b', and 'c'. Thus the car
    is the symbol 'a'
;}
(exprTest (car (list 'a 'b 'c)) 'a)

;{
    7: Assuming a, b, and c have value 2, 3, and 4, respectively, what is the
    print value of the expression (car '(list 'a 'b 'c)?
    - Now we are taking the car of the quoted list containing the symbols for
    'list', 'a, 'b', and 'c'.
;}
(exprTest (car '(list 'a 'b 'c)) 'list)

;{
    8: Assuming a, b, and c have value 2, 3, and 4, respectively, what is the
    print value of the expression (cdr (list 'a 'b 'c)?
    - We are taking the cdr of a list containing three symbols. Thus the result
    is everything after the first symbol
;}
(exprTest (cdr (list 'a 'b 'c)) '(b c))

;{
    9: What does the function bound to = do?
    - Numeric equality. Some examples are included below.
    (Note that the symbol '1' is bound to the value one, so = is still valid)
;}
(exprTest (= 1 1) #t)
(exprTest (= 1 2) #f)
(exprTest (= 1 1.0) #t)
(exprTest (= '1 '1) #t)
(exprTest (= 'a 'a) "<Error: invalid types for =>")

;{
    10: What does the function bound to eq? do?
    - Pointer equality. That is, do two IDs point to the same location in
    memory (not simply two copies/identical objects)
;}
(define a (cons 1 2))
(define b (cons 1 2))
(define c a)
(define d 1) ;Both d and e point to the same (the only) '1'
(define e 1)
(exprTest (eq? a a) #t)
(exprTest (eq? a b) #f)
(exprTest (eq? a c) #t)
(exprTest (eq? d e) #t)

;{
    11: What does the function bound to equal? do?
    - Structural equality. This is a costly one. It examines piece by piece
    each of its arguments until it finds some difference in their strucure,
    regardless of whether they point to the same "copy" of a data object
;}
(define a (cons 1 2))
(define b (cons 1 2))
(define c a)
(define d (cons 1 3))
(exprTest (equal? a b) #t)
(exprTest (equal? a c) #t)
(exprTest (equal? a d) #f)

;{
    12: T of F: (eq? '(a b) '(a b))
    - False. The arguments are two identical copies of a data object, but are
    two distinct copies in memory nontheless
;}
(exprTest (eq? '(a b) '(a b)) #f)

;{
    13: T or F: (equal? (list 'a 'b) '(a b))
    - True. Both are lists consisting of the symbol 'a' followed by the symbol
    'b'
;}
(exprTest (equal? (list 'a 'b) '(a b)) #t)

;{
    14: T or F: (equal? (list 2 'b) '(2 'b))
    - False. The first is a list consisting of 2 and the symbol 'b', whereas
    the second is a list consisting of 2 and the quoted symbol b. For more
    clarity, see the exprTest statements below
;}
(exprTest (list 2 'b) '(2 b))
(exprTest '(2 'b) '(2 (quote b)))
(exprTest (equal? (list 2 'b) '(2 'b)) #f)
