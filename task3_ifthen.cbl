       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task3Condition.
       AUTHOR. Kyaw Pyae Sone.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-AGE      PIC 9(3).
       01  WS-AGE-GP   PIC X(10).
       01  WS-SV-COST  PIC $ZZ.

       PROCEDURE DIVISION.
       MAIN-LOGIC.
      *    DISPLAY "GOLDENLAND MYANMAR".
           DISPLAY "Enter age : " WITH NO ADVANCING.
           ACCEPT WS-AGE.
           
           IF WS-AGE > 60 THEN
               MOVE "senior" TO WS-AGE-GP
               MOVE 15 TO WS-SV-COST
           ELSE
               IF WS-AGE < 18 THEN 
                   MOVE "minor" TO WS-AGE-GP
                   MOVE 10 TO WS-SV-COST 
               ELSE
                   MOVE "adult" TO WS-AGE-GP
                   MOVE 20 TO WS-SV-COST
               END-IF
           END-IF

           DISPLAY "-----------------------------------------".
           
           DISPLAY "You are " WS-AGE-GP.
           DISPLAY "Calculated Cost : " WS-SV-COST " for " WS-AGE-GP. 
           DISPLAY "-----------------------------------------".
           STOP RUN.
       END PROGRAM Task3Condition.
