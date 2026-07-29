import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationDetection where
  jacobianEigenvalues : Type u
  eigenvalueCrossingCondition : Prop
  nonresonanceCondition : Prop
  bifurcationTypeIdentified : Prop

def BifurcationDetectionClosed (D : BifurcationDetection) : Prop :=
  D.eigenvalueCrossingCondition ∧ D.nonresonanceCondition ∧ D.bifurcationTypeIdentified

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse