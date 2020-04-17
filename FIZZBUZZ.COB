       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIZZBUZZ.
       
       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
       
       WORKING-STORAGE SECTION.
       77 IDX PICTURE 999.
       77 FIVE PICTURE 9.
       77 THREE PICTURE 9.
       
       PROCEDURE DIVISION.
       BEGIN.
           MOVE 1 TO IDX.
           PERFORM FIZZBUZZ UNTIL IDX = 101.
           STOP RUN.
       FIZZBUZZ.
           COMPUTE THREE = FUNCTION MOD(IDX 3)
           COMPUTE FIVE = FUNCTION MOD(IDX 5)

           IF THREE IS EQUAL TO 0 AND FIVE IS EQUAL TO 0 THEN
               DISPLAY "FIZZBUZZ"
           ELSE IF THREE IS EQUAL TO 0 THEN
               DISPLAY "FIZZ"
           ELSE IF FIVE IS EQUAL TO 0 THEN
               DISPLAY "BUZZ"
           ELSE
               DISPLAY IDX
           END-IF.

           ADD 1 TO IDX.
