        program array1
        implicit none
        integer::i,j,k,a(10),b(3,2,2)

        i=5
c        a=(/1,2,3,4,5,6,7,8,9,10/)
c        a=(/1,2,3,4,5,6,7,8,9,10,(i,i=11,100)/)


c        do j=1,9
c         a(j)=j
c        end do

        b=reshape((/10, 0, 9, 6, 5, 4, 1, 2, 3, 4, 5, 6/),(/3,2,2/))


        print*,"i=",i
        print*,"a=",a
        print*,"b=",b

        do i=1,3
         do j=1,2
          do k=1,2
           print*,i,j,k,b(i,j,k)
          end do
         end do
        end do

c        print*,"b111=",b(1,1,1),"b211=",b(2,1,1),"b311=",b(3,1,1)
c        print*,"b211=",b(2,1,1),"b221=",b(2,2,1)
c        print*,"b"
        end

