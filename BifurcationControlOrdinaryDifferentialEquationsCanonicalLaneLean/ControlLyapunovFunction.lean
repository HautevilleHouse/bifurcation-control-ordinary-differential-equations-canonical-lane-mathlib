import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure ControlLyapunovFunction where
  stateSpace : Type u
  topology : TopologicalSpace stateSpace
  lyapunovFunction : stateSpace → ℝ
  positiveDefinite : Prop
  controlLaw : stateSpace → ℝ
  derivativeAlongSystem : stateSpace → ℝ
  stabilizabilityCondition : Prop

structure ControlLyapunovFunctionEvidence (L : ControlLyapunovFunction) where
  positiveDefiniteClosed : L.positiveDefinite
  stabilizabilityConditionClosed : L.stabilizabilityCondition
  derivativeAlongSystemNonpositive : ∀ x, L.derivativeAlongSystem x ≤ 0

def ControlLyapunovFunctionClosed (L : ControlLyapunovFunction) : Prop :=
  L.positiveDefinite ∧ L.stabilizabilityCondition ∧ (∀ x, L.derivativeAlongSystem x ≤ 0)

theorem control_lyapunov_function_closed_from_evidence
    (L : ControlLyapunovFunction) (E : ControlLyapunovFunctionEvidence L) :
    ControlLyapunovFunctionClosed L := by
  exact And.intro E.positiveDefiniteClosed
    (And.intro E.stabilizabilityConditionClosed E.derivativeAlongSystemNonpositive)

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse