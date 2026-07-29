import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean.BifurcationControlDesign

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationAdmittedObject where
  system : {
    X U P : Type
    sys : ParametricControlSystem X U P
  }
  design : BifurcationControlDesign (system.X) (system.U) (system.P) system.sys
  conclusion : Prop

structure AdmissibleClass where
  object : BifurcationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean