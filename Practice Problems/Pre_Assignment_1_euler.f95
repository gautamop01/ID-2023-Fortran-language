program Assignment_1_euler
implicit none
integer k,m,w
real tmax, dt, t, v, x
m = 1                  ! Assigning the mass of the particle as 1
k = 1                  ! Assigning the Force Constant as 1
w = 1                  ! Assigning the Angular Frequency as 1
v = 1                  ! Assigning the Initial velocity as 0 
t = 0                  ! Assigning the Initial time = 0
x = 0                  ! Assigning the Initial position as 0 
tmax = 50              ! The Simulation would run for 50 seconds
dt = 0.001             ! defining the time step
open(unit=1, file="data_Assignment_1_euler.dat")
do while(t<=tmax)
    t = t + dt
    x = x + v*dt
    v = v - (w**2)*x*dt
    print *, v
    write(1,*)t,x,v,0.5*(m)*(v**2),0.5*(k)*(x**2)
end do

end program
