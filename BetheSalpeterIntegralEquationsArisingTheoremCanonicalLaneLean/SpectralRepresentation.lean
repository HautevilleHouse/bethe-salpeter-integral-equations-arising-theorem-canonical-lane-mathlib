import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

structure SpectralRepresentationPackage where
  spectralFunctionDefined : Prop
  lehmannRepresentation : Prop
  sumRuleSatisfied : Prop
  positivityCondition : Prop

structure SpectralRepresentationEvidence (S : SpectralRepresentationPackage) where
  spectralFunctionDefinedClosed : S.spectralFunctionDefined
  lehmannRepresentationClosed : S.lehmannRepresentation
  sumRuleSatisfiedClosed : S.sumRuleSatisfied
  positivityConditionClosed : S.positivityCondition

def SpectralRepresentationClosed (S : SpectralRepresentationPackage) : Prop :=
  S.spectralFunctionDefined ∧ S.lehmannRepresentation ∧ S.sumRuleSatisfied ∧ S.positivityCondition

theorem spectral_representation_closed_from_evidence (S : SpectralRepresentationPackage)
    (E : SpectralRepresentationEvidence S) : SpectralRepresentationClosed S := by
  exact And.intro E.spectralFunctionDefinedClosed
    (And.intro E.lehmannRepresentationClosed
      (And.intro E.sumRuleSatisfiedClosed E.positivityConditionClosed))

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse