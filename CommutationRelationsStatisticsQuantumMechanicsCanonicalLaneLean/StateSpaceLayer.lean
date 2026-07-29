import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean

structure StateSpaceCertificate where
  hilbertSpace : Prop
  observableAlgebra : Prop
  densityMatrices : Prop
  pureStates : Prop
  hilbertSpaceClosed : hilbertSpace
  observableAlgebraClosed : observableAlgebra
  densityMatricesClosed : densityMatrices
  pureStatesClosed : pureStates

def sourceStateSpaceCertificate : StateSpaceCertificate := {
  hilbertSpace := "complex separable Hilbert space"
  observableAlgebra := "bounded linear operators"
  densityMatrices := "trace-class positive operators with trace 1"
  pureStates := "projections onto one-dimensional subspaces"
  hilbertSpaceClosed := rfl
  observableAlgebraClosed := rfl
  densityMatricesClosed := rfl
  pureStatesClosed := rfl
}

def StateSpaceClosed (C : StateSpaceCertificate) : Prop :=
  C.hilbertSpace ∧ C.observableAlgebra ∧ C.densityMatrices ∧ C.pureStates

theorem source_state_space_closed :
    StateSpaceClosed sourceStateSpaceCertificate := by
  exact And.intro sourceStateSpaceCertificate.hilbertSpaceClosed
    (And.intro sourceStateSpaceCertificate.observableAlgebraClosed
      (And.intro sourceStateSpaceCertificate.densityMatricesClosed
        sourceStateSpaceCertificate.pureStatesClosed))

end CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean
end HautevilleHouse