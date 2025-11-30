# typed: strong

module VitableConnectAPI
  module Models
    module Members
      class DependentListParams < VitableConnectAPI::Internal::Type::BaseModel
        extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
        include VitableConnectAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              VitableConnectAPI::Members::DependentListParams,
              VitableConnectAPI::Internal::AnyHash
            )
          end

        # Filter by active status
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :active_in

        sig { params(active_in: T::Boolean).void }
        attr_writer :active_in

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

        # Filter by relationship type
        sig do
          returns(T.nilable(VitableConnectAPI::Members::Relationship::OrSymbol))
        end
        attr_reader :relationship

        sig do
          params(
            relationship: VitableConnectAPI::Members::Relationship::OrSymbol
          ).void
        end
        attr_writer :relationship

        sig do
          params(
            active_in: T::Boolean,
            limit: Integer,
            page: Integer,
            relationship: VitableConnectAPI::Members::Relationship::OrSymbol,
            request_options: VitableConnectAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by active status
          active_in: nil,
          # Items per page (default: 20, max: 100)
          limit: nil,
          # Page number (default: 1)
          page: nil,
          # Filter by relationship type
          relationship: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              active_in: T::Boolean,
              limit: Integer,
              page: Integer,
              relationship: VitableConnectAPI::Members::Relationship::OrSymbol,
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
