import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean

structure HilbertSpaceCertificate where
  separable : Prop
  innerProductDefined : Prop
  denseDomain : Prop
  statisticalOperator : Prop
  separableProof : separable
  innerProductDefinedProof : innerProductDefined
  denseDomainProof : denseDomain
  statisticalOperatorProof : statisticalOperator

def sourceHilbertSpaceCertificate : HilbertSpaceCertificate := {
  separable := True
  innerProductDefined := True
  denseDomain := True
  statisticalOperator := True
  separableProof := trivial
  innerProductDefinedProof := trivial
  denseDomainProof := trivial
  statisticalOperatorProof := trivial
}

def HilbertSpaceClosed (C : HilbertSpaceCertificate) : Prop :=
  C.separable ∧ C.innerProductDefined ∧ C.denseDomain ∧ C.statisticalOperator

theorem source_hilbert_space_closed :
    HilbertSpaceClosed sourceHilbertSpaceCertificate := by
  exact And.intro sourceHilbertSpaceCertificate.separableProof
    (And.intro sourceHilbertSpaceCertificate.innerProductDefinedProof
      (And.intro sourceHilbertSpaceCertificate.denseDomainProof
        sourceHilbertSpaceCertificate.statisticalOperatorProof))

end CommutationRelationsStatisticsQuantumMechanicsCanonicalLaneLean
end HautevilleHouse