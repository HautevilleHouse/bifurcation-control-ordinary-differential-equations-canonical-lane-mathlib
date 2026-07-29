import Mathlib.Analysis.ODE

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure ControlODESystem where
  stateSpace : Type u
  parameterSpace : Type v
  controlSpace : Type w
  dynamics : stateSpace × parameterSpace × controlSpace → TangentBundle stateSpace
  parameterDependence : Prop
  controlAffine : Prop

def ControlODESystemClosed (S : ControlODESystem) : Prop :=
  S.parameterDependence ∧ S.controlAffine

structure ControlODESystemEvidence (S : ControlODESystem) where
  parameterDependenceClosed : S.parameterDependence
  controlAffineClosed : S.controlAffine

theorem control_ode_system_closed_from_evidence (S : ControlODESystem)
    (E : ControlODESystemEvidence S) : ControlODESystemClosed S := by
  exact And.intro E.parameterDependenceClosed E.controlAffineClosed

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse