       identification division.
       program-id. GotoDemo.

       data division.
       working-storage section.
       
       procedure division.
       main-logic.
           display "step 1".
           go to next-step.
           display "end step".
           next-step.
               display "............".
               display "This is next step.".

           stop run.
       end program GotoDemo.
