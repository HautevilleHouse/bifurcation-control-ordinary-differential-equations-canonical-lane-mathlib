import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean.ControlSystemODE

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationPoint (X P : Type) where
  state : X
  parameter : P
  stabilityChange : Prop
  bifurcationType : String

structure BifurcationAnalysis (X U P : Type) (sys : ParametricControlSystem X U P) where
  bifurcationPoints : List (BifurcationPoint X P)
  normalFormComputed : Prop
  unfoldingParameters : Prop

end HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean