import BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean.BetheSalpeterKernel

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure BetheSalpeterEquationPackage (G : BetheSalpeterKernelPackage) where
  timeVariable : Type u
  wavefunction : Type v
  integralEquation : Prop
  boundStateCondition : Prop
  uniquenessOfSolution : Prop

structure BetheSalpeterEquationEvidence {G : BetheSalpeterKernelPackage}
    (F : BetheSalpeterEquationPackage G) where
  integralEquationClosed : F.integralEquation
  boundStateConditionClosed : F.boundStateCondition
  uniquenessOfSolutionClosed : F.uniquenessOfSolution

def BetheSalpeterEquationClosed {G : BetheSalpeterKernelPackage}
    (F : BetheSalpeterEquationPackage G) : Prop :=
  F.integralEquation ∧ F.boundStateCondition ∧ F.uniquenessOfSolution

theorem bethe_salpeter_equation_closed_from_evidence
    {G : BetheSalpeterKernelPackage} (F : BetheSalpeterEquationPackage G)
    (E : BetheSalpeterEquationEvidence F) : BetheSalpeterEquationClosed F := by
  exact And.intro E.integralEquationClosed
    (And.intro E.boundStateConditionClosed E.uniquenessOfSolutionClosed)

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse
