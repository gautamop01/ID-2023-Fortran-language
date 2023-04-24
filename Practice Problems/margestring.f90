      program margestring
          implicit none
          integer::b
          character::first_name*20
          character::last_name*20
          character::full_name*40
          print*,"write your first and last name"
          read* ,first_name,last_name
          !full_name=trim(first_name)//last_name  ! becuse its remove 13 blank space but here no space between first and scond name
          full_name=trim(first_name)//" "//last_name !this for at least give a space between first and second name
          print*,"your full name is:",full_name
          b=len(full_name)
          print*,"length of string is:",b
      end program margestring
