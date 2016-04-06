;{
    Mitchell Griest
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages

    Exam 02, 2014

    http://beastie.cs.ua.edu/proglan/2014-e2.pdf

    Question 5:
    Consider the following versions of accumulate (in code below)
;}
(include "exprTest.scm")

(define (accumulate1 op base items)
    (cond
        ((null? items) base)
        (else (op (car items) (accumulate1 op base (cdr items))))))

(define (accumulate2 op base items)
    (define (iter store source)
        (cond
            ((null? source) store)
            (else (iter (op store (car source)) (cdr source)))))
    (iter base items))

(define (accumulate3 op base items)
    (define (iter store source)
        (cond
            ((null? source) store)
            (else (iter (op (car source) store) (cdr source)))))
    (iter base items))

;(+ 1 (+ 2 (+ 3 0))) = (+ 1 (+ 2 3)) = (+ 1 5) = 6
(exprTest (accumulate1 + 0 (list 1 2 3)) 6)
(exprTest (accumulate2 + 0 (list 1 2 3)) 6)
(exprTest (accumulate3 + 0 (list 1 2 3)) 6)

;(- 1 (- 2 (- 3 0))) = (- 1 (- 2 3)) = (- 1 -1) = 2
(exprTest (accumulate1 - 0 (list 1 2 3)) 2)

;(iter 0 (1 2 3)) -> (iter (- 0 1) (2 3)) -> (iter (- -1 2) (3)) -> (iter (- -3 3) nil) -> -6
(exprTest (accumulate2 - 0 (list 1 2 3)) -6)

;(iter 0 (1 2 3)) -> (iter (- 1 0) (2 3)) -> (iter (- 2 1) (3)) -> (iter (- 3 1) nil) -> 2
(exprTest (accumulate3 - 0 (list 1 2 3)) 2)

;(cons 1 (cons 2 (cons 3 nil)))
(exprTest (accumulate1 cons nil (list 1 2 3)) '(1 2 3))

;(iter nil (1 2 3)) -> (iter (cons nil 1) (2 3)) -> (iter (cons (cons nil 1) 2) (3))
; -> (iter (cons (cons (cons nil 1) 2) 3) nil) -> (cons (cons (cons nil 1) 2 ) 3)
(exprTest (accumulate2 cons nil (list 1 2 3)) '( ( (. 1 ). 2). 3) )

;(iter nil (1 2 3)) -> (iter (cons 1 nil) (2 3)) -> (iter (cons 2 (cons 1 nil)) (3))
; -> (iter (cons 3 (cons 2 (cons 1 nil))) nil) -> (cons 3 (cons 2 (cons 1 nil)))
(exprTest (accumulate3 cons nil (list 1 2 3)) '(3 2 1))
