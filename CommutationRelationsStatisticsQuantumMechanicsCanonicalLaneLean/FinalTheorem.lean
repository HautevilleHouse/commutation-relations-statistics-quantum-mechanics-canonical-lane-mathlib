import canonicalLaneMathlib.AdmissibleClass
import QuantumStateSpace
import SpectralTheoremBridge
import UncertaintyPrincipleGate

namespace HautevilleHouse
namespace CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  definitionSpectralBridge A ∧ definitionUncertaintyGate A

theorem constrained_theorem_closure (A : AdmissibleClass) : ConstrainedTheoremClosure A := by
  exact And.intro (spectralBridgeClosed A) (uncertaintyGateClosed A)

end CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean
end HautevilleHouse