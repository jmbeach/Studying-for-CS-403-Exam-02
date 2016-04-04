;{
    Mitchell Griest
    Jake Zarobsky
    Dillon Wastrack
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages

    Exam 02, 2013

    Question 6:
    - Collect all the pairs (i, j) such that 0 ≤ i < j and 0 ≤ j < n.
    - Pick from the components enumerate, map, keep, remove, accumulate, and
    expand.
    - The expand function takes a list, a single item, and a location,
    and creates a list of lists composed each of the list items and the single
    item.
    - For example, (expand '(1 4 2) 0 'back) evaluates to
    ((1 0) (4 0) (2 0)), while (expand '(1 4 2) 0 'front) evaluates to
    ((0 1) (0 4) (0 2)). The second argument to enumerate is exclusive.
    Start with n.

    Pseudocode for one way to do this:
    function collectPairs(n){
        let s be an empty set of pairs;
        for(j = 1; j < n; j++){
            for(i = 0; i < j; i++){
                s.addPair(i,j);
            }
        }
        return s;
    }

    NOTE: Could not test without writing expand, but we believe this to be
    correct
    
    http://beastie.cs.ua.edu/proglan/2013-e2.pdf
;}
(include "exprTest.scm")

;Return a list of all integers in the interval [low, high], from page 109
(define (enumerate low high)
    (cond
        ((> low high) nil)
        (else (cons low (enumerate (+ 1 low) high)))))

(define (collectPairs n)
    (define nums (enumerate 0 n))
    (define (iter i store)
        (cond
            ((= i n) store)
            (else (iter (+ 1 i) (append store (expand nums i 'front))))))
    (iter 0 '()))
