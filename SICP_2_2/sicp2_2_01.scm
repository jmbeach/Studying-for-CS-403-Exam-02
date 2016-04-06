(include "exprTest.scm")
;{
How many cons cells make up the structure with the print
value of (1 (2 3) 4)?
4
6
5
3
;}

; Is it 5?
(define p
  (cons 1 (cons (cons 2 (cons 3 nil)) (cons 4 nil)))
)

(exprTest p '(1 (2 3) 4))
