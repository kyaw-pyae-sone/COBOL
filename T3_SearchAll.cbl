       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLOWORLD.
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
       01  WS-NAMES.
           05 WS-NAME PIC X(10) OCCURS 5 TIMES
           ASCENDING KEY IS WS-NAME INDEXED BY NameIdx.
      *=================================================
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *    DISPLAY "Hello, World!".
           
           MOVE "Alice"    TO WS-NAME(1).
           MOVE "Bob"      TO WS-NAME(2).
           MOVE "Charlie"  TO WS-NAME(3).
           MOVE "Jane"     TO WS-NAME(4).
           MOVE "John"     TO WS-NAME(5).

           SEARCH ALL WS-NAME
               AT END
                   DISPLAY "Charlie is not found in table."
               WHEN WS-NAME(NameIdx) = "Charlie"
                   DISPLAY "Charlie is found at " NameIdx
           END-SEARCH.


           STOP RUN.
       END PROGRAM HELLOWORLD.
