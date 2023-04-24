program random1
    implicit none
    real::x,y
    integer::i,seed
    seed=123456789
    call srand(seed)
    do i=1,1000
    x=rand()
    y=rand()
    print*,x,y
    end do

    
end program random1