import BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean.ControlODESystem

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationPoint (S : ControlODESystem) where
  parameterValue : S.parameterSpace
  equilibrium : S.stateSpace
  linearization : Prop
  eigenvalueCrossing : Prop
  type : BifurcationType

inductive BifurcationType where
  | saddleNode
  | hopf
  | pitchfork
  | transcritical

def BifurcationPointClosed (P : BifurcationPoint) : Prop :=
  P.eigenvalueCrossing ∧ P.linearization

structure BifurcationAnalysis where
  system : ControlODESystem
  bifurcationPoints : List (BifurcationPoint system)
  classificationComplete : Prop

def BifurcationAnalysisClosed (A : BifurcationAnalysis) : Prop :=
  A.classificationComplete ∧ ∀ p ∈ A.bifurcationPoints, BifurcationPointClosed p

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse