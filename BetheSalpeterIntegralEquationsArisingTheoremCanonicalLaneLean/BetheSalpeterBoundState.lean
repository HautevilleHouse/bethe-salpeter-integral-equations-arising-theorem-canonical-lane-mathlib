import canonicalLaneMathlib.AdmissibleClass
import BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean.BetheSalpeterPropagator

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure BetheSalpeterBoundStatePackage {K : BetheSalpeterKernelPackage}
    {P : BetheSalpeterPropagatorPackage K} where
  homogeneousEquation : Prop
  boundStateMass : Prop
  normalizationCondition : Prop
  existenceProof : Prop

structure BetheSalpeterBoundStateEvidence {K : BetheSalpeterKernelPackage}
    {P : BetheSalpeterPropagatorPackage K}
    (B : BetheSalpeterBoundStatePackage P) where
  homogeneousEquationClosed : B.homogeneousEquation
  boundStateMassClosed : B.boundStateMass
  normalizationConditionClosed : B.normalizationCondition
  existenceProofClosed : B.existenceProof

def BetheSalpeterBoundStateClosed {K : BetheSalpeterKernelPackage}
    {P : BetheSalpeterPropagatorPackage K}
    (B : BetheSalpeterBoundStatePackage P) : Prop :=
  B.homogeneousEquation ∧ B.boundStateMass ∧ B.normalizationCondition ∧ B.existenceProof

theorem bethe_salpeter_bound_state_closed_from_evidence
    {K : BetheSalpeterKernelPackage} {P : BetheSalpeterPropagatorPackage K}
    (B : BetheSalpeterBoundStatePackage P) (E : BetheSalpeterBoundStateEvidence B) :
    BetheSalpeterBoundStateClosed B := by
  exact And.intro E.homogeneousEquationClosed
    (And.intro E.boundStateMassClosed
      (And.intro E.normalizationConditionClosed E.existenceProofClosed))

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse