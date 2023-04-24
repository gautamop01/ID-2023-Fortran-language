     program rearrange
         implicit none
         integer::i,p,n
         character(len=20)::fullname,lastname,firstname
         read(*,*)fullname
         n=len(trim(fullname))
         do i=n,1,-1
            if(fullname(i:i).eq." ")then
                p=i
                exit
            endif
         enddo
         do i=1,p-1
            firstname=fullname(i:i)
         enddo
         do i=p+1,n
            lastname=fullname(i:i)
         enddo
         print*,"last name",lastname
         print*,"first name",firstname
         
    end program rearrange