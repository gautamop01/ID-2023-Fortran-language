    program funcandsub
        implicit none
        integer,parameter::step =100
        integer::i
        double precision :: x,fact,z,term
        x=9
        z=0
        do i=0, step
            call power(i,x,term)
            z=z+term/fact
        end do
        print*,"z",z
        
    end program funcandsub
    subroutine power(n,x,term)
        implicit none
        integer::n
        double precision::x,term
        term = x**n
        end subroutine
    
    function fact(i)
        implicit none
        integer::n,i
        double precision::fact
        fact=1
        i=0
        do i = 1, n
            fact=fact*i 
        end do
    end function
