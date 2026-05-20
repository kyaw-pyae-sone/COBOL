       IDENTIFICATION DIVISION.
       PROGRAM-ID. Cobol-Task-8.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  COMPVALUE.
           05 WS-COMP-VAL1    USAGE COMP PIC 9(5) VALUE 5000.
           05 WS-COMP-VAL2    USAGE COMP PIC 9(5) VALUE 7500.
           05 WS-COMP-RESULT  USAGE COMP PIC 9(5). 
       01  COMP3VALUE.
           05 WS-COMP3-VAL1   USAGE COMP-3 PIC 9(5) VALUE 1500.
           05 WS-COMP3-VAL2   USAGE COMP-3 PIC 9(5) VALUE 10000.
           05 WS-COMP3-RESULT USAGE COMP-3 PIC 9(5).
       PROCEDURE DIVISION.
      *> cobol-lint CL002 main-logic
       MAIN-LOGIC.
      *    **********ADD COMP VALUES *************
           COMPUTE WS-COMP-RESULT = WS-COMP-VAL1 + WS-COMP-VAL2.
      *    **********SUB COMP3 VALUES ************* 
           COMPUTE WS-COMP3-RESULT = WS-COMP3-VAL2 - WS-COMP3-VAL1

           DISPLAY "==========================================".
      *    **********DISLAY COMP RESULT ************* 
           DISPLAY "COMP VALUE 1    : " WS-COMP-VAL1.
           DISPLAY "COMP VALUE 1    : " WS-COMP-VAL1.
           DISPLAY "COMP ADD RESULT : " WS-COMP-RESULT.    
           DISPLAY "==========================================".
      *    **********DISLAY COMP3 RESULT ************* 
           DISPLAY "COMP3 VALUE 1     : " WS-COMP3-VAL1.
           DISPLAY "COMP3 VALUE 2     : " WS-COMP3-VAL2.
           DISPLAY "COMP3 SUB RESULT  : " WS-COMP3-RESULT.
           DISPLAY "==========================================".    

           STOP RUN.
       END PROGRAM Cobol-Task-8.