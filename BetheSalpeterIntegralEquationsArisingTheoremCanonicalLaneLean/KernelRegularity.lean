import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure KernelRegularityPackage where
  kernelIntegrability : Prop
  singularIntegralBound : Prop
  convolutionWellDefined : Prop
  fredholmProperty : Prop

structure KernelRegularityEvidence (P : KernelRegularityPackage) where
  kernelIntegrabilityClosed : P.kernelIntegrability
  singularIntegralBoundClosed : P.singularIntegralBound
  convolutionWellDefinedClosed : P.convolutionWellDefined
  fredholmPropertyClosed : P.fredholmProperty

def KernelRegularityClosed (P : KernelRegularityPackage) : Prop :=
  P.kernelIntegrability ∧ P.singularIntegralBound ∧ P.convolutionWellDefined ∧ P.fredholmProperty

theorem kernel_regularity_closed_from_evidence (P : KernelRegularityPackage)
    (E : KernelRegularityEvidence P) : KernelRegularityClosed P := by
  exact And.intro E.kernelIntegrabilityClosed
    (And.intro E.singularIntegralBoundClosed
      (And.intro E.convolutionWellDefinedClosed E.fredholmPropertyClosed))

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse