import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure BetheSalpeterKernelPackage where
  kernelType : Type u
  momentumSpace : Type v
  integralOperator : Type w
  kernelRegularity : Prop
  symmetryCondition : Prop
  integralBoundedness : Prop

structure BetheSalpeterKernelEvidence (K : BetheSalpeterKernelPackage) where
  kernelRegularityClosed : K.kernelRegularity
  symmetryConditionClosed : K.symmetryCondition
  integralBoundednessClosed : K.integralBoundedness

def BetheSalpeterKernelClosed (K : BetheSalpeterKernelPackage) : Prop :=
  K.kernelRegularity ∧ K.symmetryCondition ∧ K.integralBoundedness

theorem bethe_salpeter_kernel_closed_from_evidence (K : BetheSalpeterKernelPackage) (E : BetheSalpeterKernelEvidence K) :
    BetheSalpeterKernelClosed K := by
  exact And.intro E.kernelRegularityClosed (And.intro E.symmetryConditionClosed E.integralBoundednessClosed)

structure BetheSalpeterEquationPackage (K : BetheSalpeterKernelPackage) where
  homogeneousEquation : Prop
  inhomogeneousEquation : Prop
  boundStateCondition : Prop
  spectralParameter : Type u
  spectralParameterDomain : Prop
  equationWellDefined : Prop

structure BetheSalpeterEquationEvidence {K : BetheSalpeterKernelPackage} (Eqp : BetheSalpeterEquationPackage K) where
  homogeneousEquationClosed : Eqp.homogeneousEquation
  inhomogeneousEquationClosed : Eqp.inhomogeneousEquation
  boundStateConditionClosed : Eqp.boundStateCondition
  spectralParameterDomainClosed : Eqp.spectralParameterDomain
  equationWellDefinedClosed : Eqp.equationWellDefined

def BetheSalpeterEquationClosed {K : BetheSalpeterKernelPackage} (Eqp : BetheSalpeterEquationPackage K) : Prop :=
  Eqp.homogeneousEquation ∧ Eqp.inhomogeneousEquation ∧ Eqp.boundStateCondition ∧ Eqp.spectralParameterDomain ∧ Eqp.equationWellDefined

theorem bethe_salpeter_equation_closed_from_evidence {K : BetheSalpeterKernelPackage} (Eqp : BetheSalpeterEquationPackage K) (E : BetheSalpeterEquationEvidence Eqp) :
    BetheSalpeterEquationClosed Eqp := by
  exact And.intro E.homogeneousEquationClosed (And.intro E.inhomogeneousEquationClosed (And.intro E.boundStateConditionClosed (And.intro E.spectralParameterDomainClosed E.equationWellDefinedClosed)))

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse