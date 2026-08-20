# typed: strong

module VitableConnect
  module Models
    class AuthCompleteProfileParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::AuthCompleteProfileParams,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :first_name

      sig { returns(String) }
      attr_accessor :last_name

      sig { returns(String) }
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
          T.nilable(
            VitableConnect::AuthCompleteProfileParams::UserType::OrSymbol
          )
        )
      end
      attr_reader :user_type

      sig do
        params(
          user_type:
            VitableConnect::AuthCompleteProfileParams::UserType::OrSymbol
        ).void
      end
      attr_writer :user_type

      sig do
        params(
          first_name: String,
          last_name: String,
          phone: String,
          user_type:
            VitableConnect::AuthCompleteProfileParams::UserType::OrSymbol,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        first_name:,
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
        user_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            first_name: String,
            last_name: String,
            phone: String,
            user_type:
              VitableConnect::AuthCompleteProfileParams::UserType::OrSymbol,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
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
            T.all(Symbol, VitableConnect::AuthCompleteProfileParams::UserType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MEMBER =
          T.let(
            :Member,
            VitableConnect::AuthCompleteProfileParams::UserType::TaggedSymbol
          )
        NURSE_PRACTITIONER =
          T.let(
            :NursePractitioner,
            VitableConnect::AuthCompleteProfileParams::UserType::TaggedSymbol
          )
        COMPANY_ADMIN =
          T.let(
            :CompanyAdmin,
            VitableConnect::AuthCompleteProfileParams::UserType::TaggedSymbol
          )
        VITABLE_ADMIN =
          T.let(
            :VitableAdmin,
            VitableConnect::AuthCompleteProfileParams::UserType::TaggedSymbol
          )
        CLINICAL_ADMIN =
          T.let(
            :ClinicalAdmin,
            VitableConnect::AuthCompleteProfileParams::UserType::TaggedSymbol
          )
        PARTNER_EMPLOYEE =
          T.let(
            :PartnerEmployee,
            VitableConnect::AuthCompleteProfileParams::UserType::TaggedSymbol
          )
        ORGANIZATION_USER =
          T.let(
            :OrganizationUser,
            VitableConnect::AuthCompleteProfileParams::UserType::TaggedSymbol
          )
        EXTERNAL_ADMIN =
          T.let(
            :ExternalAdmin,
            VitableConnect::AuthCompleteProfileParams::UserType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::AuthCompleteProfileParams::UserType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
