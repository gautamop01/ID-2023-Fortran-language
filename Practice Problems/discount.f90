     program discount
         implicit none
         real::cost_engines,cost_pumps,cost_fans,total_cost,final_cost
         print*,"please write coast of engines , pumps , and fans"
         read*,cost_engines,cost_pumps,cost_fans
         total_cost =cost_engines +cost_pumps +cost_fans
         if ( cost_engines>5000 )then
            final_cost =total_cost - total_cost/10
         elseif(cost_pumps .gt. 2000 .and. cost_fans .gt. 1000)then
            final_cost =total_cost -total_cost/10
        endif
        print*,final_cost

             
         
     end program discount