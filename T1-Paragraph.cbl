       IDENTIFICATION DIVISION.
       PROGRAM-ID. T1-Paragraph.
       AUTHOR. KyawPyaeSone.
       DATE-WRITTEN. 2026-05-28.
       
      *=================================================
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       
      *=================================================
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUM1        PIC 9(2).
       01  NUM2        PIC 9(2).
       01  ADDITIION   PIC 9(2).
      *=================================================
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *    DISPLAY "Hello, World!".
           PERFORM INT-PROCESS.
           PERFORM CALCULATE-PROCESS.
           PERFORM DISPLAY-PROCESS.
           STOP RUN.
           INT-PROCESS.
               MOVE 45 TO NUM1.
               MOVE 15 TO NUM2.
           
           CALCULATE-PROCESS.
               COMPUTE ADDITIION = NUM1 + NUM2.

           DISPLAY-PROCESS.
               DISPLAY "Result is : " ADDITIION.
       END PROGRAM T1-Paragraph.