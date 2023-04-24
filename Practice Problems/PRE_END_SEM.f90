! !This program helps you to estimate the value of pi 
! !by using Monte-Carlo method simulation.
! ! pi = 4*(no. of points inside circle/no. of points inside square)

! ! program value_pi
! ! implicit none
! ! double precision::x,y, pi, real_pi, error, r
! ! integer::n,i,m
! ! write(*,*)'Insert the number points of inside square'
! ! read*, n 
! ! real_pi=4.d0*(atan(1.d0))  !real value of pi

! ! m=0
! ! call srand(123456789) ! call srand is used to initialize the random number generator before generating a sequence of random numbers using the rand() function.

! ! do i=1,n    ! i = no. of points lying inside square.
! ! x=rand()
! ! y=rand()
! ! r=sqrt(x**2+y**2)   ! equation of circle, x^2+y^2 = r'^2
! ! if (r.le. 1.d0) then 
! ! m = m+1                  !m = no. of points lying inside circle
! ! pi=4.d0*(real(m)/real(i))
! ! end if
! ! end do
! ! error = (abs(real_pi-pi)*100.d0)/real_pi 
! ! print*,'number of points inside circle', m
! ! print*,'Estimated value of pi = ',pi
! ! print*, 'Real value of pi = ', real_pi
! ! print*, 'Error in method = ', error, '%'
! ! end program

! !----------------------------------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
! program sin_series
!     implicit none
!     integer :: n
!     real :: x, term, sum

!     ! Set x = pi/2
!     x = 3.14159265 / 2.0

!     ! Print header for output
!     write(*,*) "n", "term"

!     ! Compute and print terms for n = 0 to 20
!     sum = 0.0
!     do n = 0, 20
!         term = (-1.0)**n * x**(2*n+1) / product(1, 2*n+1)
!         write(*,*) n, term
!         sum = sum + term
!     end do

!     ! Print estimated value of sin(x)
!     write(*,*) "Estimated value of sin(x) = ", sum

!     ! Plot terms as a function of n using gnuplot
!     open(unit=10, file="sin_series.plot", status="replace")
!     write(10,*) "set terminal pngcairo enhanced font 'Verdana,10'"
!     write(10,*) "set output 'sin_series.png'"
!     write(10,*) "set xlabel 'n'"
!     write(10,*) "set ylabel 'term'"
!     write(10,*) "set title 'Terms in sin(x) series at x = pi/2'"
!     write(10,*) "plot '-' with lines"
!     do n = 0, 20
!         term = (-1.0)**n * x**(2*n+1) / product(1, 2*n+1)
!         write(10,*) n, term
!     end do
!     write(10,*) "e"
!     close(10)

! contains

!     ! Function to compute the product of integers from start to end
!     integer function product(start, end)
!     integer, intent(in) :: start, end
!     integer :: i, result
!     result = 1
!     do i = start, end
!         result = result * i
!     end do
!     product = result
! end function product

! end program sin_series
program sin_series
    implicit none
    integer :: n
    real :: x, term, sum, true_val, deviation

    ! Set x = pi/2
    x = 3.14159265 / 2.0

    ! Compute and print terms for n = 0 to 20
    sum = 0.0
    do n = 0, 20
        term = (-1.0)**n * x**(2*n+1) / product(1, 2*n+1)
        sum = sum + term
    end do

    ! Calculate true value of sin(x)
    true_val = sin(x)

    ! Calculate deviation
    deviation = abs(1.0 - sum/true_val)

    ! Print estimated value of sin(x) and deviation
    write(*,*) "Estimated value of sin(x) = ", sum
    write(*,*) "True value of sin(x) = ", true_val
    write(*,*) "Deviation of sin(x) = ", deviation

contains

    ! Function to compute the product of integers from start to end
    integer function product(start, end)
    integer, intent(in) :: start, end
    integer :: i, result
    result = 1
    do i = start, end
        result = result * i
    end do
    product = result
end function product

end program sin_series



!  ------------------------------------------------------------------------------

! ! Question - Given a full name “Rahul Sharma”, write a fortran code that will alter the order of the first and
! ! the last names.



! program reversestring
! implicit none
! character(len=40):: fullname = "Rahul sharma"
! character(len=20):: firstname,lastname
! integer :: space_index
! integer :: n

! n = LEN(fullname)
! space_index = index(fullname, " ")

! firstname = fullname(1:space_index-1) ! 1 becuase in fortran indexing from 1 to n
! lastname = fullname(space_index:n)

! print *, "Your Name : ", fullname
! print *, "Last Name : ", trim(lastname) // " " // trim(firstname)
! ! Trim used because if we dont use trim then this is directly consider len = 20 and 
! ! name print like  Last Name : sharma         Rahul (extra space between first name and last name )

! end program reversestring


! ! ---------------------------------------------------------------------------------------------

