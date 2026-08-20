# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Auth#login
    class AuthLoginParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute email_or_phone
      #
      #   @return [String]
      required :email_or_phone, String

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
      #   @return [Symbol, VitableConnect::Models::AuthLoginParams::UserType]
      required :user_type, enum: -> { VitableConnect::AuthLoginParams::UserType }

      # @!attribute app_name
      #
      #   @return [String, nil]
      optional :app_name, String

      # @!attribute app_version
      #
      #   @return [String, nil]
      optional :app_version, String

      # @!attribute password
      #
      #   @return [String, nil]
      optional :password, String

      # @!attribute two_factor_token
      #
      #   @return [String, nil]
      optional :two_factor_token, String

      # @!method initialize(email_or_phone:, user_type:, app_name: nil, app_version: nil, password: nil, two_factor_token: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::AuthLoginParams} for more details.
      #
      #   @param email_or_phone [String]
      #
      #   @param user_type [Symbol, VitableConnect::Models::AuthLoginParams::UserType] - `Member` - Member
      #
      #   @param app_name [String]
      #
      #   @param app_version [String]
      #
      #   @param password [String]
      #
      #   @param two_factor_token [String]
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
