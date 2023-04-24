     program sumseries
         implicit none
         real::sum,x2,x4,x6,x8,x10,x
         print*,"type your value of x"
         read*,x
         x2=x*x
         x4=x2*x2/24.0
         x6=x4*x2/30.0
         x8=x6*x2/56.0
         x10=x8*x2/90.0
         sum=1-x2*0.5+x4-x6+x8-x10
         print*,"the value of sum is",sum

         end program sumseries