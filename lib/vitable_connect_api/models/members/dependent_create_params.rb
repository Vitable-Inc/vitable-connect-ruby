# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Members
      # @see VitableConnectAPI::Resources::Members::Dependents#create
      class DependentCreateParams < VitableConnectAPI::Internal::Type::BaseModel
        extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
        include VitableConnectAPI::Internal::Type::RequestParameters

        # @!attribute date_of_birth
        #   Date of birth (YYYY-MM-DD)
        #
        #   @return [Date]
        required :date_of_birth, Date

        # @!attribute first_name
        #   Dependent's legal first name
        #
        #   @return [String]
        required :first_name, String

        # @!attribute last_name
        #   Dependent's legal last name
        #
        #   @return [String]
        required :last_name, String

        # @!attribute relationship
        #   - `Spouse` - Spouse
        #   - `Child` - Child
        #
        #   @return [Symbol, VitableConnectAPI::Models::Members::Relationship]
        required :relationship, enum: -> { VitableConnectAPI::Members::Relationship }

        # @!attribute sex
        #   - `Male` - Male
        #   - `Female` - Female
        #   - `Other` - Other
        #   - `Unknown` - Unknown
        #
        #   @return [Symbol, VitableConnectAPI::Models::Sex]
        required :sex, enum: -> { VitableConnectAPI::Sex }

        # @!attribute gender
        #   Gender identity
        #
        #   @return [String, nil]
        optional :gender, String, nil?: true

        # @!attribute ssn
        #   Social Security Number (optional, XXX-XX-XXXX or XXXXXXXXX)
        #
        #   @return [String, nil]
        optional :ssn, String, nil?: true

        # @!attribute suffix
        #   Name suffix (Jr., Sr., III)
        #
        #   @return [String, nil]
        optional :suffix, String, nil?: true

        # @!method initialize(date_of_birth:, first_name:, last_name:, relationship:, sex:, gender: nil, ssn: nil, suffix: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {VitableConnectAPI::Models::Members::DependentCreateParams} for more details.
        #
        #   @param date_of_birth [Date] Date of birth (YYYY-MM-DD)
        #
        #   @param first_name [String] Dependent's legal first name
        #
        #   @param last_name [String] Dependent's legal last name
        #
        #   @param relationship [Symbol, VitableConnectAPI::Models::Members::Relationship] - `Spouse` - Spouse
        #
        #   @param sex [Symbol, VitableConnectAPI::Models::Sex] - `Male` - Male
        #
        #   @param gender [String, nil] Gender identity
        #
        #   @param ssn [String, nil] Social Security Number (optional, XXX-XX-XXXX or XXXXXXXXX)
        #
        #   @param suffix [String, nil] Name suffix (Jr., Sr., III)
        #
        #   @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
