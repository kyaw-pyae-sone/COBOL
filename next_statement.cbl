       IDENTIFICATION DIVISION.
       PROGRAM-ID. NextSentenceExample.
       AUTHOR. KyawPyaeSone.
       DATE-WRITTEN. 2026-05-25.
       
      *=================================================
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       
      *=================================================
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  SUBJECT1-MARK   PIC 99 VALUES ZEROS.
       01  SUBJECT2-MARK   PIC 99 VALUES ZEROS.
       01  SUBJECT3-MARK   PIC 99 VALUES ZEROS.
       01  SUBJECT4-MARK   PIC 99 VALUES ZEROS.
       01  SUBJECT5-MARK   PIC 99 VALUES ZEROS.
       01  TOTAL-MARKS     PIC 999 VALUES ZEROS.
       01  STD-PERCENTAGE  PIC 999 VALUES ZEROS.
      *=================================================
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *    DISPLAY "Hello, World!".
           DISPLAY "Enter marks for 5 subjects." WITH NO ADVANCING.

           DISPLAY "Subject 1 : " WITH NO ADVANCING. 
               ACCEPT SUBJECT1-MARK.
               IF SUBJECT1-MARK < 35 THEN
                   DISPLAY "Student has failed in Subject 1"
                   NEXT SENTENCE
               ELSE
                   ADD SUBJECT1-MARK TO TOTAL-MARKS
               END-IF.

           DISPLAY "Subject 2 : " WITH NO ADVANCING. 
               ACCEPT SUBJECT2-MARK.
               IF SUBJECT2-MARK < 35 THEN
                   DISPLAY "Student has failed in Subject 2"
                   NEXT SENTENCE
               ELSE
                   ADD SUBJECT2-MARK TO TOTAL-MARKS.
               END-IF.

           DISPLAY "Subject 3 : " WITH NO ADVANCING. 
               ACCEPT SUBJECT3-MARK.
               IF SUBJECT3-MARK < 35 THEN
                   DISPLAY "Student has failed in Subject 3"
                   NEXT SENTENCE
               ELSE
                   ADD SUBJECT3-MARK TO TOTAL-MARKS.
               END-IF.

           DISPLAY "Subject 4 : " WITH NO ADVANCING. 
               ACCEPT SUBJECT4-MARK.
               IF SUBJECT4-MARK < 35 THEN
                   DISPLAY "Student has failed in Subject 4"
                   NEXT SENTENCE
               ELSE
                   ADD SUBJECT4-MARK TO TOTAL-MARKS.
               END-IF.

           DISPLAY "Subject 5 : " WITH NO ADVANCING. 
               ACCEPT SUBJECT5-MARK.
               IF SUBJECT5-MARK < 35 THEN
                   DISPLAY "Student has failed in Subject 5"
                   NEXT SENTENCE
               ELSE
                   ADD SUBJECT5-MARK TO TOTAL-MARKS.
               END-IF.
               
           COMPUTE STD-PERCENTAGE = (TOTAL-MARKS / 500.0) * 100.
           DISPLAY "Student Percentage : " STD-PERCENTAGE.
           
           STOP RUN.
       END PROGRAM NextSentenceExample.