PROGRAM ASSIGNMENT_1_B
IMPLICIT NONE
INTEGER :: i,j
INTEGER, PARAMETER :: N = 100000
REAL, PARAMETER :: A = 5.0
REAL :: X,R, F_P , F_P_MAX, F_P_NORM

open(UNIT=1, FILE='ASSIGNMENT_1_B.csv')

call random_seed()

do i = 1, N
50 call random_number(X) 
X=15*X
F_P = EXP(-A*X)
F_P_MAX = 1
F_P_NORM = F_P

call random_number(R)
if(F_P_NORM < R) goto 50
write(1, *) F_P,",",X

end do

end PROGRAM ASSIGNMENT_1_B