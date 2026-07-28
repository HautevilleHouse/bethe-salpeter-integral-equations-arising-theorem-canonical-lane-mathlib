import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure BetheSalpeterKernelPackage where
  momentumSpace : Type u
  interactionPotential : Type v
  kernelFunction : momentumSpace → momentumSpace → Prop
  translationInvariant : Prop
  lorentzCovariant : Prop
  singularityStructure : Prop

structure BetheSalpeterKernelEvidence (K : BetheSalpeterKernelPackage) where
  translationInvariantClosed : K.translationInvariant
  lorentzCovariantClosed : K.lorentzCovariant
  singularityStructureClosed : K.singularityStructure

def BetheSalpeterKernelClosed (K : BetheSalpeterKernelPackage) : Prop :=
  K.translationInvariant ∧ K.lorentzCovariant ∧ K.singularityStructure

theorem bethe_salpeter_kernel_closed_from_evidence
    (K : BetheSalpeterKernelPackage) (E : BetheSalpeterKernelEvidence K) :
    BetheSalpeterKernelClosed K := by
  exact And.intro E.translationInvariantClosed (And.intro E.lorentzCovariantClosed E.singularityStructureClosed)

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse