       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLOWORLD.
       AUTHOR. KyawPyaeSone.
       DATE-WRITTEN. 2026-05-23.
       
      *=================================================
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       
      *=================================================
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  EMPLOYEE-RECORD.
           05 EMPLOYEE-NAME    PIC X(20).
           05 EMPLOYEE-DPT     PIC X(10).
           05 EMPLOYEE-ID      PIC 9(5).
      *=================================================
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *    DISPLAY "Hello, World!".
           MOVE 12345 TO EMPLOYEE-ID.
           MOVE "David Beckham" TO EMPLOYEE-NAME.
           MOVE "Coach DPT" TO EMPLOYEE-DPT.

           DISPLAY "========== BEFORE DEFAULT INITIALIZE =========="
           DISPLAY "Employee ID    : " EMPLOYEE-ID.
           DISPLAY "Employee Name  : " EMPLOYEE-NAME.
           DISPLAY "Employee DPT   : " EMPLOYEE-DPT.
           DISPLAY SPACE.

           INITIALIZE EMPLOYEE-RECORD.
           
           DISPLAY "========== AFTER DEFAULT INITIALIZE =========="
           DISPLAY "Employee ID    : " EMPLOYEE-ID.
           DISPLAY "Employee Name  : " EMPLOYEE-NAME.
           DISPLAY "Employee DPT   : " EMPLOYEE-DPT.
           DISPLAY SPACE.

           MOVE 11122 TO EMPLOYEE-ID.
           MOVE "Neymar Jr" TO EMPLOYEE-NAME.
           MOVE "Sport DPT" TO EMPLOYEE-DPT.

           DISPLAY "========== BEFORE INITIALIZE REPLACING =========="
           DISPLAY "Employee ID    : " EMPLOYEE-ID.
           DISPLAY "Employee Name  : " EMPLOYEE-NAME.
           DISPLAY "Employee DPT   : " EMPLOYEE-DPT.
           DISPLAY SPACE.

           INITIALIZE EMPLOYEE-RECORD
               REPLACING ALPHANUMERIC DATA BY 'N/A'.

           DISPLAY "========== AFTER INITIALIZE REPLACING =========="
           DISPLAY "Employee ID    : " EMPLOYEE-ID.
           DISPLAY "Employee Name  : " EMPLOYEE-NAME.
           DISPLAY "Employee DPT   : " EMPLOYEE-DPT.
           DISPLAY SPACE.
           
           STOP RUN.
       END PROGRAM HELLOWORLD.
