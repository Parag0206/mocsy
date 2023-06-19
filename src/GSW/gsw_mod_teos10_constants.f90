!==========================================================================
module gsw_mod_teos10_constants
!==========================================================================

use gsw_mod_kinds

implicit none

real (r8), parameter :: db2pa = 1.0e4
real (r8), parameter :: rec_db2pa = 1.0e-4

real (r8), parameter :: pa2db = 1.0e-4
real (r8), parameter :: rec_pa2db = 1.0e4

real (r8), parameter :: pi = 3.141592653589793
real (r8), parameter :: deg2rad = pi/180.0
real (r8), parameter :: rad2deg = 180.0/pi

real (r8), parameter :: gamma = 2.26e-7

!  cp0  =  The "specific heat" for use                         [ J/(kg K) ]
!          with Conservative Temperature   

real (r8), parameter :: gsw_cp0 = 3991.86795711963

!  T0  =  the Celcius zero point.                                     [ K ]

real (r8), parameter :: gsw_t0 = 273.15

!  P0  =  Absolute Pressure of one standard atmosphere.              [ Pa ]

real (r8), parameter :: gsw_p0 = 101325.0

!  SSO  =  Standard Ocean Reference Salinity.                      [ g/kg ]

real (r8), parameter :: gsw_sso = 35.16504
real (r8), parameter :: gsw_sqrtsso = 5.930011804372737

!  uPS  =  unit conversion factor for salinities                   [ g/kg ]

real (r8), parameter :: gsw_ups = gsw_sso/35.0

!  sfac  =  1/(40*gsw_ups)

real (r8), parameter :: gsw_sfac = 0.0248826675584615

!  deltaS = 24, offset = deltaS*gsw_sfac

real (r8), parameter :: offset = 5.971840214030754e-1

!  C3515  =  Conductivity at (SP=35, t_68=15, p=0)                [ mS/cm ]

real (r8), parameter :: gsw_c3515 = 42.9140

!  SonCl  =  SP to Chlorinity ratio                           [ (g/kg)^-1 ]

real (r8), parameter :: gsw_soncl = 1.80655

!  valence_factor  =  valence factor of sea salt of Reference Composition
!                                                              [ unitless ]

real (r8), parameter :: gsw_valence_factor = 1.2452898

!  atomic_weight = mole-weighted atomic weight of sea salt of Reference 
!                  Composition                                    [ g/mol ]

real (r8), parameter :: gsw_atomic_weight = 31.4038218

end module

!--------------------------------------------------------------------------
