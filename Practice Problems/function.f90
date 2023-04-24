     program func
         implicit none
         real::a,b,s,z
         read*,a,b
         z=(s(a)+s(b)/s(a+b))
         print*,"value of z is =",z
         end program func
         function s(x)
            implicit none
            real::x,s
            if(x < -3)then
                s = -3
            elseif(x>3)then
                s=3
            else
                s=x
            endif
            end function
         
             
