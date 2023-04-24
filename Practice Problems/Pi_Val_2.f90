!This program helps you to estimate the value of pi 
!by using Monte-Carlo method simulation.
! pi = 4*(no. of points inside circle/no. of points inside square)

program value_pi
implicit none
double precision::x,y, pi, real_pi, error, r
integer::n,i,m
write(*,*)'Insert the number points of inside square'
read*, n 
real_pi=4.d0*(atan(1.d0))  !real value of pi

m=0
call srand(123456789)
do i=1,n    ! i = no. of points lying inside square.
x=rand()
y=rand()
r=sqrt(x**2+y**2)   ! equation of circle, x^2+y^2 = r'^2
if (r.le. 1.d0) then 
m = m+1                  !m = no. of points lying inside circle
pi=4.d0*(real(m)/real(i))
end if
end do
error = (abs(real_pi-pi)*100.d0)/real_pi 
print*,'number of points inside circle', m
print*,'Estimated value of pi = ',pi
print*, 'Real value of pi = ', real_pi
print*, 'Error in method = ', error, '%'
end program
