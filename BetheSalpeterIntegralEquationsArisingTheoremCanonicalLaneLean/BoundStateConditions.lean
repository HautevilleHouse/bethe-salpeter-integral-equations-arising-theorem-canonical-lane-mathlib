import BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean.SpectralAnalysis

/-! # Bound State Conditions Package -/

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure BoundStateConditionsPackage {K : BetheSalpeterKernelPackage}
    {E : BetheSalpeterEquationPackage K} {S : SpectralAnalysisPackage E} where
  boundStateEnergy : ℂ
  boundStateWavefunction : K.momentumSpace → ℂ
  eigenvalueCondition : boundStateEnergy ∈ S.eigenvalues
  wavefunctionNorm : ‖boundStateWavefunction‖ = 1

structure BoundStateConditionsEvidence {K : BetheSalpeterKernelPackage}
    {E : BetheSalpeterEquationPackage K} {S : SpectralAnalysisPackage E}
    (B : BoundStateConditionsPackage S) where
  eigenvalueConditionClosed : B.eigenvalueCondition
  wavefunctionNormClosed : B.wavefunctionNorm

def BoundStateConditionsClosed {K : BetheSalpeterKernelPackage}
    {E : BetheSalpeterEquationPackage K} {S : SpectralAnalysisPackage E}
    (B : BoundStateConditionsPackage S) : Prop :=
  B.eigenvalueCondition ∧ B.wavefunctionNorm

theorem bound_state_conditions_closed_from_evidence
    {K : BetheSalpeterKernelPackage} {E : BetheSalpeterEquationPackage K}
    {S : SpectralAnalysisPackage E} (B : BoundStateConditionsPackage S)
    (Ev : BoundStateConditionsEvidence B) : BoundStateConditionsClosed B := by
  exact And.intro Ev.eigenvalueConditionClosed Ev.wavefunctionNormClosed

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse