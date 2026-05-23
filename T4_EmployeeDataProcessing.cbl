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
       01  EMPLOYEE-DETAIL.
           05 EMPLOYEE-ID      PIC 9(5).
           05 EMPLOYEE-ID-REDEFINED REDEFINES EMPLOYEE-ID PIC X(5).
           05 EMPLOYEE-NAME    PIC X(20).
           05 EMPLOYEE-AGE     PIC 9(2).
           
       
       66  EMPLOYEE-DETAIL-RENAMED RENAMES EMPLOYEE-ID 
                                   THRU EMPLOYEE-NAME.

      *=================================================
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *    DISPLAY "Hello, World!".
           
           DISPLAY "Enter Employee's ID    : " WITH NO ADVANCING.
           ACCEPT EMPLOYEE-ID.
           
           DISPLAY "Enter Employee's NAME  : " WITH NO ADVANCING.
           ACCEPT EMPLOYEE-NAME.
           
           DISPLAY "Enter Employee's AGE   : " WITH NO ADVANCING.
           ACCEPT EMPLOYEE-AGE.
           
           DISPLAY SPACE.

           DISPLAY "========== EMPLOYEE'S DETAIL ==========".
           DISPLAY "Employee's ID (numeric)     :" EMPLOYEE-ID.
           DISPLAY "Employee's ID (alphanumeric):" EMPLOYEE-ID-REDEFINED.
           DISPLAY "Employee's Name             :" EMPLOYEE-NAME.
           DISPLAY "Employee's Age              :" EMPLOYEE-AGE.

           DISPLAY SPACE.
          
           IF EMPLOYEE-AGE <= 18 THEN
               DISPLAY "==> Employee is a minor"
           ELSE 
               DISPLAY "==> Employee is an adult"
           END-IF.

           DISPLAY SPACE.

           DISPLAY "Renamed Employee's Detail: "EMPLOYEE-DETAIL-RENAMED.

           STOP RUN.
       END PROGRAM HELLOWORLD.
