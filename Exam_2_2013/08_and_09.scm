;{
    Mitchell Griest
    Jake Zarobsky
    Dillon Wastrack
    The University of Alabama
    Spring 2016
    CS 403 Programming Languages

    Exam 02, 2013

    Questions 8 and 9:
    Define the recognizing function for the following grammar rule:

    art : INK blue PENCIL
        | green
        | green CHALK
        | green purple OIL
        | indigo indigo violet
        | WATERCOLOR

    Pseudocode is OK.

    void art(){
        if( inkPending() ){
            match(INK);
            blue();
            match(PENCIL);
        }
        else if( greenPending() ){
            green();
            if( chalkPending() ){
                match(CHALK);
            }
            else if( purplePending() ){
                purple();
                match(OIL);
            }
        }
        else if( indigoPending() ){
            indigo();
            indigo();
            violet();
        }
        else if( watercolorPending() ){
            match(WATERCOLOR);
        }
        else{
            error("Bad Art.");
        }
    }

    Define a pending function for the rule shown above. Pseudocode is OK.

    boolean artPending(){
        return
            inkPending()    ||
            greenPending()  ||
            indigoPending() ||
            watercolorPending();
    }
;}
