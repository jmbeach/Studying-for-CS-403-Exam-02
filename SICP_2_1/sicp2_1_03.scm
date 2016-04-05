;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.1

    Question 3:
    Suppose the rational constructor make-rat could be passed both integers and
    rational numbers. Define an expression that the constructor could use to
    simplify the resulting numerator in the rational-rational case.

    Use the variables nn and dn to refer to the numerator of the numerator and
    the denominator of the numerator, respectively. Likewise for nd and dd.

    http://beastie.cs.ua.edu/proglan/2-1.html
;}
(include "exprTest.scm")

;From page 49
(define (gcd a b)
    (cond
        ((= b 0) a)
        (else (gcd b (% a b)))))

(define (num rat) (car rat))
(define (denom rat) (cdr rat))

;Takes two rational numbers and returns a simplified rational number
;(Could be expressed in one line, but expanded for readability)
;{
Math of creating rational from two rationals:

n=r-num, d=r-denom

       nn            nd
r-num= -- , r-denom= -- ,
       dd            dd

                 nn
                 --
     r-num       dn    nn   dd   nn(dd)
rat= -------- = ---- = -- * -- = ------
     r-denom     nd    dd   nd   dn(nd)
                 --
                 dd
;}
(define (make-rat n d)
    (define nn (num n))
    (define dn (denom n))
    (define nd (num d))
    (define dd (denom d))

    (define r-num (* nn dd))
    (define r-denom (* dn nd))
    (define g (gcd r-num r-denom))
    (cons (/ r-num g) (/ r-denom g))
    )

(define a (cons 7 3))
(define b (cons 2 5))
(exprTest (make-rat a b) '(35 . 6))
