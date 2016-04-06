;{
    Mitchell Griest
    Jacob Zarobsky
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    Differentiation program from the text for testing

    differentiation.scm
;}
;From page 148
(define (variable? x) (symbol? x))
(define (same-variable? v1 v2) (and (variable? v1) (variable v2) (eq? v1 v2)))
(define (sum? x) (eq? (car x) '+))
;NOTE: The book appears to have these flipped, we left them but note that
; the augend is the quantity to which the addend is added
(define (addend s) (cadr s))
(define (augend s) (caddr s))
(define (product? x) (eq? (car x) '*))
(define (multiplier p) (cadr p))
(define (multiplicand p) (caddr p))
(define (=number? a b) (and (number? a) (number? b) (= a b)))

;From page 149 (simplifies)
(define (make-sum a b)
    (cond
        ((=number? a 0) b)
        ((=number? b 0) a)
        ((and (number? a) (number? b)) (+ a b))
        (else (list '+ a b))))

;From page 150 (simplifies)
(define (make-product x y)
    (cond
        ((or (=number? x 0) (=number? y 0)) 0)
        ((=number? x 1) y)
        ((=number? y 1) x)
        ((and (number? x) (number? y)) (* x y))
        (else (list '* x y))))

;From page 147
(define (deriv exp var)
    (cond
        ((number? exp) 0)
        ((variable? exp)
            (cond
                ((same-variable? exp var) 1)
                (else 0)))
        ((sum? exp)
            (make-sum
                (deriv (addend exp) var)
                (deriv (augend exp) var)))
        ((product? exp)
            (make-sum
                (make-product
                    (multiplier exp)
                    (deriv (multiplicand exp) var))
                (make-product
                    (deriv (multiplier exp) var)
                    (multiplicand exp))))
        (else (string+ "Unknown expression type -- DERIV " (string exp)))))
