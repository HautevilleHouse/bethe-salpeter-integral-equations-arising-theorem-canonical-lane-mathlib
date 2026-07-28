import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure IntegralKernelFamily {K : BetheSalpeterKernelPackage} (Eqp : BetheSalpeterEquationPackage K) where
  kernelFamily : Type u
  indexSet : Type v
  analyticContinuation : Prop
  meromorphicStructure : Prop
  poleLocation : Prop
  residueCondition : Prop

structure IntegralKernelFamilyEvidence {K : BetheSalpeterKernelPackage} {Eqp : BetheSalpeterEquationPackage K} (F : IntegralKernelFamily Eqp) where
  analyticContinuationClosed : F.analyticContinuation
  meromorphicStructureClosed : F.meromorphicStructure
  poleLocationClosed : F.poleLocation
  residueConditionClosed : F.residueCondition

def IntegralKernelFamilyClosed {K : BetheSalpeterKernelPackage} {Eqp : BetheSalpeterEquationPackage K} (F : IntegralKernelFamily Eqp) : Prop :=
  F.analyticContinuation ∧ F.meromorphicStructure ∧ F.poleLocation ∧ F.residueCondition

theorem integral_kernel_family_closed_from_evidence {K : BetheSalpeterKernelPackage} {Eqp : BetheSalpeterEquationPackage K} (F : IntegralKernelFamily Eqp) (E : IntegralKernelFamilyEvidence F) :
    IntegralKernelFamilyClosed F := by
  exact And.intro E.analyticContinuationClosed (And.intro E.meromorphicStructureClosed (And.intro E.poleLocationClosed E.residueConditionClosed))

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse