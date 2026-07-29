import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure ControlSystem (X U : Type) where
  stateSpace : Type X
  controlSpace : Type U
  dynamics : X → U → X
  smoothness : Prop
  equilibrium : X
  equilibriumControl : U
  equilibriumProperty : dynamics equilibrium equilibriumControl = equilibrium

structure ParametricControlSystem (X U P : Type) extends ControlSystem X U where
  parameterSpace : Type P
  parameterDynamics : P → X → U → X
  parameterSmoothness : Prop

end HautevilleHouse
end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean