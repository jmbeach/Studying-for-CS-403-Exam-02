;{
    Mitchell Griest
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages
    Studying for Exam 02

    SICP Quiz 2.2

    Question 18:
    - Collect all the pairs (i,j) such that 0 ≤ i < n and 0 ≤ j < n.
    - Pick from the components enumerate, map, keep, remove, accumulate, and
    expand.
    - The expand function takes a list, a single item, and a location,
    and creates a list of lists composed each of the list items and the single
    item. For example, (expand '(1 4 2) 0 'back) evaluates to
    ((1 0) (4 0) (2 0)), while (expand '(1 4 2) 0 'front) evaluates to
    ((0 1) (0 4) (0 2)). Start with n.

    http://beastie.cs.ua.edu/proglan/2-2.html
;}
(include "exprTest.scm")
(include "../sequenceHelpers.scm")
