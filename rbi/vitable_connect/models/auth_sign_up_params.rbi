# typed: strong

module VitableConnect
  module Models
    class AuthSignUpParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::AuthSignUpParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # - `Member` - Member
      # - `NursePractitioner` - NursePractitioner
      # - `CompanyAdmin` - CompanyAdmin
      # - `VitableAdmin` - VitableAdmin
      # - `ClinicalAdmin` - ClinicalAdmin
      # - `PartnerEmployee` - PartnerEmployee
      # - `OrganizationUser` - OrganizationUser
      # - `ExternalAdmin` - ExternalAdmin
      sig do
        returns(T.nilable(VitableConnect::AuthSignUpParams::UserType::OrSymbol))
      end
      attr_accessor :user_type

      sig do
        params(
          user_type:
            T.nilable(VitableConnect::AuthSignUpParams::UserType::OrSymbol),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # - `Member` - Member
        # - `NursePractitioner` - NursePractitioner
        # - `CompanyAdmin` - CompanyAdmin
        # - `VitableAdmin` - VitableAdmin
        # - `ClinicalAdmin` - ClinicalAdmin
        # - `PartnerEmployee` - PartnerEmployee
        # - `OrganizationUser` - OrganizationUser
        # - `ExternalAdmin` - ExternalAdmin
        user_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            user_type:
              T.nilable(VitableConnect::AuthSignUpParams::UserType::OrSymbol),
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end

      # - `Member` - Member
      # - `NursePractitioner` - NursePractitioner
      # - `CompanyAdmin` - CompanyAdmin
      # - `VitableAdmin` - VitableAdmin
      # - `ClinicalAdmin` - ClinicalAdmin
      # - `PartnerEmployee` - PartnerEmployee
      # - `OrganizationUser` - OrganizationUser
      # - `ExternalAdmin` - ExternalAdmin
      module UserType
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitableConnect::AuthSignUpParams::UserType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MEMBER =
          T.let(
            :Member,
            VitableConnect::AuthSignUpParams::UserType::TaggedSymbol
          )
        NURSE_PRACTITIONER =
          T.let(
            :NursePractitioner,
            VitableConnect::AuthSignUpParams::UserType::TaggedSymbol
          )
        COMPANY_ADMIN =
          T.let(
            :CompanyAdmin,
            VitableConnect::AuthSignUpParams::UserType::TaggedSymbol
          )
        VITABLE_ADMIN =
          T.let(
            :VitableAdmin,
            VitableConnect::AuthSignUpParams::UserType::TaggedSymbol
          )
        CLINICAL_ADMIN =
          T.let(
            :ClinicalAdmin,
            VitableConnect::AuthSignUpParams::UserType::TaggedSymbol
          )
        PARTNER_EMPLOYEE =
          T.let(
            :PartnerEmployee,
            VitableConnect::AuthSignUpParams::UserType::TaggedSymbol
          )
        ORGANIZATION_USER =
          T.let(
            :OrganizationUser,
            VitableConnect::AuthSignUpParams::UserType::TaggedSymbol
          )
        EXTERNAL_ADMIN =
          T.let(
            :ExternalAdmin,
            VitableConnect::AuthSignUpParams::UserType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[VitableConnect::AuthSignUpParams::UserType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
