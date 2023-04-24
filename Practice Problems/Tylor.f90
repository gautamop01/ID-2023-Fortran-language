program Taylor
    implicit none
    real x,t,angle,sum1,sum2
    integer np,n,i
   
    !To read the angle in degrees
    print*,  "Give the number whose sine value you wish to compute (in degrees)"
    read*, x
    print*, "Calculating the sine of ",x
   
    !To convert the angle to to radians
    angle=0.0174532925*x
    read*, "The angle in Radians is= ",angle
    print*, "Give the value of n (the no. of terms in the Taylor series)"
    read*, n
    print*, "The given value of n (the no. of terms in the Taylor series) is ",n

    !To sum up terms in Taylor series
    t=angle
    sum1=angle
    np=(2*(n-1))+1
    do i=3,np,2
        t=(((-t)(angle2))/(i(i-1)))
        sum1=sum1+t
    end do
    write (,)  "By Taylor series, sin(",x,")= ",sum1

    !To compare value using the intrinsic function
    sum2=sin(angle)
    write(,) "By using the intrinsic function, sin(",x,")= ",sum2
    if ((abs(sum1-sum2))<0.00001) then
        write(,) "The result matches the value given by the intrinsic function"
        else
        write(,)"The value found does not match the value given by the intrinsic function"
    end if

end program Taylor