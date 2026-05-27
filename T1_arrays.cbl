       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLOWORLD.
       AUTHOR. KyawPyaeSone.
       DATE-WRITTEN. 2026-05-27.
       
      *=================================================
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       
      *=================================================
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-NAMES.
           05 WS-NAME PIC X(10) OCCURS 5 TIMES.
       01  SUBSCRIPT PIC 9 VALUE 1.
      *=================================================
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *    DISPLAY "Hello, World!".
           MOVE "John"     TO WS-NAME(1).
           MOVE "Jane"     TO WS-NAME(2).
           MOVE "Alice"    TO WS-NAME(3).
           MOVE "Bob"      TO WS-NAME(4).
           MOVE "Charlie"  TO WS-NAME(5).

           PERFORM VARYING SUBSCRIPT FROM 1 BY 1 UNTIL SUBSCRIPT > 5
               DISPLAY SUBSCRIPT ". " WS-NAME(SUBSCRIPT)
           END-PERFORM.

           MOVE 1 TO SUBSCRIPT.

           DISPLAY "*******************************"

           PERFORM UNTIL SUBSCRIPT > 5
               IF SUBSCRIPT = 3 THEN 
                   MOVE "Eve" TO WS-NAME(SUBSCRIPT)
               END-IF
               DISPLAY SUBSCRIPT ". " WS-NAME(SUBSCRIPT)
               ADD 1 TO SUBSCRIPT
           END-PERFORM.  

           STOP RUN.
       END PROGRAM HELLOWORLD.
