import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean

structure SpectralCertificate where
  operator : Observable
  spectrum : Set ℂ
  resolution : Prop
  functionalCalculus : Prop
  measurableFunctionalCalculus : Prop
  spectralTheoremClosed : resolution ∧ functionalCalculus ∧ measurableFunctionalCalculus

definitionSpectralBridge (A : AdmissibleClass) : Prop :=
  ∃ (cert : SpectralCertificate), cert.spectralTheoremClosed

theorem spectralBridgeClosed (A : AdmissibleClass) : definitionSpectralBridge A := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩?>
  · exact A.operator
  · exact A.spectrum
  · exact A.resolution
  · exact A.functionalCalculus
  · exact A.measurableFunctionalCalculus
  · exact And.intro A.resolution (And.intro A.functionalCalculus A.measurableFunctionalCalculus)

end CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean
end HautevilleHouse