      program if_else
          implicit none
          integer::roll_no,phy_mark,math_mark
          print*,"roll no","phy_mark","math_mark"
          read*,roll_no,phy_mark,math_mark
          if((phy_mark>=50.and.math_mark>=40).or.(phy_mark>=40.and.math_mark>=50))then
            print*,"roll_no",roll_no,"phy_mark",phy_mark,"mathmarks",math_mark,"passed"
          elseif(phy_mark>=50.and.math_mark<40)then
            print*,"roll_no",roll_no,"phy_mark",phy_mark,"mathmarks",math_mark,"reapet the math"  
           else
            print*,"roll_no",roll_no,"phy_mark",phy_mark,"mathmarks",math_mark,"failed"
          endif

          
      end program if_else