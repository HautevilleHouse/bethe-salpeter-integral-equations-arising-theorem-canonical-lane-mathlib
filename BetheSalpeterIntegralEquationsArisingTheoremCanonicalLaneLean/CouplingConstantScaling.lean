import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure CouplingConstantScalingPackage where
  betaFunctionDefined : Prop
  fixedPointExists : Prop
  scalingDimension : Prop
  renormalizationGroupFlow : Prop

structure CouplingConstantScalingEvidence (C : CouplingConstantScalingPackage) where
  betaFunctionDefinedClosed : C.betaFunctionDefined
  fixedPointExistsClosed : C.fixedPointExists
  scalingDimensionClosed : C.scalingDimension
  renormalizationGroupFlowClosed : C.renormalizationGroupFlow

def CouplingConstantScalingClosed (C : CouplingConstantScalingPackage) : Prop :=
  C.betaFunctionDefined ∧ C.fixedPointExists ∧ C.scalingDimension ∧ C.renormalizationGroupFlow

theorem coupling_constant_scaling_closed_from_evidence (C : CouplingConstantScalingPackage)
    (E : CouplingConstantScalingEvidence C) : CouplingConstantScalingClosed C := by
  exact And.intro E.betaFunctionDefinedClosed
    (And.intro E.fixedPointExistsClosed
      (And.intro E.scalingDimensionClosed E.renormalizationGroupFlowClosed))

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse