# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Auth#complete_profile
    class AuthCompleteProfileParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute first_name
      #
      #   @return [String]
      required :first_name, String

      # @!attribute last_name
      #
      #   @return [String]
      required :last_name, String

      # @!attribute phone
      #
      #   @return [String]
      required :phone, String

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
      #   @return [Symbol, VitableConnect::Models::AuthCompleteProfileParams::UserType, nil]
      optional :user_type, enum: -> { VitableConnect::AuthCompleteProfileParams::UserType }

      # @!method initialize(first_name:, last_name:, phone:, user_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::AuthCompleteProfileParams} for more details.
      #
      #   @param first_name [String]
      #
      #   @param last_name [String]
      #
      #   @param phone [String]
      #
      #   @param user_type [Symbol, VitableConnect::Models::AuthCompleteProfileParams::UserType] - `Member` - Member
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

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
  end
end
