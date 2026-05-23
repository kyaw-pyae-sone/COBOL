       IDENTIFICATION DIVISION.
       PROGRAM-ID. RedefineDemo.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NumField    PIC 9(5) VALUE 10000.
       01  CharField REDEFINES NumField PIC A(5).
       01  WS-Sperator    PIC X(30) VALUE ALL "*".

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           DISPLAY WS-Sperator.
           DISPLAY "Number Field    : " NumField.
           DISPLAY "Character Field : " CharField.
           DISPLAY WS-Sperator.
           STOP RUN.
       END PROGRAM RedefineDemo.
