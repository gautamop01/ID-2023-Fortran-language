      program area_perimeter                  !alwayas give 6 space befor write program
          implicit none                       !this for don't take any default from pc
          integer::area,perimeter,p,q
          p=4   !we can assing values directelly like this
          q=2   !  ,,   ,,   ,,    ,,   ,,   ,,   ,, ,,   ,,
          area=p*q      !formul of area for rectangle                       !area of rectangle
          perimeter=2*(p+q)                   !perimeter of rectangle
          print*,"area of rectangle is:",area    !printing of area of rectangle
          print*,"perimeter of rectangle:",perimeter   !printing of perimeter of rectangle
          
      end program area_perimeter        !always program end like this and write name also like this