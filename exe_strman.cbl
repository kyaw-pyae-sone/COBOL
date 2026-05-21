       IDENTIFICATION DIVISION.
       PROGRAM-ID. StringManDemo.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NAMEGROUP.
           05  FIRSTNAME       PIC X(10) VALUE "Kyaw".
           05  MIDDLENAME      PIC X(10) VALUE "Pyae".
           05  LASTNAME        PIC X(10) VALUE "Sone".
           05  FULLNAME        PIC X(14). 
           05  FULLNAME2       PIC X(30) VALUE "Alexander Vance Cross".
           
           
       PROCEDURE DIVISION.
       MAIN-LOGIC.
           
           STRING FIRSTNAME 
           DELIMITED BY SPACE " "
           DELIMITED BY SIZE MIDDLENAME 
           DELIMITED BY SPACE " "
           DELIMITED BY SIZE LASTNAME
           INTO FULLNAME

           DISPLAY FULLNAME.

           DISPLAY "---------------------------------------------".
           DISPLAY "FIRSTNAME  : " FIRSTNAME.
           DISPLAY "MIDDLENAME : " MIDDLENAME.
           DISPLAY "LASTNAME   : " LASTNAME.
           DISPLAY "FULLNAME   : " FULLNAME.
           DISPLAY "---------------------------------------------".
           
           UNSTRING FULLNAME2
               DELIMITED BY SPACE 
               INTO FIRSTNAME, MIDDLENAME, LASTNAME
           END-UNSTRING.

           DISPLAY "FULLNAME   : " FULLNAME2.
           DISPLAY "FIRSTNAME  : " FIRSTNAME.
           DISPLAY "MIDDLENAME : " MIDDLENAME.
           DISPLAY "LASTNAME   : " LASTNAME. 
           DISPLAY "---------------------------------------------".

           DISPLAY "BEFORE REPLACING WITH '_'".

           DISPLAY "FULLNAME : " FULLNAME.
           
           INSPECT FULLNAME REPLACING ALL " " BY "_".
           DISPLAY "--------".

           
           DISPLAY "AFTER REPLACING WITH '_'".

           DISPLAY "FULLNAME : " FULLNAME.
           
           DISPLAY "---------------------------------------------".
           
           DISPLAY "BEFORE EXTRACTING FIRST 5 CHARACTER".
           DISPLAY "FULLNAME : " FULLNAME2.

           DISPLAY "--------".

           DISPLAY "AFTER EXTRACTING FIRST 5 CHARACTER".
           DISPLAY "FULLNAME : "FULLNAME2(1:5).
           
           DISPLAY "---------------------------------------------".

           

           STOP RUN.
       END PROGRAM StringManDemo.
