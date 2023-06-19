!==========================================================================
module gsw_mod_baltic_data
!==========================================================================
!
! Coordinate data for the Baltic Sea

use gsw_mod_kinds

implicit none

real (r8), dimension(2) :: xb_right, yb_right
real (r8), dimension(3) :: xb_left, yb_left

data xb_left  /12.6,  7.0, 26.0/
data yb_left  /50.0, 59.0, 69.0/

data xb_right /45.0, 26.0/
data yb_right /50.0, 69.0/

end module

!--------------------------------------------------------------------------



