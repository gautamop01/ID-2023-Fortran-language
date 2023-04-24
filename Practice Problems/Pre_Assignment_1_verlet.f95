program Assignment_1_verlet
implicit none
integer::k,m,w,j
real::tmax, dt, t, x(50000), v(50000)
dt = 0.001             ! defining the time step
x(1) = 0.0
v(1) = 1.0
x(2) = x(1) + v(1)*dt  ! Initial Calculation Using Normal Euler Method
m = 1                  ! Assigning the mass of the particle as 1
k = 1                  ! Assigning the Force Constant as 1
w = 1                  ! Assigning the Angular Frequency as 1
t = 0                  ! Assigning the Initial time = 0
tmax = 50              ! The Simulation would run for 50 seconds
open(unit=1, file="data_Assignment_1_verlet.dat")
do j=3,50000
    t = t + dt
    x(j) = 2*x(j-1) - x(j-2) - (dt**2)*(k/m)*x(j-1)
    v(j-1) = (x(j) - x(j-2))/(2*dt)
    write(1,*)t,x(j),v(j-1),0.5*m*(v(j-1)**2),0.5*k*(x(j)**2)
end do
end program
    