import HautevilleHouse.BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "bifurcation-control-ode-canonical-lane",
  theoremName := "Bifurcation Control ODE Canonical Lane",
  theoremObject := "Stability and bifurcation analysis of controlled ODE systems",
  classicalBoundary := "Classical ODE theory (existence, uniqueness, continuous dependence)",
  manifoldConstrainedStatement := "Admissible-class closure for bifurcation control: bridgeClosed and gateClosed hold for all admissible systems.",
  certificateLane := "manifold_constrained",
  carriedRemainder := "Unrestricted classical ODE boundary remains carried."
}

theorem theorem_statement_source_key_checked : sourceTheoremStatement.sourceKey = "bifurcation-control-ode-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked : sourceTheoremStatement.certificateLane = "manifold_constrained" := by
  rfl

end BifurcationControlOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse