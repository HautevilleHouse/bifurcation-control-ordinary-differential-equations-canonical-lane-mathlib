import canonicalLaneMathlib.AdmissibleClass
import BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean.BifurcationControlAdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationDiagramPackage where
  parameterValue : Type u
  equilibriumSet : parameterValue → Set (Type v)
  stabilityChange : Prop
  diagramClassified : Prop

default

structure BifurcationDiagramEvidence (D : BifurcationDiagramPackage) where
  stabilityChangeClosed : D.stabilityChange
  diagramClassifiedClosed : D.diagramClassified

def BifurcationDiagramClosed (D : BifurcationDiagramPackage) : Prop :=
  D.stabilityChange ∧ D.diagramClassified

theorem bifurcation_diagram_closed_from_evidence (D : BifurcationDiagramPackage) (E : BifurcationDiagramEvidence D) :
    BifurcationDiagramClosed D :=
  And.intro E.stabilityChangeClosed E.diagramClassifiedClosed

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse