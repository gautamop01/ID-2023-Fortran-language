program ASSIGNMENT_2_1
    implicit none
    double precision, dimension(100000) :: X, Y, Z, Vel_X, Vel_Y, Vel_Z, T
    real, parameter :: H = 2.00, V = 25.00, dt = 0.0001, pi = 3.14159, M = 4.1887e-9, lambda =33.291e-9
    integer :: i
    do i = 1, 100000
        X(i) = 0.0
        Y(i) = 0.0
        Z(i) = H
        Vel_X(i) = V
        Vel_Y(i) = 0.0
        Vel_Z(i) = 0.0
        T(i) = 0.0
    end do

    do i = 1, 100000
        do while(Z(i)>0)
            X(i) = X(i) + Vel_X(i)*dt 
            Y(i) = Y(i) + Vel_Y(i)*dt
            Z(i) = Z(i) + Vel_Z(i)*dt

            Vel_X(i) = Vel_X(i) - (lambda/M)*Vel_X(i)*dt
            Vel_Y(i) = Vel_Y(i) - (lambda/M)*Vel_Y(i)*dt
            Vel_Z(i) = Vel_Z(i) - (9.81)*dt - (lambda/M)*Vel_Z(i)*dt

            T(i) = T(i) + dt
        end do
    end do
    open(unit = 3, file = 'Velocities.csv', status = 'replace')
    open(unit = 4, file = 'Positions.csv', status = 'replace')
    do i = 1, 100000
        write(3,*) T(i), ", ", Vel_X(i), ", ", -1*Vel_Z(i)
        write(4,*) T(i), ",", X(i), ",", Z(i)
    end do
    print *, "THE HORIZONTAL DISTANCE CALCULATED IS :", X(59)
    print *, "THE TOTAL TIME TAKEN IS : ",T(59)

    
end program ASSIGNMENT_2_1

