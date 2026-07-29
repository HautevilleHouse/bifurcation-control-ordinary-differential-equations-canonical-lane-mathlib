import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure CenterManifold where
  dimension : ℕ
  existenceProof : Prop
  reductionProcedure : Prop
  dynamicsOnManifold : Prop

def CenterManifoldClosed (C : CenterManifold) : Prop :=
  C.existenceProof ∧ C.reductionProcedure ∧ C.dynamicsOnManifold

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse