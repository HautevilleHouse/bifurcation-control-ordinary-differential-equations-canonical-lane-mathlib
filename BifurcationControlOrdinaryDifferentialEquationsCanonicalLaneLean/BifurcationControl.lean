import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationControlPackage where
  controlInput : Type u
  feedbackLaw : Type v → Type w
  closedLoopSystem : Prop
  controllabilityCondition : Prop
  stabilizability : Prop

structure BifurcationControlEvidence (C : BifurcationControlPackage) where
  closedLoopSystemClosed : C.closedLoopSystem
  controllabilityConditionClosed : C.controllabilityCondition
  stabilizabilityClosed : C.stabilizability

def BifurcationControlClosed (C : BifurcationControlPackage) : Prop :=
  C.closedLoopSystem ∧ C.controllabilityCondition ∧ C.stabilizability

theorem bifurcation_control_closed_from_evidence (C : BifurcationControlPackage)
    (E : BifurcationControlEvidence C) : BifurcationControlClosed C := by
  exact And.intro E.closedLoopSystemClosed
    (And.intro E.controllabilityConditionClosed E.stabilizabilityClosed)

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
