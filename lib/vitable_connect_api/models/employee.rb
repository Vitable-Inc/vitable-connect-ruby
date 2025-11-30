# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # @see VitableConnectAPI::Resources::Employees#retrieve
    class Employee < VitableConnectAPI::Internal::Type::BaseModel
      # @!attribute id
      #   Unique employee identifier with 'empl\_' prefix
      #
      #   @return [String]
      required :id, String

      # @!attribute active
      #   Whether the employee is currently active
      #
      #   @return [Boolean]
      required :active, VitableConnectAPI::Internal::Type::Boolean

      # @!attribute created_at
      #   Timestamp when the employee was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute employer_id
      #   ID of the employer this employee works for (empr\_\*)
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute member
      #   Nested member entity containing personal identity information.
      #
      #   Matches MemberEntity from account module domain.
      #
      #   @return [VitableConnectAPI::Models::Employee::Member]
      required :member, -> { VitableConnectAPI::Employee::Member }

      # @!attribute start_date
      #   Employee's start/hire date with the employer
      #
      #   @return [Date]
      required :start_date, Date

      # @!attribute updated_at
      #   Timestamp when the employee was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute address
      #   Nested address for employee.
      #
      #   @return [VitableConnectAPI::Models::Employee::Address, nil]
      optional :address, -> { VitableConnectAPI::Employee::Address }, nil?: true

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

      # @!attribute termination_date
      #   Employee's termination date, if terminated
      #
      #   @return [Date, nil]
      optional :termination_date, Date, nil?: true

      # @!method initialize(id:, active:, created_at:, employer_id:, member:, start_date:, updated_at:, address: nil, employee_class: nil, termination_date: nil)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnectAPI::Models::Employee} for more details.
      #
      #   Serializer for Employee entity in public API responses.
      #
      #   Note: Employee is in the company module but exposed via account public API.
      #   Contains nested MemberEntity with personal identity information.
      #
      #   @param id [String] Unique employee identifier with 'empl\_' prefix
      #
      #   @param active [Boolean] Whether the employee is currently active
      #
      #   @param created_at [Time] Timestamp when the employee was created
      #
      #   @param employer_id [String] ID of the employer this employee works for (empr\_\*)
      #
      #   @param member [VitableConnectAPI::Models::Employee::Member] Nested member entity containing personal identity information.
      #
      #   @param start_date [Date] Employee's start/hire date with the employer
      #
      #   @param updated_at [Time] Timestamp when the employee was last updated
      #
      #   @param address [VitableConnectAPI::Models::Employee::Address, nil] Nested address for employee.
      #
      #   @param employee_class [Symbol, VitableConnectAPI::Models::Employers::EmployeeClass, nil] - `Full Time` - Full Time
      #
      #   @param termination_date [Date, nil] Employee's termination date, if terminated

      # @see VitableConnectAPI::Models::Employee#member
      class Member < VitableConnectAPI::Internal::Type::BaseModel
        # @!attribute id
        #   Unique member identifier with 'mbr\_' prefix
        #
        #   @return [String]
        required :id, String

        # @!attribute date_of_birth
        #   Member's date of birth (YYYY-MM-DD)
        #
        #   @return [Date]
        required :date_of_birth, Date

        # @!attribute first_name
        #   Member's legal first name
        #
        #   @return [String]
        required :first_name, String

        # @!attribute last_name
        #   Member's legal last name
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

        # @!attribute email
        #   Email address for communications
        #
        #   @return [String, nil]
        optional :email, String, nil?: true

        # @!attribute gender
        #   Gender identity, if provided
        #
        #   @return [String, nil]
        optional :gender, String, nil?: true

        # @!attribute phone
        #   Phone number
        #
        #   @return [String, nil]
        optional :phone, String, nil?: true

        # @!attribute suffix
        #   Name suffix (e.g., Jr., Sr., III)
        #
        #   @return [String, nil]
        optional :suffix, String, nil?: true

        # @!method initialize(id:, date_of_birth:, first_name:, last_name:, sex:, email: nil, gender: nil, phone: nil, suffix: nil)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnectAPI::Models::Employee::Member} for more details.
        #
        #   Nested member entity containing personal identity information.
        #
        #   Matches MemberEntity from account module domain.
        #
        #   @param id [String] Unique member identifier with 'mbr\_' prefix
        #
        #   @param date_of_birth [Date] Member's date of birth (YYYY-MM-DD)
        #
        #   @param first_name [String] Member's legal first name
        #
        #   @param last_name [String] Member's legal last name
        #
        #   @param sex [Symbol, VitableConnectAPI::Models::Sex] - `Male` - Male
        #
        #   @param email [String, nil] Email address for communications
        #
        #   @param gender [String, nil] Gender identity, if provided
        #
        #   @param phone [String, nil] Phone number
        #
        #   @param suffix [String, nil] Name suffix (e.g., Jr., Sr., III)
      end

      # @see VitableConnectAPI::Models::Employee#address
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
        #   Nested address for employee.
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
