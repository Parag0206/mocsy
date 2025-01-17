!==========================================================================
elemental function gsw_sp_from_sa_baltic (sa, long, lat)
!==========================================================================
!
! For the Baltic Sea, calculates Practical Salinity with a value
! computed analytically from Absolute Salinity
!
! sa     : Absolute Salinity                               [g/kg]
! long   : longitude                                       [deg E]     
! lat    : latitude                                        [deg N]
!
! gsw_sp_from_sa_baltic  : Practical Salinity              [unitless]
!--------------------------------------------------------------------------

use gsw_mod_toolbox, only : gsw_util_xinterp1

use gsw_mod_baltic_data

use gsw_mod_teos10_constants, only : gsw_sso

use gsw_mod_kinds

implicit none

real (r8), intent(in) :: sa, long, lat

real (r8) :: gsw_sp_from_sa_baltic

real (r8) :: xx_left, xx_right

if (xb_left(2).lt.long .and. long.lt.xb_right(1) .and. &
    yb_left(1).lt.lat  .and.  lat.lt.yb_left(3)) then
  
    xx_left = gsw_util_xinterp1(yb_left, xb_left, 3, lat)
    
    xx_right = gsw_util_xinterp1(yb_right, xb_right, 2, lat)
    
    if(xx_left.le.long .and. long.le.xx_right) then
        gsw_sp_from_sa_baltic = (35.0/(gsw_sso - 0.087))*(sa - 0.087)
    else
        gsw_sp_from_sa_baltic = 9e15
    end if
     
else
    gsw_sp_from_sa_baltic = 9e15
end if

return
end function

!--------------------------------------------------------------------------
