# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # @see VitableConnectAPI::Resources::Employers#create
    class EmployerCreateParams < VitableConnectAPI::Internal::Type::BaseModel
      extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
      include VitableConnectAPI::Internal::Type::RequestParameters

      # @!attribute address
      #   Employer address
      #
      #   @return [VitableConnectAPI::Models::EmployerCreateParams::Address]
      required :address, -> { VitableConnectAPI::EmployerCreateParams::Address }

      # @!attribute ein
      #   Employer Identification Number (format: XX-XXXXXXX or XXXXXXXXX)
      #
      #   @return [String]
      required :ein, String

      # @!attribute legal_name
      #   Legal business name
      #
      #   @return [String]
      required :legal_name, String

      # @!attribute name
      #   Employer display name
      #
      #   @return [String]
      required :name, String

      # @!method initialize(address:, ein:, legal_name:, name:, request_options: {})
      #   @param address [VitableConnectAPI::Models::EmployerCreateParams::Address] Employer address
      #
      #   @param ein [String] Employer Identification Number (format: XX-XXXXXXX or XXXXXXXXX)
      #
      #   @param legal_name [String] Legal business name
      #
      #   @param name [String] Employer display name
      #
      #   @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}]

      class Address < VitableConnectAPI::Internal::Type::BaseModel
        # @!attribute city
        #   City name
        #
        #   @return [String]
        required :city, String

        # @!attribute state
        #   Two-letter state code
        #
        #   @return [String]
        required :state, String

        # @!attribute street_1
        #   Primary street address
        #
        #   @return [String]
        required :street_1, String

        # @!attribute zip_code
        #   ZIP code
        #
        #   @return [String]
        required :zip_code, String

        # @!attribute country
        #   Country code
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute street_2
        #   Secondary street address
        #
        #   @return [String, nil]
        optional :street_2, String, nil?: true

        # @!method initialize(city:, state:, street_1:, zip_code:, country: nil, street_2: nil)
        #   Employer address
        #
        #   @param city [String] City name
        #
        #   @param state [String] Two-letter state code
        #
        #   @param street_1 [String] Primary street address
        #
        #   @param zip_code [String] ZIP code
        #
        #   @param country [String] Country code
        #
        #   @param street_2 [String, nil] Secondary street address
      end
    end
  end
end
