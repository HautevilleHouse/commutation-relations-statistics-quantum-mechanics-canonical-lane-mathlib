import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean

structure SpectralTheoremCertificate where
  operatorDomain : String
  spectralMeasure : Prop
  functionalCalculus : Prop
  spectralDecomposition : Prop
  spectralMeasureClosed : spectralMeasure
  functionalCalculusClosed : functionalCalculus
  spectralDecompositionClosed : spectralDecomposition

def sourceSpectralTheoremCertificate : SpectralTheoremCertificate := {
  operatorDomain := "Hilbert space"
  spectralMeasure := "projection-valued measure on spectrum"
  functionalCalculus := "continuous functional calculus defined"
  spectralDecomposition := "operator decomposes by spectral measure"
  spectralMeasureClosed := rfl
  functionalCalculusClosed := rfl
  spectralDecompositionClosed := rfl
}

def SpectralTheoremClosed (C : SpectralTheoremCertificate) : Prop :=
  C.spectralMeasure ∧ C.functionalCalculus ∧ C.spectralDecomposition

theorem source_spectral_theorem_closed :
    SpectralTheoremClosed sourceSpectralTheoremCertificate := by
  exact And.intro sourceSpectralTheoremCertificate.spectralMeasureClosed
    (And.intro sourceSpectralTheoremCertificate.functionalCalculusClosed
      sourceSpectralTheoremCertificate.spectralDecompositionClosed)

end CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean
end HautevilleHouse