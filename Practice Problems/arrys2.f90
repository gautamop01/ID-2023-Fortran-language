        program arrys2
            implicit none
            integer::markes(50)
            integer::first =0 ,second = 0,i
            print*,"write your all 50 numbers:"
            read*,(markes(i),i=1,50)
            end do
            do i =1,50
                if(markes(i)>first)first=markes(i)
            end do
            do i =1,50
                if (markes(i)==first)cycle
                if (markes(i)>second)second=markes(i)
            end do 
            print*,"first is:",first,"second is:",second 
        
        end program arrys2