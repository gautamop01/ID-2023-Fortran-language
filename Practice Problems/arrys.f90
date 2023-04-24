program cost_blub
    implicit none
    integer::stock(5),watt_code
    real::cost(5),total_cost = 0
    do watt_code = 1,5
        read*,stock(watt_code),cost(watt_code)
        total_cost = total_cost + stock(watt_code)*cost(watt_code)
    end do
    
    print* ,"total cost :" , total_cost    
end program cost_blub