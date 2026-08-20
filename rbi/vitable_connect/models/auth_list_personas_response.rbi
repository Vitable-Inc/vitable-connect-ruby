# typed: strong

module VitableConnect
  module Models
    class AuthListPersonasResponseItem < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::AuthListPersonasResponseItem,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :display_name

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
          VitableConnect::Models::AuthListPersonasResponseItem::UserType::TaggedSymbol
        )
      end
      attr_accessor :user_type

      sig do
        params(
          display_name: String,
          user_type:
            VitableConnect::Models::AuthListPersonasResponseItem::UserType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        display_name:,
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
            display_name: String,
            user_type:
              VitableConnect::Models::AuthListPersonasResponseItem::UserType::TaggedSymbol
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
            T.all(
              Symbol,
              VitableConnect::Models::AuthListPersonasResponseItem::UserType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MEMBER =
          T.let(
            :Member,
            VitableConnect::Models::AuthListPersonasResponseItem::UserType::TaggedSymbol
          )
        NURSE_PRACTITIONER =
          T.let(
            :NursePractitioner,
            VitableConnect::Models::AuthListPersonasResponseItem::UserType::TaggedSymbol
          )
        COMPANY_ADMIN =
          T.let(
            :CompanyAdmin,
            VitableConnect::Models::AuthListPersonasResponseItem::UserType::TaggedSymbol
          )
        VITABLE_ADMIN =
          T.let(
            :VitableAdmin,
            VitableConnect::Models::AuthListPersonasResponseItem::UserType::TaggedSymbol
          )
        CLINICAL_ADMIN =
          T.let(
            :ClinicalAdmin,
            VitableConnect::Models::AuthListPersonasResponseItem::UserType::TaggedSymbol
          )
        PARTNER_EMPLOYEE =
          T.let(
            :PartnerEmployee,
            VitableConnect::Models::AuthListPersonasResponseItem::UserType::TaggedSymbol
          )
        ORGANIZATION_USER =
          T.let(
            :OrganizationUser,
            VitableConnect::Models::AuthListPersonasResponseItem::UserType::TaggedSymbol
          )
        EXTERNAL_ADMIN =
          T.let(
            :ExternalAdmin,
            VitableConnect::Models::AuthListPersonasResponseItem::UserType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::Models::AuthListPersonasResponseItem::UserType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end

    AuthListPersonasResponse =
      T.let(
        VitableConnect::Internal::Type::ArrayOf[
          VitableConnect::Models::AuthListPersonasResponseItem
        ],
        VitableConnect::Internal::Type::Converter
      )
  end
end
