import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean

structure UncertaintyCertificate where
  state : State
  observables : Observable × Observable
  commutatorBound : ℂ
  inequality : ℝ ≥ 0
  gateClosed : inequality = true

definitionUncertaintyGate (A : AdmissibleClass) : Prop :=
  ∃ (cert : UncertaintyCertificate), cert.gateClosed

theorem uncertaintyGateClosed (A : AdmissibleClass) : definitionUncertaintyGate A := by
  refine ⟨?_, ?_⟩
  · exact ⟨?_, ?_, ?_, ?_, ?_⟩
  · exact rfl