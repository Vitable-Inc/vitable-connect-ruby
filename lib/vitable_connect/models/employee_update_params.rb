# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employees#update
    class EmployeeUpdateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute address
      #   Employee's residential address
      #
      #   @return [VitableConnect::Models::EmployeeUpdateParams::Address, nil]
      optional :address, -> { VitableConnect::EmployeeUpdateParams::Address }, nil?: true

      # @!attribute email
      #   Email address
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute employee_class
      #   - `Full Time` - Full Time
      #   - `Part Time` - Part Time
      #   - `Temporary` - Temporary
      #   - `Intern` - Intern
      #   - `Seasonal` - Seasonal
      #   - `Individual Contractor` - Individual Contractor
      #
      #   @return [Symbol, VitableConnect::Models::Employers::EmployeeClass, nil]
      optional :employee_class, enum: -> { VitableConnect::Employers::EmployeeClass }, nil?: true

      # @!attribute gender
      #   Gender identity
      #
      #   @return [String, nil]
      optional :gender, String, nil?: true

      # @!attribute phone
      #   Phone number
      #
      #   @return [String, nil]
      optional :phone, String, nil?: true

      # @!attribute termination_date
      #   Termination date if terminating
      #
      #   @return [Date, nil]
      optional :termination_date, Date, nil?: true

      # @!method initialize(address: nil, email: nil, employee_class: nil, gender: nil, phone: nil, termination_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::EmployeeUpdateParams} for more details.
      #
      #   @param address [VitableConnect::Models::EmployeeUpdateParams::Address, nil] Employee's residential address
      #
      #   @param email [String, nil] Email address
      #
      #   @param employee_class [Symbol, VitableConnect::Models::Employers::EmployeeClass, nil] - `Full Time` - Full Time
      #
      #   @param gender [String, nil] Gender identity
      #
      #   @param phone [String, nil] Phone number
      #
      #   @param termination_date [Date, nil] Termination date if terminating
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

      class Address < VitableConnect::Internal::Type::BaseModel
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
        #   Employee's residential address
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
