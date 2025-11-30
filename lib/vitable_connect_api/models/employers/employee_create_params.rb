# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Employers
      # @see VitableConnectAPI::Resources::Employers::Employees#create
      class EmployeeCreateParams < VitableConnectAPI::Internal::Type::BaseModel
        extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
        include VitableConnectAPI::Internal::Type::RequestParameters

        # @!attribute date_of_birth
        #   Date of birth (YYYY-MM-DD)
        #
        #   @return [Date]
        required :date_of_birth, Date

        # @!attribute email
        #   Email address
        #
        #   @return [String]
        required :email, String

        # @!attribute first_name
        #   Employee's legal first name
        #
        #   @return [String]
        required :first_name, String

        # @!attribute last_name
        #   Employee's legal last name
        #
        #   @return [String]
        required :last_name, String

        # @!attribute sex
        #   - `Male` - Male
        #   - `Female` - Female
        #   - `Other` - Other
        #   - `Unknown` - Unknown
        #
        #   @return [Symbol, VitableConnectAPI::Models::Sex]
        required :sex, enum: -> { VitableConnectAPI::Sex }

        # @!attribute ssn
        #   Social Security Number (XXX-XX-XXXX or XXXXXXXXX). Only accepted on create.
        #
        #   @return [String]
        required :ssn, String

        # @!attribute start_date
        #   Employment start/hire date
        #
        #   @return [Date]
        required :start_date, Date

        # @!attribute address
        #   Employee's residential address
        #
        #   @return [VitableConnectAPI::Models::Employers::EmployeeCreateParams::Address, nil]
        optional :address, -> { VitableConnectAPI::Employers::EmployeeCreateParams::Address }, nil?: true

        # @!attribute employee_class
        #   - `Full Time` - Full Time
        #   - `Part Time` - Part Time
        #   - `Temporary` - Temporary
        #   - `Intern` - Intern
        #   - `Seasonal` - Seasonal
        #   - `Individual Contractor` - Individual Contractor
        #
        #   @return [Symbol, VitableConnectAPI::Models::Employers::EmployeeClass, nil]
        optional :employee_class, enum: -> { VitableConnectAPI::Employers::EmployeeClass }, nil?: true

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

        # @!attribute suffix
        #   Name suffix (Jr., Sr., III)
        #
        #   @return [String, nil]
        optional :suffix, String, nil?: true

        # @!method initialize(date_of_birth:, email:, first_name:, last_name:, sex:, ssn:, start_date:, address: nil, employee_class: nil, gender: nil, phone: nil, suffix: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {VitableConnectAPI::Models::Employers::EmployeeCreateParams} for more details.
        #
        #   @param date_of_birth [Date] Date of birth (YYYY-MM-DD)
        #
        #   @param email [String] Email address
        #
        #   @param first_name [String] Employee's legal first name
        #
        #   @param last_name [String] Employee's legal last name
        #
        #   @param sex [Symbol, VitableConnectAPI::Models::Sex] - `Male` - Male
        #
        #   @param ssn [String] Social Security Number (XXX-XX-XXXX or XXXXXXXXX). Only accepted on create.
        #
        #   @param start_date [Date] Employment start/hire date
        #
        #   @param address [VitableConnectAPI::Models::Employers::EmployeeCreateParams::Address, nil] Employee's residential address
        #
        #   @param employee_class [Symbol, VitableConnectAPI::Models::Employers::EmployeeClass, nil] - `Full Time` - Full Time
        #
        #   @param gender [String, nil] Gender identity
        #
        #   @param phone [String, nil] Phone number
        #
        #   @param suffix [String, nil] Name suffix (Jr., Sr., III)
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
end
