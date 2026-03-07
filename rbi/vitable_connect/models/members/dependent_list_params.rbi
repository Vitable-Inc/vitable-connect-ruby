# typed: strong

module VitableConnect
  module Models
    module Members
      class DependentListParams < VitableConnect::Internal::Type::BaseModel
        extend VitableConnect::Internal::Type::RequestParameters::Converter
        include VitableConnect::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Members::DependentListParams,
              VitableConnect::Internal::AnyHash
            )
          end

        # Unique member identifier (mbr\_\*)
        sig { returns(String) }
        attr_accessor :member_id

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
          returns(T.nilable(VitableConnect::Members::Relationship::OrSymbol))
        end
        attr_reader :relationship

        sig do
          params(
            relationship: VitableConnect::Members::Relationship::OrSymbol
          ).void
        end
        attr_writer :relationship

        sig do
          params(
            member_id: String,
            active_in: T::Boolean,
            limit: Integer,
            page: Integer,
            relationship: VitableConnect::Members::Relationship::OrSymbol,
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique member identifier (mbr\_\*)
          member_id:,
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
              member_id: String,
              active_in: T::Boolean,
              limit: Integer,
              page: Integer,
              relationship: VitableConnect::Members::Relationship::OrSymbol,
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
