import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure HopfBifurcation where
  equilibriumPoint : Type u
  eigenvaluePair : ℂ × ℂ
  crossingSpeed : ℝ
  periodicOrbitExistence : Prop
  stabilityOfOrbit : Prop

def HopfBifurcationClosed (H : HopfBifurcation) : Prop :=
  H.periodicOrbitExistence ∧ H.stabilityOfOrbit

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse