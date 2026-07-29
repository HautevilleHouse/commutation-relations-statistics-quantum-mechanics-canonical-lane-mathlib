import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean

structure HilbertSpace where
  carrier : Type
  inner : carrier → carrier → ℂ
  complete : Prop
  separable : Prop

structure State where
  carrier : HilbertSpace
  vector : carrier.carrier
  norm : ℂ
  normOne : norm = 1

definitionObservable (H : HilbertSpace) : Type := H.carrier → ℂ

structure CommutationRelation (A B : Observable) where
  commutator : Observable
  value : ℂ

end CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean
end HautevilleHouse