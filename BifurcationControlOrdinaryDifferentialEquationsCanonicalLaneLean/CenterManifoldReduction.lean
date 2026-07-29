import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure CenterManifoldReduction where
  originalSystem : Type u
  reducedSystem : Type v
  centerManifoldDimension : Nat
  equivalenceMap : originalSystem → reducedSystem
  dynamicsConjugate : Prop
  bifurcationPreserved : Prop

structure CenterManifoldReductionEvidence (R : CenterManifoldReduction) where
  centerManifoldDimensionClosed : R.centerManifoldDimension > 0
  dynamicsConjugateClosed : R.dynamicsConjugate
  bifurcationPreservedClosed : R.bifurcationPreserved

def CenterManifoldReductionClosed (R : CenterManifoldReduction) : Prop :=
  R.centerManifoldDimension > 0 ∧ R.dynamicsConjugate ∧ R.bifurcationPreserved

theorem center_manifold_reduction_closed_from_evidence
    (R : CenterManifoldReduction) (E : CenterManifoldReductionEvidence R) :
    CenterManifoldReductionClosed R := by
  exact And.intro E.centerManifoldDimensionClosed
    (And.intro E.dynamicsConjugateClosed E.bifurcationPreservedClosed)

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse