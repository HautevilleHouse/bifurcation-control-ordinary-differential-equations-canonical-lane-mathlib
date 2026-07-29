import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationODESystemPackage where
  stateSpace : Type u
  parameterSpace : Type v
  vectorField : stateSpace → parameterSpace → stateSpace
  bifurcationParameter : parameterSpace
  criticalValue : parameterSpace
  smoothness : Prop
  existenceOfSolution : Prop

structure BifurcationODESystemEvidence (P : BifurcationODESystemPackage) where
  smoothnessClosed : P.smoothness
  existenceOfSolutionClosed : P.existenceOfSolution

def BifurcationODESystemClosed (P : BifurcationODESystemPackage) : Prop :=
  P.smoothness ∧ P.existenceOfSolution

theorem bifurcation_ode_system_closed_from_evidence (P : BifurcationODESystemPackage)
    (E : BifurcationODESystemEvidence P) : BifurcationODESystemClosed P := by
  exact And.intro E.smoothnessClosed E.existenceOfSolutionClosed

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
