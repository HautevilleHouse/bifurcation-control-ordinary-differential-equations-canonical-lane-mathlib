import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean.ControlSystemODE

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure FeedbackControl (X U : Type) where
  controlLaw : X → U
  stabilityMargin : ℝ
  robust : Prop

structure StabilizationResult (X U : Type) (sys : ControlSystem X U) where
  feedback : FeedbackControl X U
  closedLoopStable : Prop
  basinOfAttraction : Set X

end HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean