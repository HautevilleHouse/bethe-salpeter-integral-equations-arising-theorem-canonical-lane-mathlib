import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BetheSalpeterAdmittedObject where
  kernelType : Type u
  propagatorType : Type v
  amplitudeType : Type w
  integralEquationSatisfied : Prop
  boundStateCondition : Prop
  scatteringSolution : Prop
  conclusion : integralEquationSatisfied ∧ boundStateCondition ∧ scatteringSolution

structure AdmissibleClass where
  object : BetheSalpeterAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BetheSalpeterWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BetheSalpeterIntegralEquationsArisingTheoremCanonicalLaneLean
end HautevilleHouse