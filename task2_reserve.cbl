       IDENTIFICATION DIVISION.
       PROGRAM-ID. ReserveWord.
       AUTHOR. KyawPyaeSone.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-NUMBER           PIC 9(3) VALUE 0.
       01  WS-FORMAT-MESSAGE   PIC X(30) VALUE "The number is : ".

       PROCEDURE DIVISION.
       MAIN-LOGIC.
      *    DISPLAY "Reserved Word Demo".
           DISPLAY "Enter a number between 0 and 999 : " 
               WITH NO ADVANCING.
           ACCEPT WS-NUMBER.

           DISPLAY FUNCTION TRIM(WS-FORMAT-MESSAGE) WS-NUMBER.
           STOP RUN.
       END PROGRAM ReserveWord.
