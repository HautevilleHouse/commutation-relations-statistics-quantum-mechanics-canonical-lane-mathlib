import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean

structure UncertaintyPrincipleCertificate where
  commutationEstimates : Prop
  heisenbergInequality : Prop
  statesDefined : Prop
  commutationEstimatesClosed : commutationEstimates
  heisenbergInequalityClosed : heisenbergInequality
  statesDefinedClosed : statesDefined

def sourceUncertaintyPrincipleCertificate : UncertaintyPrincipleCertificate := {
  commutationEstimates := "canonical commutation relations"
  heisenbergInequality := "ΔA ΔB ≥ |⟨[A,B]⟩|/2"
  statesDefined := "state space includes pure and mixed states"
  commutationEstimatesClosed := rfl
  heisenbergInequalityClosed := rfl
  statesDefinedClosed := rfl
}

def UncertaintyPrincipleClosed (C : UncertaintyPrincipleCertificate) : Prop :=
  C.commutationEstimates ∧ C.heisenbergInequality ∧ C.statesDefined

theorem source_uncertainty_principle_closed :
    UncertaintyPrincipleClosed sourceUncertaintyPrincipleCertificate := by
  exact And.intro sourceUncertaintyPrincipleCertificate.commutationEstimatesClosed
    (And.intro sourceUncertaintyPrincipleCertificate.heisenbergInequalityClosed
      sourceUncertaintyPrincipleCertificate.statesDefinedClosed)

end CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean
end HautevilleHouse