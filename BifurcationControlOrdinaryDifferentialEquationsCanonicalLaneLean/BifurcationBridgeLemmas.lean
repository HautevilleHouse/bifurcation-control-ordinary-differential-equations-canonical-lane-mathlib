import BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BifurcationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse