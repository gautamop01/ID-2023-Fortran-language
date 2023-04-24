      program filltub
          implicit none
          real,parameter::pi=3.14159265
          real::height,flow,diameter,time,int_height
          print*,"please give input in order of int_height,flow,time,diameter"
          read*,int_height,flow,time,diameter
          height=int_height+(4.0*flow*time)/(pi*diameter)
          print*,"height is",height
          
      end program filltub