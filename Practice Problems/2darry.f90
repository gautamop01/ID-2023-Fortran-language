     program sumof2darry
         implicit none
         integer::i,j
         integer::z(10,10)
         integer::a(-5:4,0:9)
         integer::b(2:11,-2:7)
         do i = 0, 10
            do j = 0, 10
                read*,a(i,j)
            end do
        end do
        do i = 0, 10
            do j = 0, 10
                read*,b(i,j)
            end do
        end do
        do i = 1, 10
            do j = 1, 10
                z(i,j)=a(i-6,j-1)+ b(i+1,j-3)
            end do
        end do
     end program sumof2darry
