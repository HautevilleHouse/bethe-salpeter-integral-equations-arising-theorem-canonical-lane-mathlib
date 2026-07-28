import BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean.BoundStateConditions

/-! # Scattering Amplitude Package -/

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure ScatteringAmplitudePackage {K : BetheSalpeterKernelPackage}
    {E : BetheSalpeterEquationPackage K} {S : SpectralAnalysisPackage E}
    (B : BoundStateConditionsPackage S) where
  scatteringMatrix : ℂ → ℂ
  unitarity : ∀ ω, |scatteringMatrix ω| = 1
  relationToKernel : Prop

structure ScatteringAmplitudeEvidence {K : BetheSalpeterKernelPackage}
    {E : BetheSalpeterEquationPackage K} {S : SpectralAnalysisPackage E}
    {B : BoundStateConditionsPackage S} (A : ScatteringAmplitudePackage B) where
  unitarityClosed : ∀ ω, |A.scatteringMatrix ω| = 1
  relationToKernelClosed : A.relationToKernel

def ScatteringAmplitudeClosed {K : BetheSalpeterKernelPackage}
    {E : BetheSalpeterEquationPackage K} {S : SpectralAnalysisPackage E}
    {B : BoundStateConditionsPackage S} (A : ScatteringAmplitudePackage B) : Prop :=
  (∀ ω, |A.scatteringMatrix ω| = 1) ∧ A.relationToKernel

theorem scattering_amplitude_closed_from_evidence
    {K : BetheSalpeterKernelPackage} {E : BetheSalpeterEquationPackage K}
    {S : SpectralAnalysisPackage E} {B : BoundStateConditionsPackage S}
    (A : ScatteringAmplitudePackage B) (Ev : ScatteringAmplitudeEvidence A) :
    ScatteringAmplitudeClosed A := by
  exact And.intro Ev.unitarityClosed Ev.relationToKernelClosed

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse