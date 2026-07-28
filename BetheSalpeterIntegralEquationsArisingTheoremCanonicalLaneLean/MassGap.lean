import BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean.BetheSalpeterEquation

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure MassGapPackage {G : BetheSalpeterKernelPackage}
    (F : BetheSalpeterEquationPackage G) where
  massGapExists : Prop
  spectralBelowThreshold : Prop
  analyticContinuation : Prop

structure MassGapEvidence {G : BetheSalpeterKernelPackage}
    {F : BetheSalpeterEquationPackage G} (M : MassGapPackage F) where
  massGapExistsClosed : M.massGapExists
  spectralBelowThresholdClosed : M.spectralBelowThreshold
  analyticContinuationClosed : M.analyticContinuation

def MassGapClosed {G : BetheSalpeterKernelPackage}
    {F : BetheSalpeterEquationPackage G} (M : MassGapPackage F) : Prop :=
  M.massGapExists ∧ M.spectralBelowThreshold ∧ M.analyticContinuation

theorem mass_gap_closed_from_evidence
    {G : BetheSalpeterKernelPackage} {F : BetheSalpeterEquationPackage G}
    (M : MassGapPackage F) (E : MassGapEvidence M) : MassGapClosed M := by
  exact And.intro E.massGapExistsClosed
    (And.intro E.spectralBelowThresholdClosed E.analyticContinuationClosed)

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse
