        program chac
        implicit none
        character(len=20)::full_name
        character(len=10)::first_name, last_name

        read*,first_name
        read*,last_name

        print*,first_name//adjustl(last_name)
        print*,trim(first_name)//" " //adjustl(last_name)

        end
