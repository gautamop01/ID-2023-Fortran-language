program arry
    
    implicit none
    integer::stock(5),watt_code
    real::cost(5),total_cost
    do watt_code = 1,5
       print*,"stock","cost"
       read*,stock(watt_code),cost(watt_code)
       total_cost=total_cost + cost(watt_code)*cost(watt_code)
    end do

    print*,"cost is ",total_cost
    

end program arry