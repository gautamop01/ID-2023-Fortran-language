program series 
    implicit none 
    real :: n_factorial, sin_x, x, v1, sum_1, n_1 
    integer :: n, i 
    print*, "enter number of ittreation" 
    read*, n 
    n=n+1
    print*, "enter x in degrees" 
    read*, x 
    n_factorial = 1 
    sin_x = 0 
    x = ((x*3.1415926535898)/180) 
    v1 = sin(x) 
    DO i = 1, n 
     n_1 = (2*i) - 1 
     n_factorial = n_factorial * n_1 
     sum_1 = (((-1)*(i-1)) * ((x*((2*i) - 1))/(n_factorial))) 
     sin_x = sin_x + sum_1 
    END DO 
    PRINT*, sin_x 
    
    end program series