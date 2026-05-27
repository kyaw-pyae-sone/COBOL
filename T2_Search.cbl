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
           05 WS-NAME PIC X(10) OCCURS 5 TIMES INDEXED BY NameIdx.
      *=================================================
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *    DISPLAY "Hello, World!".
           MOVE "John"     TO WS-NAME(1).
           MOVE "Jane"     TO WS-NAME(2).
           MOVE "Alice"    TO WS-NAME(3).
           MOVE "Bob"      TO WS-NAME(4).
           MOVE "Charlie"  TO WS-NAME(5).

           SET NameIdx TO 1.

           SEARCH WS-NAME
               AT END
                   DISPLAY "Alice is not founded"
               WHEN WS-NAME(NameIdx) = "Alice"
                   DISPLAY "Alice is found at : " NameIdx
           END-SEARCH.
           
           STOP RUN.
       END PROGRAM HELLOWORLD.
