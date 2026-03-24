# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#create
    class EmployerCreateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute address
      #   Employer address
      #
      #   @return [VitableConnect::Models::EmployerCreateParams::Address]
      required :address, -> { VitableConnect::EmployerCreateParams::Address }

      # @!attribute ein
      #   Employer Identification Number (format: XX-XXXXXXX)
      #
      #   @return [String]
      required :ein, String

      # @!attribute email
      #   Email address for billing and communications
      #
      #   @return [String]
      required :email, String

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

      # @!attribute phone_number
      #   Employer phone number (10-digit US format, e.g. 5551234567)
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!attribute reference_id
      #   External reference ID for this employer
      #
      #   @return [String, nil]
      optional :reference_id, String, nil?: true

      # @!method initialize(address:, ein:, email:, legal_name:, name:, phone_number: nil, reference_id: nil, request_options: {})
      #   @param address [VitableConnect::Models::EmployerCreateParams::Address] Employer address
      #
      #   @param ein [String] Employer Identification Number (format: XX-XXXXXXX)
      #
      #   @param email [String] Email address for billing and communications
      #
      #   @param legal_name [String] Legal business name
      #
      #   @param name [String] Employer display name
      #
      #   @param phone_number [String, nil] Employer phone number (10-digit US format, e.g. 5551234567)
      #
      #   @param reference_id [String, nil] External reference ID for this employer
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

      class Address < VitableConnect::Internal::Type::BaseModel
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
        #   Two-letter state code
        #
        #   @return [String]
        required :state, String

        # @!attribute zipcode
        #   ZIP code
        #
        #   @return [String]
        required :zipcode, String

        # @!attribute address_line_2
        #   Secondary street address
        #
        #   @return [String, nil]
        optional :address_line_2, String, nil?: true

        # @!method initialize(address_line_1:, city:, state:, zipcode:, address_line_2: nil)
        #   Employer address
        #
        #   @param address_line_1 [String] Primary street address
        #
        #   @param city [String] City name
        #
        #   @param state [String] Two-letter state code
        #
        #   @param zipcode [String] ZIP code
        #
        #   @param address_line_2 [String, nil] Secondary street address
      end
    end
  end
end
