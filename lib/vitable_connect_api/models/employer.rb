# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # @see VitableConnectAPI::Resources::Employers#create
    class Employer < VitableConnectAPI::Internal::Type::BaseModel
      # @!attribute id
      #   Unique employer identifier with 'empr\_' prefix
      #
      #   @return [String]
      required :id, String

      # @!attribute active
      #   Whether the employer is currently active in the system
      #
      #   @return [Boolean]
      required :active, VitableConnectAPI::Internal::Type::Boolean

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

      # @!attribute organization_id
      #   ID of the parent organization (org\_\*)
      #
      #   @return [String]
      required :organization_id, String

      # @!attribute updated_at
      #   Timestamp when the employer was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute address
      #   Nested address within EmployerSerializer.
      #
      #   @return [VitableConnectAPI::Models::Employer::Address, nil]
      optional :address, -> { VitableConnectAPI::Employer::Address }, nil?: true

      # @!attribute ein
      #   Employer Identification Number (masked in responses)
      #
      #   @return [String, nil]
      optional :ein, String, nil?: true

      # @!attribute eligibility_policy_id
      #   ID of the benefit eligibility policy (epol\_\*), if assigned
      #
      #   @return [String, nil]
      optional :eligibility_policy_id, String, nil?: true

      # @!method initialize(id:, active:, created_at:, legal_name:, name:, organization_id:, updated_at:, address: nil, ein: nil, eligibility_policy_id: nil)
      #   Serializer for Employer entity in public API responses.
      #
      #   Matches EmployerEntity from company module domain.
      #
      #   @param id [String] Unique employer identifier with 'empr\_' prefix
      #
      #   @param active [Boolean] Whether the employer is currently active in the system
      #
      #   @param created_at [Time] Timestamp when the employer was created
      #
      #   @param legal_name [String] Legal business name for compliance and tax purposes
      #
      #   @param name [String] Display name of the employer
      #
      #   @param organization_id [String] ID of the parent organization (org\_\*)
      #
      #   @param updated_at [Time] Timestamp when the employer was last updated
      #
      #   @param address [VitableConnectAPI::Models::Employer::Address, nil] Nested address within EmployerSerializer.
      #
      #   @param ein [String, nil] Employer Identification Number (masked in responses)
      #
      #   @param eligibility_policy_id [String, nil] ID of the benefit eligibility policy (epol\_\*), if assigned

      # @see VitableConnectAPI::Models::Employer#address
      class Address < VitableConnectAPI::Internal::Type::BaseModel
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

        # @!attribute street_1
        #   Primary street address
        #
        #   @return [String]
        required :street_1, String

        # @!attribute zip_code
        #   ZIP code (5 or 9 digit)
        #
        #   @return [String]
        required :zip_code, String

        # @!attribute country
        #   Country code (default: US)
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute street_2
        #   Secondary street address (apt, suite, etc.)
        #
        #   @return [String, nil]
        optional :street_2, String, nil?: true

        # @!method initialize(city:, state:, street_1:, zip_code:, country: nil, street_2: nil)
        #   Nested address within EmployerSerializer.
        #
        #   @param city [String] City name
        #
        #   @param state [String] Two-letter state code (e.g., CA, NY)
        #
        #   @param street_1 [String] Primary street address
        #
        #   @param zip_code [String] ZIP code (5 or 9 digit)
        #
        #   @param country [String] Country code (default: US)
        #
        #   @param street_2 [String, nil] Secondary street address (apt, suite, etc.)
      end
    end
  end
end
