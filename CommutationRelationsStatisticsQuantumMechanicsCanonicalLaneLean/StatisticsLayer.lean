import HautevilleHouse.CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean.StateSpaceLayer

namespace HautevilleHouse
namespace CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean

inductive ParticleType
| boson
| fermion

structure Statistics where
  particleType : ParticleType
  commutationSign : Int

structure FockSpace where
  nParticleSpaces : Nat → Type
  creationOperator : (n : Nat) → nParticleSpaces n → nParticleSpaces (n+1)
  annihilationOperator : (n : Nat) → nParticleSpaces n → nParticleSpaces (n-1)

def canonicalCommutation (s : Statistics) : Prop :=
  s.commutationSign = 1

def canonicalAnticommutation (s : Statistics) : Prop :=
  s.commutationSign = -1

theorem statistics_bridge (s : Statistics) : Prop :=
  s.particleType = ParticleType.boson → canonicalCommutation s

end CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean
end HautevilleHouse