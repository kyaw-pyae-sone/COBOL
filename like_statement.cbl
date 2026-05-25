       IDENTIFICATION DIVISION.
       PROGRAM-ID. LikeDemo.
       

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  EMPLOYEE-ID PIC 9(5).
       01  MANAGER-ID LIKE EMPLOYEE-ID.

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           MOVE 12345 TO EMPLOYEE-ID.
           MOVE 54321 TO MANAGER-ID.
               
           DISPLAY EMPLOYEE-ID.
           DISPLAY MANAGER-ID.

           STOP RUN.
       END PROGRAM LikeDemo.
       