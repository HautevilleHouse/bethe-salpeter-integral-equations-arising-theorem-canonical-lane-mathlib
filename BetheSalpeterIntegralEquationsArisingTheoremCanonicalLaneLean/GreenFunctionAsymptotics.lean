import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure GreenFunctionAsymptoticsPackage where
  highEnergyDecay : Prop
  infraredBehavior : Prop
  lightconeSingularity : Prop
  analyticContinuation : Prop

structure GreenFunctionAsymptoticsEvidence (G : GreenFunctionAsymptoticsPackage) where
  highEnergyDecayClosed : G.highEnergyDecay
  infraredBehaviorClosed : G.infraredBehavior
  lightconeSingularityClosed : G.lightconeSingularity
  analyticContinuationClosed : G.analyticContinuation

def GreenFunctionAsymptoticsClosed (G : GreenFunctionAsymptoticsPackage) : Prop :=
  G.highEnergyDecay ∧ G.infraredBehavior ∧ G.lightconeSingularity ∧ G.analyticContinuation

theorem green_function_asymptotics_closed_from_evidence (G : GreenFunctionAsymptoticsPackage)
    (E : GreenFunctionAsymptoticsEvidence G) : GreenFunctionAsymptoticsClosed G := by
  exact And.intro E.highEnergyDecayClosed
    (And.intro E.infraredBehaviorClosed
      (And.intro E.lightconeSingularityClosed E.analyticContinuationClosed))

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse