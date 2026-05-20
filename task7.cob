       IDENTIFICATION DIVISION.
       PROGRAM-ID. TASK7.
      ******************************************************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.      
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-INPUT1       PIC 9(2).
       01  WS-INPUT2       PIC 9(2).
       01  WS-ADDITION     PIC 9(3).
       01  WS-SUBTRACTION  PIC 9(2).
       01  WS-MULTIPLY     PIC 9(3).
       01  WS-DIVISION     PIC 9(2).

       01  WS-RECTANGLE.
           05 WS-LENGTH    PIC 9(2).
           05 WS-WIDTH     PIC 9(2).
           05 WS-AREA      PIC 9(4).

       LOCAL-STORAGE SECTION.
       LINKAGE SECTION.
      ******************************************************************
       PROCEDURE DIVISION.
      *> cobol-lint CL002 main-logic
       MAIN-LOGIC.    
      *    ***********GETTING INPUTS***********
           DISPLAY "Enter Input 1 : ".
           ACCEPT WS-INPUT1.

           DISPLAY "Enter Input 2 : ".
           accept WS-INPUT2.

      *    ***********ADDITION***********
           ADD WS-INPUT1 TO WS-INPUT2 GIVING WS-ADDITION.

      *    ***********SUBTRACTION***********           
           SUBTRACT WS-INPUT1 FROM WS-INPUT2 GIVING WS-SUBTRACTION.

      *    ***********MULTIPLICATION***********                
           MULTIPLY WS-INPUT1 BY WS-INPUT2 GIVING WS-MULTIPLY.

      *    ***********DIVISION***********                
           DIVIDE WS-INPUT1 BY WS-INPUT2 GIVING WS-DIVISION.

      *    ***********RECTANGLE AREA***********     
           DISPLAY "Enter Rectangle's length : ".
           ACCEPT WS-LENGTH.

           DISPLAY "Enter Rectangle's width : ".
           ACCEPT WS-WIDTH.

           COMPUTE WS-AREA = WS-LENGTH * WS-WIDTH.

           DISPLAY "=====================================".

           DISPLAY "Input 1............: " WS-INPUT1.
           DISPLAY "Input 2............: " WS-INPUT2.
           DISPLAY "ADDITION...........: " WS-ADDITION.
           DISPLAY "SUBTRACTION........: " WS-SUBTRACTION.
           DISPLAY "MULTIPLICATION.....: " WS-MULTIPLY.
           DISPLAY "DIVISION...........: " WS-DIVISION.
           
           DISPLAY "___________________________________".
           DISPLAY " "
           DISPLAY "Length of Rectangle    = " WS-LENGTH.
           DISPLAY "Width of Rectangle     = " WS-WIDTH.
           DISPLAY "Area of Rectangle      = " WS-AREA. 

           DISPLAY "=====================================".
           STOP RUN.
       END PROGRAM TASK7.
