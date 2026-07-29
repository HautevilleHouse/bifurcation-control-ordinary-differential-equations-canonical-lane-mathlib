import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationParameterSpace where
  parameterType : Type u
  topology : TopologicalSpace parameterType
  bifurcationSet : Set parameterType
  dimension : ℕ
  smoothStructure : Prop

def BifurcationParameterSpaceClosed (P : BifurcationParameterSpace) : Prop :=
  P.smoothStructure

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse