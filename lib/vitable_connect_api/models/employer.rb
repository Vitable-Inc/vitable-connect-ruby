# frozen_string_literal: true

module VitableConnectAPI
  module Models
    class Employer < VitableConnectAPI::Internal::Type::BaseModel
      # @!attribute active
      #   Whether the employer is currently active in the system
      #
      #   @return [Boolean]
      required :active, VitableConnectAPI::Internal::Type::Boolean

      # @!attribute address
      #   Nested address within EmployerSerializer.
      #
      #   @return [VitableConnectAPI::Models::Employer::Address]
      required :address, -> { VitableConnectAPI::Employer::Address }

      # @!attribute created_at
      #   Timestamp when the employer was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute legal_name
      #   Legal business name for compliance and tax purposes
      #
      #   @return [String]
      required :legal_name, String

      # @!attribute name
      #   Display name of the employer
      #
      #   @return [String]
      required :name, String

      # @!attribute updated_at
      #   Timestamp when the employer was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute email
      #   Email address for billing and communications
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      response_only do
        # @!attribute id
        #   Unique employer identifier with 'empr\_' prefix
        #
        #   @return [String]
        required :id, String

        # @!attribute ein
        #   Employer Identification Number (masked in responses)
        #
        #   @return [String, nil]
        required :ein, String, nil?: true

        # @!attribute eligibility_policy_id
        #   ID of the benefit eligibility policy (epol\_\*), if assigned
        #
        #   @return [String, nil]
        required :eligibility_policy_id, String, nil?: true

        # @!attribute organization_id
        #   ID of the parent organization (org\_\*)
        #
        #   @return [String]
        required :organization_id, String
      end

      # @!method initialize(id:, active:, address:, created_at:, ein:, eligibility_policy_id:, legal_name:, name:, organization_id:, updated_at:, email: nil)
      #   Serializer for Employer entity in public API responses.
      #
      #   @param id [String] Unique employer identifier with 'empr\_' prefix
      #
      #   @param active [Boolean] Whether the employer is currently active in the system
      #
      #   @param address [VitableConnectAPI::Models::Employer::Address] Nested address within EmployerSerializer.
      #
      #   @param created_at [Time] Timestamp when the employer was created
      #
      #   @param ein [String, nil] Employer Identification Number (masked in responses)
      #
      #   @param eligibility_policy_id [String, nil] ID of the benefit eligibility policy (epol\_\*), if assigned
      #
      #   @param legal_name [String] Legal business name for compliance and tax purposes
      #
      #   @param name [String] Display name of the employer
      #
      #   @param organization_id [String] ID of the parent organization (org\_\*)
      #
      #   @param updated_at [Time] Timestamp when the employer was last updated
      #
      #   @param email [String, nil] Email address for billing and communications

      # @see VitableConnectAPI::Models::Employer#address
      class Address < VitableConnectAPI::Internal::Type::BaseModel
        # @!attribute address_line_1
        #   Primary street address
        #
        #   @return [String]
        required :address_line_1, String

        # @!attribute city
        #   City name
        #
        #   @return [String]
        required :city, String

        # @!attribute state
        #   Two-letter state code (e.g., CA, NY)
        #
        #   @return [String]
        required :state, String

        # @!attribute zipcode
        #   ZIP code (5 or 9 digit)
        #
        #   @return [String]
        required :zipcode, String

        # @!attribute address_line_2
        #   Secondary street address (apt, suite, etc.)
        #
        #   @return [String, nil]
        optional :address_line_2, String, nil?: true

        # @!method initialize(address_line_1:, city:, state:, zipcode:, address_line_2: nil)
        #   Nested address within EmployerSerializer.
        #
        #   @param address_line_1 [String] Primary street address
        #
        #   @param city [String] City name
        #
        #   @param state [String] Two-letter state code (e.g., CA, NY)
        #
        #   @param zipcode [String] ZIP code (5 or 9 digit)
        #
        #   @param address_line_2 [String, nil] Secondary street address (apt, suite, etc.)
      end
    end
  end
end
