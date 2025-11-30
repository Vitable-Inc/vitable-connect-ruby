# typed: strong

module VitableConnectAPI
  module Models
    module Members
      class QualifyingLifeEventListParams < VitableConnectAPI::Internal::Type::BaseModel
        extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
        include VitableConnectAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              VitableConnectAPI::Members::QualifyingLifeEventListParams,
              VitableConnectAPI::Internal::AnyHash
            )
          end

        # Filter by QLE type
        sig do
          returns(T.nilable(VitableConnectAPI::Members::EventType::OrSymbol))
        end
        attr_reader :event_type

        sig do
          params(
            event_type: VitableConnectAPI::Members::EventType::OrSymbol
          ).void
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
              VitableConnectAPI::Members::QualifyingLifeEventStatus::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              VitableConnectAPI::Members::QualifyingLifeEventStatus::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            event_type: VitableConnectAPI::Members::EventType::OrSymbol,
            limit: Integer,
            page: Integer,
            status:
              VitableConnectAPI::Members::QualifyingLifeEventStatus::OrSymbol,
            request_options: VitableConnectAPI::RequestOptions::OrHash
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
              event_type: VitableConnectAPI::Members::EventType::OrSymbol,
              limit: Integer,
              page: Integer,
              status:
                VitableConnectAPI::Members::QualifyingLifeEventStatus::OrSymbol,
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
