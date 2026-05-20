      *This Program is revision for Data Types Lesson
      *********************************************************** 
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DATATYPE-LESSON.
      *********************************************************** 
       DATA DIVISION.
       WORKING-STORAGE SECTION.    
       01  WS-NUM1 PIC S9(3)V99.
       01  WS-NUM2 PIC S9(3)V99 VALUE -123.45.
       01  WS-NUM3 PIC A(6) VALUE "ABCDEF".
       01  WS-ID   PIC X(5) VALUE "A1234".
       01  WS-NUM4 PIC 9(2)V99 VALUE 3.5.
       01  WS-NAME PIC A(3).
       01  WS-NRC  PIC 9(6) VALUE ZERO.
      ***********************************************************
       PROCEDURE DIVISION.
           DISPLAY "WS-NUM1 : " WS-NUM1.
           DISPLAY "WS-NUM2 : " WS-NUM2.
           DISPLAY "WS-NUM3 : " WS-NUM3.
           DISPLAY "WS-ID : " WS-ID.
           DISPLAY "WS-NUM4 : " WS-NUM4.
           DISPLAY "WS-NAME : " WS-NAME.
           DISPLAY "WS-NRC : " WS-NRC 
       STOP RUN.       
      