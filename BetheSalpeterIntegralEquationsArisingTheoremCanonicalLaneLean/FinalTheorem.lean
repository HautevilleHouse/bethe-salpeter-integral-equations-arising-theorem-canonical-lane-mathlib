import canonicalLaneMathlib.AdmissibleClass
import BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean.BridgeLemmas
import BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

def ConstrainedBetheSalpeterClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bethe_salpeter_endgame (A : AdmissibleClass) :
    ConstrainedBetheSalpeterClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse