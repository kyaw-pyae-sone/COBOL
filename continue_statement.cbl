       identification division.
       program-id. continueDemo.
       data division.
       working-storage section.
       01  student-marks.
           05 student-name pic a(20).
           05 sub1-mark pic 99.
           05 sub2-mark pic 99.
           05 sub3-mark pic 99.
           05 sub4-mark pic 99.
           05 sub5-mark pic 99.
       01  total-marks pic 999.
       01  avg-mark pic 99v9.
       01  subj-count pic 9 value 5.
       01  idx pic 9 value 1.
       01  sub-mark pic 99.
       
       procedure division.
       main-procedure.
           display "Enter Student Name : " with no advancing.  
           accept student-name.

           perform varying idx from 1 by 1 until idx > subj-count
               evaluate idx
                   when 1 
                      display "Enter marks for Subject 1 : " 
                       with no advancing
                      accept sub1-mark
                      move sub1-mark to sub-mark
                   when 2 
                      display "Enter marks for Subject 2 : " 
                       with no advancing
                      accept sub2-mark
                      move sub2-mark to sub-mark
                   when 3 
                      display "Enter marks for Subject 3 : " 
                       with no advancing
                      accept sub3-mark
                      move sub3-mark to sub-mark  
                   when 4 
                      display "Enter marks for Subject 4 : " 
                       with no advancing
                      accept sub4-mark
                      move sub4-mark to sub-mark
                   when 5 
                      display "Enter marks for Subject 5 : " 
                       with no advancing
                      accept sub5-mark
                      move sub5-mark to sub-mark         
               end-evaluate
               
               if sub-mark < 35 then
                   display "Student has failed in Subject " idx
                   continue
               else
                   display "check continue"
                   add sub-mark to total-marks
               end-if
           end-perform.

           compute avg-mark = total-marks / subj-count.
           display "Total Marks : " total-marks.
           display "Average Marks : " avg-mark.
           if avg-mark >= 35 then
               display "Result : PASS"
           else
               display "Result : FAIL"
           end-if.           
           stop run.
       end program continueDemo.
