
! program first
! implicit none;
! character*20 :: name;
! print *,"Whats Your Name ?";
! read *, name;
! print *,"Hello ",name;



! end program first

! program forLoop

! do i=0,10
! print *, i;
! end do


! end program forLoop

! program DataTypes
!   implicit none

!   integer :: num = 42
!   real :: pi = 3.14
!   real*8 :: e = 2.71828
!   character :: letter = 'a'
!   character(len=14) :: message = "Hello, world!"

!   print*,"num = ", num
!   print*,"pi = ", pi
!   print*,"e = ", e
!   print*,"letter = ", letter
!   print*,"message = ", message

! end program DataTypes


! program WhileLoop
!   integer :: i = 0
!   do while (i < 10)
!     print *, i
!     i = i + 1
!   end do
! end program WhileLoop


!
! program DoWhileLoop
!   integer :: i = 0
!   do while (i < 10)
!     print *, i
!     i = i + 1
!   end do 
! end program DoWhileLoop
! 


! program IfElseCondition
!   integer :: num = 5
!   if (num > 10) then
!     print *, "Number is greater than 10"
!   else
!     print *, "Number is less than or equal to 10"
!   end if
! end program IfElseCondition


! program SelectCase
!   integer :: num = 6
!   select case (num)
!     case (1)
!       print *, "Number is one"
!     case (2)
!       print *, "Number is two" 
!     case (3)
!       print *, "Number is three"
!     case default
!       print *, "Number is not one, two, or three"
!   end select
! end program SelectCase


! program selectcasenew
! integer :: n = 3;
! select case(n);
! case(1)
! print *, "This is one";
! case(2);
! print *, "This is two";
! case(3);
! print *, "This is three"
! case default;
! print *, "This is not in the list"
! end select;
! end program selectcasenew;


! In fortran semicolan in not needed its on you , if you want to use ,
! You use , if you not want to use not use , SIMPLE 


! program Array
!   integer :: arr(5) = [1, 2, 3, 4, 5]
!   print *, "Array values:", arr
! end program Array


! program SelectCase
! implicit none
!   integer :: num = 20
!   select case (num)
!     case (1)
!       print *, "Number is one"
!     case (2)
!       print *, "Number is two"
!     case (3)
!       print *, "Number is three"
!     case default
!       print *, "Number is not one, two, or three"
!   end select
! end program SelectCase

! program reversestring
!     implicit none

!     character(len=20)
!     print *, "first name =", names(1)
!     print *, "last name =", names(2)

! end program reversestring

! program string_array
!     implicit none

!     character(len=10) :: names(3) = (/ 'Alice', 'Bob', 'Charlie' /)
!     integer :: i

!     do i = 1, 3
!         print *, "Name ", i, ": ", names(i)
!     end do

! end program string_array



! program value_pi
! implicit none
! double precision::pi
! pi = 4.0*atan(1.0)
! print*, "Value of π = ", pi
! end program

! program testingfunc
! implicit none 
! integer :: r = 18;
! integer :: s = 36;
! print*, "Min :",MOD(r,s)
! ! print*, "Min :",DIM(r,s)

! end program testingfunc


! program dim_example
!   implicit none
!   integer :: i, j
!   real :: x, y, z

!   i = 5
!   j = 3
!   x = 3.0
!   y = 6.0
!   z = dim(x, y)

!   write(*,*) "The positive difference between ", x, " and ", y, " is ", z

!   x = 2.0
!   y = 5.0
!   z = idim(i, j)

!   write(*,*) "The positive difference between ", i, " and ", j, " is ", z

! end program dim_example

! -----------------------------------------------------------------------------------

! program triangle 
! implicit none
! real :: a, b, c, theta, area, rad_theta
! real, parameter :: pi = 22.0 / 7
! read*, a, b, theta
! rad_theta = theta*pi/180.0
! c = sqrt(a**2 + b**2 - 2*a*b*cos(rad_theta))
! area = 0.5 * a * b * sin(rad_theta)
! print*, "area =", area


! end program triangle


! "&&" represents the logical operator "AND".
! "||" represents the logical operator "OR".


! FUNCTION circle_area(radius)
!     REAL :: circle_area, radius
!     circle_area = 3.14159 * radius**2
! END FUNCTION


! program main
!     REAL :: r, area
!     r = 2.5
!     area = circle_area(r)
!     print *, "The area of the circle is", area
! end program




! program main
!     REAL :: x,y
!     x = 5.0
!     y = 10.0
!     CALL swap(x,y)
!     print *, "After swapping: x=", x, "y=", y
! end program

! SUBROUTINE swap(a,b)
!     REAL, INTENT(INOUT) :: a,b
!     REAL :: temp
!     temp = a
!     a = b
!     b = temp
! END SUBROUTINE


! ...................................................................................
! program testingotherfucntions 
! character(len=120):: first_name = "              sivaramakrishnan"

! print *, adjustl(first_name)
! ! print*, first_name(3:4)
! ! print*, first_name(9:)
! ! do i=0,120
! ! if(i=5) then
! ! print*,first_name(i:i+8);
! ! ! end if
! ! !  if (num > 10) then
! ! !     print *, "Number is greater than 10"
! ! end do


! end program testingotherfucntions

!---------------------------------------------------------

! program count_a
! implicit none 
! character(len=40):: name, temp_name
! integer :: count , name_length, i

! do 
! read*, temp_name 
! name = trim(temp_name)
! if(name == "End_of_names") exit 
! name_length = len(trim(name))
! print*, "name length :",name_length
! count = 0
! do i=1,name_length
! if(name(i:i) == "a" .or. name(i:i) == "A") then 
! count = count + 1
! end if
! end do
! print *, temp_name, count 
! end do
! end program
    
