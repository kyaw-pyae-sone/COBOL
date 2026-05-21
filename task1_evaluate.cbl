       IDENTIFICATION DIVISION.
       PROGRAM-ID. EvaluationDemo.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-SCORE    PIC 9(3).
       01  WS-GRADE    PIC X(1).

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           
           DISPLAY "Enter Student Score : " WITH NO ADVANCING.
           ACCEPT WS-SCORE.

           EVALUATE TRUE
               WHEN WS-SCORE >= 90 AND WS-SCORE <= 100
                   MOVE "A" TO WS-GRADE
               WHEN WS-SCORE >= 80 AND WS-SCORE <= 89
                   MOVE "B" TO WS-GRADE
               WHEN WS-SCORE >= 70 AND WS-SCORE <= 79
                   MOVE "C" TO WS-GRADE
               WHEN OTHER
                   MOVE "F" TO WS-GRADE    
           END-EVALUATE.

           DISPLAY "=================================="
           DISPLAY "Student's Score : " WS-SCORE.
           DISPLAY "GRADE : " WS-GRADE.
           DISPLAY "=================================="
           STOP RUN.
       END PROGRAM EvaluationDemo.
