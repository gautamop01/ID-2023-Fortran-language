        program man_char
        implicit none
        character(len=20)::first_name
        integer::counta,N,i,j

        do
        read*,first_name

        if(first_name=="End_of_names")exit

        counta=0

        N=len(trim(first_name))

        print*,"length=",N

        do i=1,N
         if(first_name(i:i)=="a".or.first_name(i:i)=="A")counta=counta+1
        end do

        print*,"Number of a/A=",counta

        end do

        end
