import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure EquilibriumManifold (P : BifurcationParameterSpace) where
  stateSpace : Type u
  parameterDependentEquilibrium : P.parameterType → stateSpace → Prop
  regularity : Prop
  implicitFunctionDefined : Prop

def EquilibriumManifoldClosed {P : BifurcationParameterSpace} (E : EquilibriumManifold P) : Prop :=
  E.regularity ∧ E.implicitFunctionDefined

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse