import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "BetheSalpeterCanonicalLane",
    theoremName := "BetheSalpeterIntegralEquationsArisingTheorem",
    theoremObject := "Bethe-Salpeter integral equation solution existence",
    classicalBoundary := "unrestricted classical boundary carried",
    manifoldConstrainedStatement := "admissible-class closure for Bethe-Salpeter arisings",
    certificateLane := "constrained",
    carriedRemainder := "endpoint classification and remainder closure"
  }

theorem theorem_statement_key_checked :
    sourceTheoremStatement.sourceKey = "BetheSalpeterCanonicalLane" := by
  rfl

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse