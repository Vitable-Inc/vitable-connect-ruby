# typed: strong

module VitableConnect
  module Models
    class AuthRetrieveMeResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::AuthRetrieveMeResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # The authenticated IdP identity — no persona (no base_user_id / user_type).
      sig { returns(VitableConnect::Models::AuthRetrieveMeResponse::User) }
      attr_reader :user

      sig do
        params(
          user: VitableConnect::Models::AuthRetrieveMeResponse::User::OrHash
        ).void
      end
      attr_writer :user

      sig do
        params(
          user: VitableConnect::Models::AuthRetrieveMeResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The authenticated IdP identity — no persona (no base_user_id / user_type).
        user:
      )
      end

      sig do
        override.returns(
          { user: VitableConnect::Models::AuthRetrieveMeResponse::User }
        )
      end
      def to_hash
      end

      class User < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::AuthRetrieveMeResponse::User,
              VitableConnect::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        sig { returns(String) }
        attr_accessor :idp_provider

        sig { returns(String) }
        attr_accessor :idp_user_id

        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        # The authenticated IdP identity — no persona (no base_user_id / user_type).
        sig do
          params(
            email: String,
            first_name: T.nilable(String),
            idp_provider: String,
            idp_user_id: String,
            last_name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          email:,
          first_name:,
          idp_provider:,
          idp_user_id:,
          last_name:
        )
        end

        sig do
          override.returns(
            {
              email: String,
              first_name: T.nilable(String),
              idp_provider: String,
              idp_user_id: String,
              last_name: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
