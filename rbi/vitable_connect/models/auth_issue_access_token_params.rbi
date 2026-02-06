# typed: strong

module VitableConnect
  module Models
    class AuthIssueAccessTokenParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::AuthIssueAccessTokenParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # - `client_credentials` - client_credentials
      sig do
        returns(VitableConnect::AuthIssueAccessTokenParams::GrantType::OrSymbol)
      end
      attr_accessor :grant_type

      # Optional entity to bind the token to for scoped access
      sig do
        returns(
          T.nilable(VitableConnect::AuthIssueAccessTokenParams::BoundEntity)
        )
      end
      attr_reader :bound_entity

      sig do
        params(
          bound_entity:
            T.nilable(
              VitableConnect::AuthIssueAccessTokenParams::BoundEntity::OrHash
            )
        ).void
      end
      attr_writer :bound_entity

      sig do
        params(
          grant_type:
            VitableConnect::AuthIssueAccessTokenParams::GrantType::OrSymbol,
          bound_entity:
            T.nilable(
              VitableConnect::AuthIssueAccessTokenParams::BoundEntity::OrHash
            ),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # - `client_credentials` - client_credentials
        grant_type:,
        # Optional entity to bind the token to for scoped access
        bound_entity: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            grant_type:
              VitableConnect::AuthIssueAccessTokenParams::GrantType::OrSymbol,
            bound_entity:
              T.nilable(
                VitableConnect::AuthIssueAccessTokenParams::BoundEntity
              ),
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end

      # - `client_credentials` - client_credentials
      module GrantType
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnect::AuthIssueAccessTokenParams::GrantType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLIENT_CREDENTIALS =
          T.let(
            :client_credentials,
            VitableConnect::AuthIssueAccessTokenParams::GrantType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::AuthIssueAccessTokenParams::GrantType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class BoundEntity < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::AuthIssueAccessTokenParams::BoundEntity,
              VitableConnect::Internal::AnyHash
            )
          end

        # Prefixed entity ID to bind the token to (empr*\* for employer, empl*\* for
        # employee)
        sig { returns(String) }
        attr_accessor :id

        # - `employer` - employer
        # - `employee` - employee
        sig { returns(VitableConnect::Type::OrSymbol) }
        attr_accessor :type

        # Optional entity to bind the token to for scoped access
        sig do
          params(id: String, type: VitableConnect::Type::OrSymbol).returns(
            T.attached_class
          )
        end
        def self.new(
          # Prefixed entity ID to bind the token to (empr*\* for employer, empl*\* for
          # employee)
          id:,
          # - `employer` - employer
          # - `employee` - employee
          type:
        )
        end

        sig do
          override.returns({ id: String, type: VitableConnect::Type::OrSymbol })
        end
        def to_hash
        end
      end
    end
  end
end
