import canonicalLaneMathlib.AdmissibleClass
import BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean.BifurcationControlAdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure ControlFeedbackPackage where
  stateSpace : Type u
  controlLaw : stateSpace → Type v
  stabilized : Prop
  bifurcationAvoided : Prop

default

structure ControlFeedbackEvidence (C : ControlFeedbackPackage) where
  stabilizedClosed : C.stabilized
  bifurcationAvoidedClosed : C.bifurcationAvoided

def ControlFeedbackClosed (C : ControlFeedbackPackage) : Prop :=
  C.stabilized ∧ C.bifurcationAvoided

theorem control_feedback_closed_from_evidence (C : ControlFeedbackPackage) (E : ControlFeedbackEvidence C) :
    ControlFeedbackClosed C :=
  And.intro E.stabilizedClosed E.bifurcationAvoidedClosed

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse