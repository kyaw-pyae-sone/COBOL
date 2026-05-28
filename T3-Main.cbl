       IDENTIFICATION DIVISION.
       PROGRAM-ID. T3-Main.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-NUM1          PIC 9(03).
       01  WS-NUM2          PIC 9(03).
       01  WS-SUM           PIC 9(05).
       01  WS-PRODUCT       PIC 9(06).

       PROCEDURE DIVISION.
       000-MAIN-LOGIC.
           PERFORM 100-INPUT-PARA
           PERFORM 200-PROCESS-PARA
           PERFORM 300-OUTPUT-PARA
           STOP RUN.

       100-INPUT-PARA.
           DISPLAY "ENTER FIRST NUMBER (001-999): " WITH NO ADVANCING.
           ACCEPT WS-NUM1.
           DISPLAY "ENTER SECOND NUMBER (001-999): " WITH NO ADVANCING.
           ACCEPT WS-NUM2.

       200-PROCESS-PARA.
           CALL 'T3-Sub' USING WS-NUM1, WS-NUM2, WS-SUM, WS-PRODUCT.

       300-OUTPUT-PARA.
           DISPLAY "-----------------------------------".
           DISPLAY "RESULTS FROM SUB-PROGRAM:".
           DISPLAY "SUM     : " WS-SUM.
           DISPLAY "PRODUCT : " WS-PRODUCT.
           DISPLAY "-----------------------------------".