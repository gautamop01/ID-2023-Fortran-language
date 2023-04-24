program value_pi1
implicit none
double precision::side, rand_x,rand_y, r, radius, area_square,points_square, points_circle
double precision::dist_origin, approx_pi, real_pi, error
integer::n,iteration
print*, 'Higher the value of iteration, higher will be accuracy of estimated value of π.'
print*, 'Enter the no. of iterations(random numbers) you want.'
read*, iteration
!side of square
side=1.0 !which is also the dianeter of the circle.
!so radius of circle is
radius=side/2.0
!area of square 
area_square=side**2
 
points_square=0
points_circle=0

n=0
do while (n.lt.iteration)
 call random_number(r)
 rand_x=-side/2.0+side*r
 call random_number(r)
 rand_y=-side/2.0+side*r
 
 !distance of points from origin
 dist_origin=(rand_x)**2+(rand_y)**2
 
 !to check whether points lie within the circle
 if (dist_origin.le.(radius)**2) then
 points_circle=points_circle + 1 !points generated inside circle.
 end if
  !total points generated in the square
 points_square=points_square + 1  

!estimating value of π.
 approx_pi = 4*(points_circle/points_square)
 n = n + 1
end do
print*,r
print*, 'Estimated value of pi', approx_pi
print*, 'number of points inside circle', points_circle
print*, 'number of points inside square', points_square
  
  !for error calculation
real_pi = 4.0*atan(1.0)
error = 100*(abs(real_pi-approx_pi))/real_pi
print*, 'real value of π', real_pi
print*, 'error in calculation', error, '%'
end program
 
 
 
 

