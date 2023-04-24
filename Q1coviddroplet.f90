program covid_droplets
    implicit none 
    double precision, parameter:: eta=1.81E-5,r=50E-6
    double precision:: lambda,mass
    integer:: files 
    real, parameter:: g=9.8,dt=0.0001,pi=3.14
    real :: t=0.0, x=0.0,y=0.0,z=2,vx=30.0,vy=0,vz=0.0
    lambda=6*pi*eta*r
    mass=1000*(4/3)pi(r**3)
    print *,"lambda=",lambda
    print *,"m=",m
    open(files,file="covid_droplet_exam.dat",status = 'unknown')
    do while(z>=0)
        t=t+dt 
        x= x+vx*dt 
        y= y+vy*dt 
        z= z-vz*dt 
        vx= vx -(lambda/mass)*vx*dt
        vy= vy -(lambda/mass)*vy*dt
        vz= vz -(lambda/mass)*vz*dt +g*dt
        write(files,*)t,vx,vz,x,z
    end do 
    close(files)
    call system("gnuplot -p Part1_1.plt")
    !print *, "The droplet stays in air for time t=",t,"sec"
    !print *, "X distance from O = ",x,"mass" 
    !print *, "Y distance from O = ",y,"mass" 
    !print *, "Z distance from O = ",z,"mass"
    !print *, "vx_final=",vx,"mass/s" 
    !print *, "vy_final=",vy,"mass/s" 
    !print *, "vz_final=",vz,"mass/s" 
    
    end program