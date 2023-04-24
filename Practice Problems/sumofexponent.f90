      program sumofexponent
          implicit none
          integer::x,n
          real::sum
          print*,"please enter the value of x"
          read*,x
          sum=0
          n=0
          do 
            sum=sum+ x**n/n*(n-1)
            n=n+1
            if (x.gt.100 )exit   
          end do
          
      end program sumofexponent