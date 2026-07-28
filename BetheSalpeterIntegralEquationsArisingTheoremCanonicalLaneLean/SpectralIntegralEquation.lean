import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean.BetheSalpeterKernel

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure SpectralIntegralEquationPackage (K : BetheSalpeterKernelPackage) where
  integralEquationForm : Prop
  spectralParametrization : Prop
  uniquenessOfSolution : Prop
  asymptoticBehavior : Prop

structure SpectralIntegralEquationEvidence {K : BetheSalpeterKernelPackage}
    (S : SpectralIntegralEquationPackage K) where
  integralEquationFormClosed : S.integralEquationForm
  spectralParametrizationClosed : S.spectralParametrization
  uniquenessOfSolutionClosed : S.uniquenessOfSolution
  asymptoticBehaviorClosed : S.asymptoticBehavior

def SpectralIntegralEquationClosed {K : BetheSalpeterKernelPackage}
    (S : SpectralIntegralEquationPackage K) : Prop :=
  S.integralEquationForm ∧ S.spectralParametrization ∧
  S.uniquenessOfSolution ∧ S.asymptoticBehavior

theorem spectral_integral_equation_closed_from_evidence {K : BetheSalpeterKernelPackage}
    (S : SpectralIntegralEquationPackage K) (E : SpectralIntegralEquationEvidence S) :
    SpectralIntegralEquationClosed S := by
  exact And.intro E.integralEquationFormClosed
    (And.intro E.spectralParametrizationClosed
      (And.intro E.uniquenessOfSolutionClosed E.asymptoticBehaviorClosed))

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse
