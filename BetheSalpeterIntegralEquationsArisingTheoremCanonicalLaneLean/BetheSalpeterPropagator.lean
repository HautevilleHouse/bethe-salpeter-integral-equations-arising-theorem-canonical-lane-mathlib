import canonicalLaneMathlib.AdmissibleClass
import BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean.BetheSalpeterKernel

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure BetheSalpeterPropagatorPackage {K : BetheSalpeterKernelPackage} where
  freePropagator : Type u
  fullPropagator : Type v
  dysonEquation : Prop
  spectralRepresentation : Prop
  causalityCondition : Prop

structure BetheSalpeterPropagatorEvidence {K : BetheSalpeterKernelPackage}
    (P : BetheSalpeterPropagatorPackage K) where
  dysonEquationClosed : P.dysonEquation
  spectralRepresentationClosed : P.spectralRepresentation
  causalityConditionClosed : P.causalityCondition

def BetheSalpeterPropagatorClosed {K : BetheSalpeterKernelPackage}
    (P : BetheSalpeterPropagatorPackage K) : Prop :=
  P.dysonEquation ∧ P.spectralRepresentation ∧ P.causalityCondition

theorem bethe_salpeter_propagator_closed_from_evidence
    {K : BetheSalpeterKernelPackage} (P : BetheSalpeterPropagatorPackage K)
    (E : BetheSalpeterPropagatorEvidence P) : BetheSalpeterPropagatorClosed P := by
  exact And.intro E.dysonEquationClosed (And.intro E.spectralRepresentationClosed E.causalityConditionClosed)

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse