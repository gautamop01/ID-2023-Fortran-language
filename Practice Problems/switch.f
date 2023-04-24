        program switch_name
        implicit none
        character(len=10)::first_name,last_name
        character(len=20)::full_name,rename
        integer::N,p,i,j

        do j=1,4

        p = 0
        read*,full_name

        N=len(trim(full_name))

        print*,"length=",N

        print*,"p=",p

        do i=N,1,-1

          if(full_name(i:i)==" ")then
           p=i
           exit
          endif
        end do

        print*,"p=",p,"i=",i

        last_name=full_name(p+1:N)
        first_name=full_name(1:p-1)
        rename=trim(last_name)//" "//first_name

        print*,first_name,last_name,rename

        end do
        end

