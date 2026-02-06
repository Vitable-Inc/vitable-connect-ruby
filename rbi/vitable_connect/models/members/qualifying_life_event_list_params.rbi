# typed: strong

module VitableConnect
  module Models
    module Members
      class QualifyingLifeEventListParams < VitableConnect::Internal::Type::BaseModel
        extend VitableConnect::Internal::Type::RequestParameters::Converter
        include VitableConnect::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Members::QualifyingLifeEventListParams,
              VitableConnect::Internal::AnyHash
            )
          end

        # Filter by QLE type
        sig { returns(T.nilable(VitableConnect::Members::EventType::OrSymbol)) }
        attr_reader :event_type

        sig do
          params(event_type: VitableConnect::Members::EventType::OrSymbol).void
        end
        attr_writer :event_type

        # Items per page (default: 20, max: 100)
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Page number (default: 1)
        sig { returns(T.nilable(Integer)) }
        attr_reader :page

        sig { params(page: Integer).void }
        attr_writer :page

        # Filter by QLE status
        sig do
          returns(
            T.nilable(
              VitableConnect::Members::QualifyingLifeEventStatus::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: VitableConnect::Members::QualifyingLifeEventStatus::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            event_type: VitableConnect::Members::EventType::OrSymbol,
            limit: Integer,
            page: Integer,
            status:
              VitableConnect::Members::QualifyingLifeEventStatus::OrSymbol,
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by QLE type
          event_type: nil,
          # Items per page (default: 20, max: 100)
          limit: nil,
          # Page number (default: 1)
          page: nil,
          # Filter by QLE status
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              event_type: VitableConnect::Members::EventType::OrSymbol,
              limit: Integer,
              page: Integer,
              status:
                VitableConnect::Members::QualifyingLifeEventStatus::OrSymbol,
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
