# typed: strong

module VitableConnect
  module Models
    module Members
      # - `Marriage` - Marriage
      # - `Birth` - Birth
      # - `Adoption` - Adoption
      # - `Divorce` - Divorce
      # - `Death` - Death
      # - `Job Loss` - Job Loss
      # - `Reduction In Hours` - Reduction In Hours
      # - `Employer Bankruptcy` - Employer Bankruptcy
      # - `Medicare Entitlement` - Medicare Entitlement
      # - `Termination` - Termination
      # - `Other` - Other
      module EventType
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, VitableConnect::Members::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MARRIAGE =
          T.let(:Marriage, VitableConnect::Members::EventType::TaggedSymbol)
        BIRTH = T.let(:Birth, VitableConnect::Members::EventType::TaggedSymbol)
        ADOPTION =
          T.let(:Adoption, VitableConnect::Members::EventType::TaggedSymbol)
        DIVORCE =
          T.let(:Divorce, VitableConnect::Members::EventType::TaggedSymbol)
        DEATH = T.let(:Death, VitableConnect::Members::EventType::TaggedSymbol)
        JOB_LOSS =
          T.let(:"Job Loss", VitableConnect::Members::EventType::TaggedSymbol)
        REDUCTION_IN_HOURS =
          T.let(
            :"Reduction In Hours",
            VitableConnect::Members::EventType::TaggedSymbol
          )
        EMPLOYER_BANKRUPTCY =
          T.let(
            :"Employer Bankruptcy",
            VitableConnect::Members::EventType::TaggedSymbol
          )
        MEDICARE_ENTITLEMENT =
          T.let(
            :"Medicare Entitlement",
            VitableConnect::Members::EventType::TaggedSymbol
          )
        TERMINATION =
          T.let(:Termination, VitableConnect::Members::EventType::TaggedSymbol)
        OTHER = T.let(:Other, VitableConnect::Members::EventType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[VitableConnect::Members::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
