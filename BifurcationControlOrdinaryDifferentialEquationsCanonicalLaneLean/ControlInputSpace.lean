import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure ControlInputSpace where
  inputManifold : Type u
  topology : TopologicalSpace inputManifold
  dimension : Nat
  boundedInputs : Set inputManifold
  admissibleControlSet : Set (ℝ → inputManifold)

structure ControlInputSpaceEvidence (C : ControlInputSpace) where
  dimensionClosed : C.dimension ≥ 1
  boundedInputsClosed : Bornology.IsBounded C.boundedInputs
  admissibleControlSetClosed : Set.Nonempty C.admissibleControlSet

def ControlInputSpaceClosed (C : ControlInputSpace) : Prop :=
  C.dimension ≥ 1 ∧ Bornology.IsBounded C.boundedInputs ∧ Set.Nonempty C.admissibleControlSet

theorem control_input_space_closed_from_evidence
    (C : ControlInputSpace) (E : ControlInputSpaceEvidence C) :
    ControlInputSpaceClosed C := by
  exact And.intro E.dimensionClosed
    (And.intro E.boundedInputsClosed E.admissibleControlSetClosed)

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse