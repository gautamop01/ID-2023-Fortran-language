!This program helps you to generate and display data of projectile


program projectile_motion
implicit none
integer::theta
real::angle, R
real, parameter:: pi = 4.0*atan(1.0), u =30.0, g=9.8
open(1, file='projectile.dat', action='write')
do theta =0,90
angle=(theta*pi)/180.0 !convert angle in degree to radian.
R=(u**2*sin(2*angle))/g
print*, theta, R
write(1,*)theta, R !write data in file 'projectile.dat'
end do
close(1)
end program
