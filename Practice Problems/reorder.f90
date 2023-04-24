     program reorder
         implicit none
         integer::number(10),i,temp,n,j
         n=10
         print*,"please enter your numbers"
         read*,(number(i),i=0,n)
         do 10 i=1,n-1
            do 20 j=i+1,n
               if(number(i) .gt. number(j))then
               temp=number(i)
               number(i)=number(j)
               number(j)=temp
            endif
         20   continue
         10   continue
         print*,"assending order"
         print*,(number(i),i=1,n)
      end program reorder