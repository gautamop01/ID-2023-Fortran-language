program Assignment_1_verlet
implicit none
integer::k,m,w,i
real::tmax, dt, t, x(50000), v(50000)
dt = 0.001             ! defining the time step
x(1) = 0.0
v(1) = 1.0
m = 1                  ! Assigning the mass of the particle as 1
k = 1                  ! Assigning the Force Constant as 1
w = 1                  ! Assigning the Angular Frequency as 1
t = 0                  ! Assigning the Initial time = 0
tmax = 50              ! The Simulation would run for 50 seconds
open(unit=1, file="data_Assignment_1_Leapfrog.dat")
do i=2,50000
    t = t + dt
    v(i) = v(i-1) + (-w**2)*x(i-1)*dt
    x(i) = v(i)*dt + x(i-1)
    write(1,*)t,x(i),v(i),0.5*m*(v(i)**2),0.5*k*(x(i)**2)
end do
end program
        