# typed: strong

module VitableConnect
  module Models
    module Members
      class QualifyingLifeEventRecordParams < VitableConnect::Internal::Type::BaseModel
        extend VitableConnect::Internal::Type::RequestParameters::Converter
        include VitableConnect::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Members::QualifyingLifeEventRecordParams,
              VitableConnect::Internal::AnyHash
            )
          end

        # Unique member identifier (mbr\_\*)
        sig { returns(String) }
        attr_accessor :member_id

        # Date when the event occurred
        sig { returns(Date) }
        attr_accessor :event_date

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
        sig { returns(VitableConnect::Members::EventType::OrSymbol) }
        attr_accessor :event_type

        # Optional notes about the event
        sig { returns(T.nilable(String)) }
        attr_accessor :notes

        sig do
          params(
            member_id: String,
            event_date: Date,
            event_type: VitableConnect::Members::EventType::OrSymbol,
            notes: T.nilable(String),
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique member identifier (mbr\_\*)
          member_id:,
          # Date when the event occurred
          event_date:,
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
          event_type:,
          # Optional notes about the event
          notes: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              member_id: String,
              event_date: Date,
              event_type: VitableConnect::Members::EventType::OrSymbol,
              notes: T.nilable(String),
              request_options: VitableConnect::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
