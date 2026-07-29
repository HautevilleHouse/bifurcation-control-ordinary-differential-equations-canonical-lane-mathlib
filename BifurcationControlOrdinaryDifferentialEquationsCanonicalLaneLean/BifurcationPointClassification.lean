import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

inductive BifurcationType where
  | saddleNode
  | hopf
  | pitchfork
  | transcritical
  | periodDoubling
  deriving Repr, DecidableEq

structure BifurcationPointClassification where
  parameterValue : ℝ
  bifurcationType : BifurcationType
  normalFormCoefficient : ℝ
  centerManifoldDimension : Nat
  stabilityChange : Prop

structure BifurcationPointClassificationEvidence (C : BifurcationPointClassification) where
  parameterValueClosed : C.parameterValue ∈ ℝ
  bifurcationTypeClosed : C.bifurcationType ∈ Finset.univ
  normalFormCoefficientClosed : C.normalFormCoefficient ≠ 0
  centerManifoldDimensionClosed : C.centerManifoldDimension = 1 ∨ C.centerManifoldDimension = 2
  stabilityChangeClosed : C.stabilityChange

def BifurcationPointClassificationClosed (C : BifurcationPointClassification) : Prop :=
  C.parameterValue ∈ ℝ ∧ C.bifurcationType ∈ Finset.univ ∧
  C.normalFormCoefficient ≠ 0 ∧ (C.centerManifoldDimension = 1 ∨ C.centerManifoldDimension = 2) ∧
  C.stabilityChange

theorem bifurcation_point_classification_closed_from_evidence
    (C : BifurcationPointClassification) (E : BifurcationPointClassificationEvidence C) :
    BifurcationPointClassificationClosed C := by
  exact And.intro E.parameterValueClosed
    (And.intro E.bifurcationTypeClosed
      (And.intro E.normalFormCoefficientClosed
        (And.intro E.centerManifoldDimensionClosed E.stabilityChangeClosed)))

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse