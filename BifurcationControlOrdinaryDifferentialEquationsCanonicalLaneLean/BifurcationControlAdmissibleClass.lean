import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationParameterSpace where
  paramType : Type u
  topology : TopologicalSpace paramType
  continuation : Prop

default

structure BifurcationControlAdmittedObject where
  parameterSpace : BifurcationParameterSpace
  odeSystem : Type v
  bifurcationPoint : parameterSpace.paramType
  controlled : Prop
  conclusion : controlled

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse