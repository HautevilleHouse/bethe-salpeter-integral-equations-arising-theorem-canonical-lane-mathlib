import canonicalLaneMathlib.AdmissibleClass
import BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean.BetheSalpeterAdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

def BetheSalpeterWitnessClosed (O : BetheSalpeterAdmittedObject) : Prop :=
  O.integralEquationSatisfied ∧ O.boundStateCondition ∧ O.scatteringSolution

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BetheSalpeterWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse