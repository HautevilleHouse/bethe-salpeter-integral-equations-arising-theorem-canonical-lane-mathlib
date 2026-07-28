import BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean.BetheSalpeterEquation

/-! # Spectral Analysis Package -/

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure SpectralAnalysisPackage {K : BetheSalpeterKernelPackage}
    {E : BetheSalpeterEquationPackage K} where
  integralOperator : (K.momentumSpace → ℂ) → (K.momentumSpace → ℂ)
  eigenvalues : Set ℂ
  spectrum : Set ℂ
  spectralRadius : ℝ
  compactness : Prop

structure SpectralAnalysisEvidence {K : BetheSalpeterKernelPackage}
    {E : BetheSalpeterEquationPackage K} (S : SpectralAnalysisPackage E) where
  compactnessClosed : S.compactness
  spectralRadiusPositivity : S.spectralRadius > 0
  eigenvaluesInSpectrum : ∀ λ ∈ S.eigenvalues, λ ∈ S.spectrum

def SpectralAnalysisClosed {K : BetheSalpeterKernelPackage}
    {E : BetheSalpeterEquationPackage K} (S : SpectralAnalysisPackage E) : Prop :=
  S.compactness ∧ S.spectralRadius > 0 ∧ (∀ λ ∈ S.eigenvalues, λ ∈ S.spectrum)

theorem spectral_analysis_closed_from_evidence
    {K : BetheSalpeterKernelPackage} {E : BetheSalpeterEquationPackage K}
    (S : SpectralAnalysisPackage E) (Ev : SpectralAnalysisEvidence S) :
    SpectralAnalysisClosed S := by
  exact And.intro Ev.compactnessClosed
    (And.intro Ev.spectralRadiusPositivity Ev.eigenvaluesInSpectrum)

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse