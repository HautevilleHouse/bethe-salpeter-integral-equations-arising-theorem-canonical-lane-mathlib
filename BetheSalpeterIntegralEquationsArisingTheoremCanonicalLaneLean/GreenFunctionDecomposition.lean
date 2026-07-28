import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure GreenFunctionDecomposition {K : BetheSalpeterKernelPackage} {Eqp : BetheSalpeterEquationPackage K} (F : IntegralKernelFamily Eqp) where
  freePropagator : Type u
  fullPropagator : Type v
  decompositionFormula : Prop
  spectralRepresentation : Prop
  dressingFunction : Prop

structure GreenFunctionDecompositionEvidence {K : BetheSalpeterKernelPackage} {Eqp : BetheSalpeterEquationPackage K} {F : IntegralKernelFamily Eqp} (G : GreenFunctionDecomposition F) where
  decompositionFormulaClosed : G.decompositionFormula
  spectralRepresentationClosed : G.spectralRepresentation
  dressingFunctionClosed : G.dressingFunction

def GreenFunctionDecompositionClosed {K : BetheSalpeterKernelPackage} {Eqp : BetheSalpeterEquationPackage K} {F : IntegralKernelFamily Eqp} (G : GreenFunctionDecomposition F) : Prop :=
  G.decompositionFormula ∧ G.spectralRepresentation ∧ G.dressingFunction

theorem green_function_decomposition_closed_from_evidence {K : BetheSalpeterKernelPackage} {Eqp : BetheSalpeterEquationPackage K} {F : IntegralKernelFamily Eqp} (G : GreenFunctionDecomposition F) (E : GreenFunctionDecompositionEvidence G) :
    GreenFunctionDecompositionClosed G := by
  exact And.intro E.decompositionFormulaClosed (And.intro E.spectralRepresentationClosed E.dressingFunctionClosed)

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse