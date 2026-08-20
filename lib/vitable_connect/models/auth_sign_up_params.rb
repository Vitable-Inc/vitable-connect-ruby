# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Auth#sign_up
    class AuthSignUpParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute user_type
      #   - `Member` - Member
      #   - `NursePractitioner` - NursePractitioner
      #   - `CompanyAdmin` - CompanyAdmin
      #   - `VitableAdmin` - VitableAdmin
      #   - `ClinicalAdmin` - ClinicalAdmin
      #   - `PartnerEmployee` - PartnerEmployee
      #   - `OrganizationUser` - OrganizationUser
      #   - `ExternalAdmin` - ExternalAdmin
      #
      #   @return [Symbol, VitableConnect::Models::AuthSignUpParams::UserType, nil]
      optional :user_type, enum: -> { VitableConnect::AuthSignUpParams::UserType }, nil?: true

      # @!method initialize(user_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::AuthSignUpParams} for more details.
      #
      #   @param user_type [Symbol, VitableConnect::Models::AuthSignUpParams::UserType, nil] - `Member` - Member
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

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
