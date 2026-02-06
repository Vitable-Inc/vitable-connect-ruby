# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#update
    class EmployerUpdateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute active
      #   Whether the employer is active
      #
      #   @return [Boolean, nil]
      optional :active, VitableConnect::Internal::Type::Boolean, nil?: true

      # @!attribute address
      #   Employer address
      #
      #   @return [VitableConnect::Models::EmployerUpdateParams::Address, nil]
      optional :address, -> { VitableConnect::EmployerUpdateParams::Address }, nil?: true

      # @!attribute legal_name
      #   Legal business name
      #
      #   @return [String, nil]
      optional :legal_name, String, nil?: true

      # @!attribute name
      #   Employer display name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(active: nil, address: nil, legal_name: nil, name: nil, request_options: {})
      #   @param active [Boolean, nil] Whether the employer is active
      #
      #   @param address [VitableConnect::Models::EmployerUpdateParams::Address, nil] Employer address
      #
      #   @param legal_name [String, nil] Legal business name
      #
      #   @param name [String, nil] Employer display name
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
