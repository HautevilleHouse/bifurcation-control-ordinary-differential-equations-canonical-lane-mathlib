import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean