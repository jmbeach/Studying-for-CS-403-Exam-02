;{
    Mitchell Griest
    Jake Zarobsky
    Dillon Wastrack
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages

    Exam 02, 2013

    Question 7:
    - Define a version of a generic eval function that evaluates a given parse
    tree under a given environment using a data-directed approach.
    - Assume evaluation functions for specific parse trees have been stored in
    a table by parse-tree type.
    - Assume the existence of the following functions: type, which returns the
    type of a given parse tree and get, which retrieves the evaluation function
    associated with the given type from the table. Do no error checking.
    - Hint: eval is not a very big function.

    http://beastie.cs.ua.edu/proglan/2013-e2.pdf

    Our response (based on http://beastie.cs.ua.edu/proglan/eval.html )

    function eval(pt, e){
        var f = get( pt.type );
        if(null?(f)) throw( EXCEPTION, "no evaluation function for type " + pt.type );
        else return f( pt, e );
    }
;}
