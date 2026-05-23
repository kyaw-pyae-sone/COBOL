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
           05 EMPLOYEE-ID      PIC 9(5).
           05 EMPLOYEE-NAME    PIC A(10).
           05 EMPLOYEE-DPT     PIC A(16).
           05 EMPLOYEE-SALARY  PIC 9(7)V99.

       66  EMPLOYEE-INFO RENAMES EMPLOYEE-ID THRU EMPLOYEE-DPT.        
      *=================================================
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           
      *    DISPLAY "Hello, World!".
           
           MOVE "21978" TO EMPLOYEE-ID.
           MOVE "Pyae Sone" TO EMPLOYEE-NAME.
           MOVE "Maintainance DPT" TO EMPLOYEE-DPT.
           MOVE 50000 TO EMPLOYEE-SALARY.

           DISPLAY "----------- Original Fields -----------"
           DISPLAY "Employee ID            : " EMPLOYEE-ID.
           DISPLAY "Employee Name          : " EMPLOYEE-NAME.
           DISPLAY "Employee Department    : " EMPLOYEE-DPT.
           DISPLAY "Employee Salary        : " EMPLOYEE-ID.

           DISPLAY SPACE.

           DISPLAY "----------- AFTER USING ALIAS -----------" 
           DISPLAY "Employee Info : " EMPLOYEE-INFO.

           STOP RUN.
       END PROGRAM HELLOWORLD.
