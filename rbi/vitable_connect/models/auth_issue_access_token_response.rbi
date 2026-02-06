# typed: strong

module VitableConnect
  module Models
    class AuthIssueAccessTokenResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::AuthIssueAccessTokenResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # The issued access token (vit*at*\*)
      sig { returns(String) }
      attr_accessor :access_token

      # Token lifetime in seconds
      sig { returns(Integer) }
      attr_accessor :expires_in

      # Token type, always 'Bearer'
      sig { returns(String) }
      attr_accessor :token_type

      # Entity the token is bound to, if any
      sig do
        returns(
          T.nilable(
            VitableConnect::Models::AuthIssueAccessTokenResponse::BoundEntity
          )
        )
      end
      attr_reader :bound_entity

      sig do
        params(
          bound_entity:
            T.nilable(
              VitableConnect::Models::AuthIssueAccessTokenResponse::BoundEntity::OrHash
            )
        ).void
      end
      attr_writer :bound_entity

      sig do
        params(
          access_token: String,
          expires_in: Integer,
          token_type: String,
          bound_entity:
            T.nilable(
              VitableConnect::Models::AuthIssueAccessTokenResponse::BoundEntity::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # The issued access token (vit*at*\*)
        access_token:,
        # Token lifetime in seconds
        expires_in:,
        # Token type, always 'Bearer'
        token_type:,
        # Entity the token is bound to, if any
        bound_entity: nil
      )
      end

      sig do
        override.returns(
          {
            access_token: String,
            expires_in: Integer,
            token_type: String,
            bound_entity:
              T.nilable(
                VitableConnect::Models::AuthIssueAccessTokenResponse::BoundEntity
              )
          }
        )
      end
      def to_hash
      end

      class BoundEntity < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::AuthIssueAccessTokenResponse::BoundEntity,
              VitableConnect::Internal::AnyHash
            )
          end

        # Prefixed entity ID the token is bound to (empr*\* or empl*\*)
        sig { returns(String) }
        attr_accessor :id

        # - `employer` - employer
        # - `employee` - employee
        sig { returns(VitableConnect::Type::TaggedSymbol) }
        attr_accessor :type

        # Entity the token is bound to, if any
        sig do
          params(id: String, type: VitableConnect::Type::OrSymbol).returns(
            T.attached_class
          )
        end
        def self.new(
          # Prefixed entity ID the token is bound to (empr*\* or empl*\*)
          id:,
          # - `employer` - employer
          # - `employee` - employee
          type:
        )
        end

        sig do
          override.returns(
            { id: String, type: VitableConnect::Type::TaggedSymbol }
          )
        end
        def to_hash
        end
      end
    end
  end
end
