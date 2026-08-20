# frozen_string_literal: true

module VitableConnect
  module Models
    class AuthListPersonasResponseItem < VitableConnect::Internal::Type::BaseModel
      # @!attribute display_name
      #
      #   @return [String]
      required :display_name, String

      # @!attribute user_type
      #   - `Member` - Member
      #   - `NursePractitioner` - Provider
      #   - `CompanyAdmin` - Company Admin
      #   - `VitableAdmin` - Vitable Admin
      #   - `ClinicalAdmin` - Clinical Admin
      #   - `PartnerEmployee` - Partner Employee
      #   - `OrganizationUser` - Organization User
      #   - `ExternalAdmin` - External Admin
      #
      #   @return [Symbol, VitableConnect::Models::AuthListPersonasResponseItem::UserType]
      required :user_type, enum: -> { VitableConnect::Models::AuthListPersonasResponseItem::UserType }

      # @!method initialize(display_name:, user_type:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::AuthListPersonasResponseItem} for more details.
      #
      #   @param display_name [String]
      #
      #   @param user_type [Symbol, VitableConnect::Models::AuthListPersonasResponseItem::UserType] - `Member` - Member

      # - `Member` - Member
      # - `NursePractitioner` - Provider
      # - `CompanyAdmin` - Company Admin
      # - `VitableAdmin` - Vitable Admin
      # - `ClinicalAdmin` - Clinical Admin
      # - `PartnerEmployee` - Partner Employee
      # - `OrganizationUser` - Organization User
      # - `ExternalAdmin` - External Admin
      #
      # @see VitableConnect::Models::AuthListPersonasResponseItem#user_type
      module UserType
        extend VitableConnect::Internal::Type::Enum

        MEMBER = :Member
        NURSE_PRACTITIONER = :NursePractitioner
        COMPANY_ADMIN = :CompanyAdmin
        VITABLE_ADMIN = :VitableAdmin
        CLINICAL_ADMIN = :ClinicalAdmin
        PARTNER_EMPLOYEE = :PartnerEmployee
        ORGANIZATION_USER = :OrganizationUser
        EXTERNAL_ADMIN = :ExternalAdmin

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    # @type [VitableConnect::Internal::Type::Converter]
    AuthListPersonasResponse =
      VitableConnect::Internal::Type::ArrayOf[-> { VitableConnect::Models::AuthListPersonasResponseItem }]
  end
end
