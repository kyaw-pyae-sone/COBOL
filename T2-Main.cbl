       IDENTIFICATION DIVISION.
       PROGRAM-ID. T2-Main.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-BIRTH-YEAR    PIC 9(04).
       01  WS-AGE           PIC 9(03).

       PROCEDURE DIVISION.
       000-MAIN-LOGIC.
           DISPLAY "ENTER YOUR BIRTH YEAR (YYYY): " WITH NO ADVANCING.
           ACCEPT WS-BIRTH-YEAR.

           CALL 'T2-Sub' USING WS-BIRTH-YEAR, WS-AGE.

           DISPLAY "-----------------------------------".
           DISPLAY "YOUR CALCULATED AGE IS: " WS-AGE.
           DISPLAY "-----------------------------------".

           STOP RUN.