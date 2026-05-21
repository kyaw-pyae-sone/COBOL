       IDENTIFICATION DIVISION.
       PROGRAM-ID. PerformDemo.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-COUNTER      PIC 9 VALUE 1.

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           PERFORM DisplayNumber
           VARYING WS-COUNTER
           FROM 1 BY 1
           UNTIL WS-COUNTER > 5.
           STOP RUN.
           
           DisplayNumber.
               DISPLAY "Number : " WS-COUNTER.
       END PROGRAM PerformDemo.
       