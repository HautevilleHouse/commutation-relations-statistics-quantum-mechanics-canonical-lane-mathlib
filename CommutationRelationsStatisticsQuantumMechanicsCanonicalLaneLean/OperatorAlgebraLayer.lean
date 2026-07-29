import HautevilleHouse.CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean

structure CCRAlgebra where
  generators : Nat → Type
  star : (n : Nat) → generators n → generators n
  commutation : (n m : Nat) → generators n → generators m → (generators (n+m) → generators (n+m))
  heisenbergRelation : (i j : Nat) → commutation i j (star i (generators i 0)) (generators j 0) = 0

def standardCCR : CCRAlgebra := {
  generators := λ n => ℝ,
  star := λ n x => x,
  commutation := λ n m x y => λ z => x * y - y * x,
  heisenbergRelation := λ i j => by
    intro; simp
}

theorem ccr_commutation_bridge (A : CCRAlgebra) : Prop :=
  ∀ n m, ∀ x : A.generators n, ∀ y : A.generators m,
    A.commutation n m x y = 0

end CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean
end HautevilleHouse