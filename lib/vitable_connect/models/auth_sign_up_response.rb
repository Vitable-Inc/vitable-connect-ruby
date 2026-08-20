# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Auth#sign_up
    class AuthSignUpResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute user
      #
      #   @return [VitableConnect::Models::AuthSignUpResponse::User]
      required :user, -> { VitableConnect::Models::AuthSignUpResponse::User }

      # @!method initialize(user:)
      #   @param user [VitableConnect::Models::AuthSignUpResponse::User]

      # @see VitableConnect::Models::AuthSignUpResponse#user
      class User < VitableConnect::Internal::Type::BaseModel
        # @!attribute base_user_id
        #
        #   @return [String]
        required :base_user_id, String

        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute first_name
        #
        #   @return [String, nil]
        required :first_name, String, nil?: true

        # @!attribute idp_provider
        #   - `workos` - WorkOS
        #   - `vitable` - Vitable
        #
        #   @return [Symbol, VitableConnect::Models::AuthSignUpResponse::User::IdpProvider]
        required :idp_provider, enum: -> { VitableConnect::Models::AuthSignUpResponse::User::IdpProvider }

        # @!attribute idp_user_id
        #
        #   @return [String]
        required :idp_user_id, String

        # @!attribute last_name
        #
        #   @return [String, nil]
        required :last_name, String, nil?: true

        # @!attribute phone
        #
        #   @return [String, nil]
        required :phone, String, nil?: true

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
        #   @return [Symbol, VitableConnect::Models::AuthSignUpResponse::User::UserType]
        required :user_type, enum: -> { VitableConnect::Models::AuthSignUpResponse::User::UserType }

        # @!method initialize(base_user_id:, email:, first_name:, idp_provider:, idp_user_id:, last_name:, phone:, user_type:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::AuthSignUpResponse::User} for more details.
        #
        #   @param base_user_id [String]
        #
        #   @param email [String]
        #
        #   @param first_name [String, nil]
        #
        #   @param idp_provider [Symbol, VitableConnect::Models::AuthSignUpResponse::User::IdpProvider] - `workos` - WorkOS
        #
        #   @param idp_user_id [String]
        #
        #   @param last_name [String, nil]
        #
        #   @param phone [String, nil]
        #
        #   @param user_type [Symbol, VitableConnect::Models::AuthSignUpResponse::User::UserType] - `Member` - Member

        # - `workos` - WorkOS
        # - `vitable` - Vitable
        #
        # @see VitableConnect::Models::AuthSignUpResponse::User#idp_provider
        module IdpProvider
          extend VitableConnect::Internal::Type::Enum

          WORKOS = :workos
          VITABLE = :vitable

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # - `Member` - Member
        # - `NursePractitioner` - Provider
        # - `CompanyAdmin` - Company Admin
        # - `VitableAdmin` - Vitable Admin
        # - `ClinicalAdmin` - Clinical Admin
        # - `PartnerEmployee` - Partner Employee
        # - `OrganizationUser` - Organization User
        # - `ExternalAdmin` - External Admin
        #
        # @see VitableConnect::Models::AuthSignUpResponse::User#user_type
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
end
