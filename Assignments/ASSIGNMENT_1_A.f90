PROGRAM ASSIGNMENT_1_A
IMPLICIT NONE
INTEGER :: i,j
INTEGER, PARAMETER :: N = 100000
REAL, PARAMETER :: A = 5.0
REAL :: R

REAL :: X(1:N), Y(1:N), Z(1:N)

open(UNIT=1, FILE='ASSIGNMENT_1_A.csv')

call random_seed()

do i = 1, N
call random_number(R) 
X(i)=4*R-2

end do

do i = 1, N
call random_number(R) 
Y(i)=4*R-2

end do

do i = 1, N
call random_number(R) 
Z(i)=4*R-2

end do

do i=1, N
write(1, *) X(i),",",Y(i),",",Z(i)
end do

end PROGRAM ASSIGNMENT_1_A