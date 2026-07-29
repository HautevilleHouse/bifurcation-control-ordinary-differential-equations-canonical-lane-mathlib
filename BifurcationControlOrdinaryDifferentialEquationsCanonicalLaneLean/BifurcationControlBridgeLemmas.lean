import canonicalLaneMathlib.AdmissibleClass
import BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean.BifurcationControlAdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse