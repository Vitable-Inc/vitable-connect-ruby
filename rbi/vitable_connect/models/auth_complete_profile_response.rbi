# typed: strong

module VitableConnect
  module Models
    class AuthCompleteProfileResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::AuthCompleteProfileResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(VitableConnect::Models::AuthCompleteProfileResponse::User) }
      attr_reader :user

      sig do
        params(
          user:
            VitableConnect::Models::AuthCompleteProfileResponse::User::OrHash
        ).void
      end
      attr_writer :user

      sig do
        params(
          user:
            VitableConnect::Models::AuthCompleteProfileResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(user:)
      end

      sig do
        override.returns(
          { user: VitableConnect::Models::AuthCompleteProfileResponse::User }
        )
      end
      def to_hash
      end

      class User < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::AuthCompleteProfileResponse::User,
              VitableConnect::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :base_user_id

        sig { returns(String) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_accessor :first_name

        # - `workos` - WorkOS
        # - `vitable` - Vitable
        sig do
          returns(
            VitableConnect::Models::AuthCompleteProfileResponse::User::IdpProvider::TaggedSymbol
          )
        end
        attr_accessor :idp_provider

        sig { returns(String) }
        attr_accessor :idp_user_id

        sig { returns(T.nilable(String)) }
        attr_accessor :last_name

        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        # - `Member` - Member
        # - `NursePractitioner` - Provider
        # - `CompanyAdmin` - Company Admin
        # - `VitableAdmin` - Vitable Admin
        # - `ClinicalAdmin` - Clinical Admin
        # - `PartnerEmployee` - Partner Employee
        # - `OrganizationUser` - Organization User
        # - `ExternalAdmin` - External Admin
        sig do
          returns(
            VitableConnect::Models::AuthCompleteProfileResponse::User::UserType::TaggedSymbol
          )
        end
        attr_accessor :user_type

        sig do
          params(
            base_user_id: String,
            email: String,
            first_name: T.nilable(String),
            idp_provider:
              VitableConnect::Models::AuthCompleteProfileResponse::User::IdpProvider::OrSymbol,
            idp_user_id: String,
            last_name: T.nilable(String),
            phone: T.nilable(String),
            user_type:
              VitableConnect::Models::AuthCompleteProfileResponse::User::UserType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          base_user_id:,
          email:,
          first_name:,
          # - `workos` - WorkOS
          # - `vitable` - Vitable
          idp_provider:,
          idp_user_id:,
          last_name:,
          phone:,
          # - `Member` - Member
          # - `NursePractitioner` - Provider
          # - `CompanyAdmin` - Company Admin
          # - `VitableAdmin` - Vitable Admin
          # - `ClinicalAdmin` - Clinical Admin
          # - `PartnerEmployee` - Partner Employee
          # - `OrganizationUser` - Organization User
          # - `ExternalAdmin` - External Admin
          user_type:
        )
        end

        sig do
          override.returns(
            {
              base_user_id: String,
              email: String,
              first_name: T.nilable(String),
              idp_provider:
                VitableConnect::Models::AuthCompleteProfileResponse::User::IdpProvider::TaggedSymbol,
              idp_user_id: String,
              last_name: T.nilable(String),
              phone: T.nilable(String),
              user_type:
                VitableConnect::Models::AuthCompleteProfileResponse::User::UserType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # - `workos` - WorkOS
        # - `vitable` - Vitable
        module IdpProvider
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::AuthCompleteProfileResponse::User::IdpProvider
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WORKOS =
            T.let(
              :workos,
              VitableConnect::Models::AuthCompleteProfileResponse::User::IdpProvider::TaggedSymbol
            )
          VITABLE =
            T.let(
              :vitable,
              VitableConnect::Models::AuthCompleteProfileResponse::User::IdpProvider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::AuthCompleteProfileResponse::User::IdpProvider::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # - `Member` - Member
        # - `NursePractitioner` - Provider
        # - `CompanyAdmin` - Company Admin
        # - `VitableAdmin` - Vitable Admin
        # - `ClinicalAdmin` - Clinical Admin
        # - `PartnerEmployee` - Partner Employee
        # - `OrganizationUser` - Organization User
        # - `ExternalAdmin` - External Admin
        module UserType
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::AuthCompleteProfileResponse::User::UserType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MEMBER =
            T.let(
              :Member,
              VitableConnect::Models::AuthCompleteProfileResponse::User::UserType::TaggedSymbol
            )
          NURSE_PRACTITIONER =
            T.let(
              :NursePractitioner,
              VitableConnect::Models::AuthCompleteProfileResponse::User::UserType::TaggedSymbol
            )
          COMPANY_ADMIN =
            T.let(
              :CompanyAdmin,
              VitableConnect::Models::AuthCompleteProfileResponse::User::UserType::TaggedSymbol
            )
          VITABLE_ADMIN =
            T.let(
              :VitableAdmin,
              VitableConnect::Models::AuthCompleteProfileResponse::User::UserType::TaggedSymbol
            )
          CLINICAL_ADMIN =
            T.let(
              :ClinicalAdmin,
              VitableConnect::Models::AuthCompleteProfileResponse::User::UserType::TaggedSymbol
            )
          PARTNER_EMPLOYEE =
            T.let(
              :PartnerEmployee,
              VitableConnect::Models::AuthCompleteProfileResponse::User::UserType::TaggedSymbol
            )
          ORGANIZATION_USER =
            T.let(
              :OrganizationUser,
              VitableConnect::Models::AuthCompleteProfileResponse::User::UserType::TaggedSymbol
            )
          EXTERNAL_ADMIN =
            T.let(
              :ExternalAdmin,
              VitableConnect::Models::AuthCompleteProfileResponse::User::UserType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::AuthCompleteProfileResponse::User::UserType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