!-----------------------------------------------------------
! program calculate_area
!   implicit none
!   real :: radius, area
!   ! Read the radius of the circle from user input
!   write(*,*) "Enter the radius of the circle:"
!   read(*,*) radius
!   ! Call the calculate_circle_area function to calculate the area
!   area = calculate_circle_area(radius)
!   ! Print the calculated area
!   write(*,*) "The area of the circle is:", area
! contains
!   ! Calculate the area of a circle
!   real function calculate_circle_area(r)
!     real, intent(in) :: r
!     real :: pi
!     pi = 3.14159
!     calculate_circle_area = pi * r**2
!   end function calculate_circle_area
! end program calculate_area

!--------------------------------------------------

! program dynamic_memory_allocation
!   implicit none
!   integer, allocatable :: my_array(:)
!   integer :: n,i
!   ! Read the desired size of the array from user input
!   write(*,*) "Enter the size of the array:"
!   read(*,*) n
!   ! Allocate memory for the array
!   allocate(my_array(n))
!   ! Use the array
!   my_array = [(i, i=1,n)]
!   write(*,*) "Array elements:"
!   write(*,*) my_array
!   ! Deallocate the memory
!   deallocate(my_array)
! end program dynamic_memory_allocation

!_----------------------


! program arrayFunctions
!   integer :: my_array(5) = [1, 2, 3, 4, 5]
!   integer,dimension(5) :: my_array2 = [1, 2, 3, 4, 5]
!   print*, "Sum: ", sum(my_array)
!   print*,"min :", minval(my_array)
!   print*,"max :", maxval(my_array)
!   print*,"product :", product(my_array)
!   print*, "Dot Product :", dot_product(my_array,my_array)
! !   print*, "Matrix Prosuct :", matmul(a,b)
! end program arrayFunctions


! -------------------------------------------------------------------

! program First_second
! implicit none 
! integer :: marks(5)
! integer :: first = 0, second = 0, i
! print*, "type 5 individual marks : "
! read*, (marks(i),i=1,5)
! do i=1,5
! if(marks(i)>first) first = marks(i)
! end do

! do i=1,5
! if(marks(i)==first) cycle ! Cycle is used for leaving this itheration and in fortran "Cycle" opposite keyboard is "Exit", this is used for break the loop and exit this 
! if(marks(i)>second) second = marks(i)
! end do

! print *, "Highest mark :",first,"2nd Highest marks :",second


! end program First_second

!------------------------------------------------------------------------------------------

! program Initialize_Array
! ! integer :: b(1:50)
! integer :: b(3,2),i,j
! ! b(0)=4
! ! b(1)=3
! ! b(2)=8
! ! b(3)=7
! ! b(4)=6
! ! b = (/1,3,(i*i,i=1,47),8/)
! ! b = (/(i,i=1,25), (3*i,i=1,25)/)
! read*, ((b(i,j),i=1,2),j=1,3)

! do j=1,3
!   do i=1,2
! print *, b(i,j) 
! end do 
! end do
! end program Initialize_Array

!==========================================================================

! program multidi
! integer :: array(2,2),i
! read*,((array(i,j),i=1,2),j=1,2)
! ! print*,array(i)
! print*,"Output :", ((array(i,j),i=1,2),j=1,2)
! end program multidi

! ------------------------------------------------------------------- 


!------------------------------------------------------------------------------------------

! program Initialize_Array
! integer :: b(3,2),i,j

! read*, ((b(i,j),i=1,2),j=1,3)

! print*,"Output :" , ((b(i,j),i=1,2),j=1,3)

! ! do j=1,3
! !   do i=1,2
! ! print *, b(i,j) 
! ! end do 
! ! end do
! end program Initialize_Array

!===================================================================

! Dimension of any array\
! Absolute Value -
! ABS(x) used for output in real number 
! IABS(x) used for output in integer number 

! ! reamainder Value 
! AMOD(x1, x2) --> Renainder when x1 is divided by x2 for real numbers
! MOD(x1, x2) --> reamainder when x1 is divided by x2  for integer numbers 

! ! Transfer of sign 
! SIGN(x1,x2) --> x1 and x2 is real numbers
! ! SIGN(x1,x2) = sign(x1) * sign(x2)

! ISIGN(x1,x2) --> x1 and x2 is integer numbers

! ! Positive Diffirence 
! DIM(x1,x2) --> x2 - min(x1,x2) ! for real number
! IDIM(x1,x2) --> ! for integer number 
!===================================================================
! program complex_example
!   implicit none
  
!   complex :: z1, z2, z3
  
!   z1 = (2.0, 3.0)  ! Declare and initialize a complex number
!   z2 = (1.0, -2.0)
  
!   ! Perform arithmetic operations on complex numbers
!   z3 = z1 + z2
!   print *, z3  ! Output: (3.0, 1.0)
  
!   z3 = z1 * z2
!   print *, z3  ! Output: (8.0, -1.0)
  
!   z3 = conjg(z1)
!   print *, z3  ! Output: (2.0, -3.0)
  
! end program complex_example


! ---------------------------------------------------------

! program triangle 
! implicit none
! real :: a,b,ans,theta,area,rad_theta
! real, parameter :: pi=22.0/7
! read*, a,b,theta
! rad_theta = theta*pi/180.0
! ans = sqrt(a**2 + b**2 - 2*a*b*cos(rad_theta))
! area = 0.5 * a * b * sin(rad_theta)
! print *, "area = ", area
! end program triangle


! ---------------------------------------------------------


