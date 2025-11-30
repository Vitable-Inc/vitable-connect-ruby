# typed: strong

module VitableConnectAPI
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
        extend VitableConnectAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, VitableConnectAPI::Members::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MARRIAGE =
          T.let(:Marriage, VitableConnectAPI::Members::EventType::TaggedSymbol)
        BIRTH =
          T.let(:Birth, VitableConnectAPI::Members::EventType::TaggedSymbol)
        ADOPTION =
          T.let(:Adoption, VitableConnectAPI::Members::EventType::TaggedSymbol)
        DIVORCE =
          T.let(:Divorce, VitableConnectAPI::Members::EventType::TaggedSymbol)
        DEATH =
          T.let(:Death, VitableConnectAPI::Members::EventType::TaggedSymbol)
        JOB_LOSS =
          T.let(
            :"Job Loss",
            VitableConnectAPI::Members::EventType::TaggedSymbol
          )
        REDUCTION_IN_HOURS =
          T.let(
            :"Reduction In Hours",
            VitableConnectAPI::Members::EventType::TaggedSymbol
          )
        EMPLOYER_BANKRUPTCY =
          T.let(
            :"Employer Bankruptcy",
            VitableConnectAPI::Members::EventType::TaggedSymbol
          )
        MEDICARE_ENTITLEMENT =
          T.let(
            :"Medicare Entitlement",
            VitableConnectAPI::Members::EventType::TaggedSymbol
          )
        TERMINATION =
          T.let(
            :Termination,
            VitableConnectAPI::Members::EventType::TaggedSymbol
          )
        OTHER =
          T.let(:Other, VitableConnectAPI::Members::EventType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[VitableConnectAPI::Members::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
