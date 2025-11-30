# typed: strong

module VitableConnectAPI
  module Models
    module Members
      class QualifyingLifeEventRecordParams < VitableConnectAPI::Internal::Type::BaseModel
        extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
        include VitableConnectAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              VitableConnectAPI::Members::QualifyingLifeEventRecordParams,
              VitableConnectAPI::Internal::AnyHash
            )
          end

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
        sig { returns(VitableConnectAPI::Members::EventType::OrSymbol) }
        attr_accessor :event_type

        # Optional notes about the event
        sig { returns(T.nilable(String)) }
        attr_accessor :notes

        sig do
          params(
            event_date: Date,
            event_type: VitableConnectAPI::Members::EventType::OrSymbol,
            notes: T.nilable(String),
            request_options: VitableConnectAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
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
              event_date: Date,
              event_type: VitableConnectAPI::Members::EventType::OrSymbol,
              notes: T.nilable(String),
              request_options: VitableConnectAPI::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
