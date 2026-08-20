# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employees#update
    class EmployeeUpdateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute employee_id
      #   Unique employee identifier (empl\_\*)
      #
      #   @return [String]
      required :employee_id, String

      # @!attribute effective_date
      #   Past or present date applied to each tracked employment field included in this
      #   request
      #
      #   @return [Date]
      required :effective_date, Date

      # @!attribute address
      #   Employee's residential address
      #
      #   @return [VitableConnect::Models::EmployeeUpdateParams::Address, nil]
      optional :address, -> { VitableConnect::EmployeeUpdateParams::Address }, nil?: true

      # @!attribute compensation_type
      #   - `Salary` - Salary
      #   - `Hourly` - Hourly
      #
      #   @return [Symbol, VitableConnect::Models::EmployeeUpdateParams::CompensationType, nil]
      optional :compensation_type,
               enum: -> { VitableConnect::EmployeeUpdateParams::CompensationType },
               nil?: true

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
      #   @return [Symbol, VitableConnect::Models::EmployeeClass, nil]
      optional :employee_class, enum: -> { VitableConnect::EmployeeClass }, nil?: true

      # @!attribute gender
      #   - `Male` - Male
      #   - `Female` - Female
      #   - `Transgender` - Transgender
      #   - `Non-binary` - Non-binary
      #   - `Prefer not to respond` - Prefer not to respond
      #
      #   @return [Symbol, VitableConnect::Models::EmployeeUpdateParams::Gender, nil]
      optional :gender, enum: -> { VitableConnect::EmployeeUpdateParams::Gender }, nil?: true

      # @!attribute phone
      #   Phone number
      #
      #   @return [String, nil]
      optional :phone, String, nil?: true

      # @!attribute start_date
      #   Employment start date
      #
      #   @return [Date, nil]
      optional :start_date, Date, nil?: true

      # @!method initialize(employee_id:, effective_date:, address: nil, compensation_type: nil, email: nil, employee_class: nil, gender: nil, phone: nil, start_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::EmployeeUpdateParams} for more details.
      #
      #   @param employee_id [String] Unique employee identifier (empl\_\*)
      #
      #   @param effective_date [Date] Past or present date applied to each tracked employment field included in this r
      #
      #   @param address [VitableConnect::Models::EmployeeUpdateParams::Address, nil] Employee's residential address
      #
      #   @param compensation_type [Symbol, VitableConnect::Models::EmployeeUpdateParams::CompensationType, nil] - `Salary` - Salary
      #
      #   @param email [String, nil] Email address
      #
      #   @param employee_class [Symbol, VitableConnect::Models::EmployeeClass, nil] - `Full Time` - Full Time
      #
      #   @param gender [Symbol, VitableConnect::Models::EmployeeUpdateParams::Gender, nil] - `Male` - Male
      #
      #   @param phone [String, nil] Phone number
      #
      #   @param start_date [Date, nil] Employment start date
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

      # - `Salary` - Salary
      # - `Hourly` - Hourly
      module CompensationType
        extend VitableConnect::Internal::Type::Enum

        SALARY = :Salary
        HOURLY = :Hourly

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # - `Male` - Male
      # - `Female` - Female
      # - `Transgender` - Transgender
      # - `Non-binary` - Non-binary
      # - `Prefer not to respond` - Prefer not to respond
      module Gender
        extend VitableConnect::Internal::Type::Enum

        MALE = :Male
        FEMALE = :Female
        TRANSGENDER = :Transgender
        NON_BINARY = :"Non-binary"
        PREFER_NOT_TO_RESPOND = :"Prefer not to respond"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
