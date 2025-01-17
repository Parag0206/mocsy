!==========================================================================
elemental function gsw_entropy_part_zerop (sa, pt0)
!==========================================================================
!
! entropy part evaluated at the sea surface
!
! sa     : Absolute Salinity                               [g/kg]
! pt0    : insitu temperature                              [deg C]
! 
! gsw_entropy_part_zerop : entropy part at the sea surface
!--------------------------------------------------------------------------

use gsw_mod_teos10_constants, only : gsw_sfac

use gsw_mod_kinds

implicit none

real (r8), intent(in) :: sa, pt0

real (r8) :: gsw_entropy_part_zerop

real (r8) :: x2, x, y, g03, g08

x2 = gsw_sfac*sa
x = sqrt(x2)
y = pt0*0.025

g03 = y*(-24715.571866078 + y*(2210.2236124548363 + &
    y*(-592.743745734632 + y*(290.12956292128547 + &
    y*(-113.90630790850321 + y*21.35571525415769)))))

g08 = x2*(x*(x*(y*(-137.1145018408982 + y*(148.10030845687618 + &
    y*(-68.5590309679152 + 12.4848504784754*y)))) + &
    y*(-86.1329351956084 + y*(-30.0682112585625 + y*3.50240264723578))) + &
    y*(1760.062705994408 + y*(-675.802947790203 + &
    y*(365.7041791005036 + y*(-108.30162043765552 + 12.78101825083098*y)))))

gsw_entropy_part_zerop = -(g03 + g08)*0.025

return
end function

!--------------------------------------------------------------------------
