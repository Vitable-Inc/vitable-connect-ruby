# frozen_string_literal: true

module VitableConnect
  module Models
    class Employee < VitableConnect::Internal::Type::BaseModel
      # @!attribute created_at
      #   Timestamp when the employee was created
      #
      #   @return [Time]
      required :created_at, Time

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

      # @!attribute enrollments
      #   Benefit enrollments for this employee
      #
      #   @return [Array<VitableConnect::Models::Employee::Enrollment>]
      required :enrollments,
               -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Employee::Enrollment] }

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

      # @!attribute updated_at
      #   Timestamp when the employee was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute address
      #   Employee's residential address
      #
      #   @return [VitableConnect::Models::Employee::Address, nil]
      optional :address, -> { VitableConnect::Employee::Address }, nil?: true

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
      #   Gender identity, if provided
      #
      #   @return [String, nil]
      optional :gender, String, nil?: true

      # @!attribute hire_date
      #   Employee's hire date with the employer
      #
      #   @return [Date, nil]
      optional :hire_date, Date, nil?: true

      # @!attribute phone
      #   Phone number (10-digit US domestic string)
      #
      #   @return [String, nil]
      optional :phone, String, nil?: true

      # @!attribute reference_id
      #   Partner-assigned reference ID for the employee
      #
      #   @return [String, nil]
      optional :reference_id, String, nil?: true

      # @!attribute suffix
      #   Name suffix (e.g., Jr., Sr., III)
      #
      #   @return [String, nil]
      optional :suffix, String, nil?: true

      # @!attribute termination_date
      #   Employee's termination date, if terminated
      #
      #   @return [Date, nil]
      optional :termination_date, Date, nil?: true

      response_only do
        # @!attribute id
        #   Unique employee identifier with 'empl\_' prefix
        #
        #   @return [String]
        required :id, String

        # @!attribute member_id
        #   Unique member identifier with 'mbr\_' prefix
        #
        #   @return [String]
        required :member_id, String

        # @!attribute status
        #   Employee status (active or terminated)
        #
        #   @return [String]
        required :status, String
      end

      # @!method initialize(id:, created_at:, date_of_birth:, email:, enrollments:, first_name:, last_name:, member_id:, status:, updated_at:, address: nil, employee_class: nil, gender: nil, hire_date: nil, phone: nil, reference_id: nil, suffix: nil, termination_date: nil)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::Employee} for more details.
      #
      #   @param id [String] Unique employee identifier with 'empl\_' prefix
      #
      #   @param created_at [Time] Timestamp when the employee was created
      #
      #   @param date_of_birth [Date] Date of birth (YYYY-MM-DD)
      #
      #   @param email [String] Email address
      #
      #   @param enrollments [Array<VitableConnect::Models::Employee::Enrollment>] Benefit enrollments for this employee
      #
      #   @param first_name [String] Employee's legal first name
      #
      #   @param last_name [String] Employee's legal last name
      #
      #   @param member_id [String] Unique member identifier with 'mbr\_' prefix
      #
      #   @param status [String] Employee status (active or terminated)
      #
      #   @param updated_at [Time] Timestamp when the employee was last updated
      #
      #   @param address [VitableConnect::Models::Employee::Address, nil] Employee's residential address
      #
      #   @param employee_class [Symbol, VitableConnect::Models::EmployeeClass, nil] - `Full Time` - Full Time
      #
      #   @param gender [String, nil] Gender identity, if provided
      #
      #   @param hire_date [Date, nil] Employee's hire date with the employer
      #
      #   @param phone [String, nil] Phone number (10-digit US domestic string)
      #
      #   @param reference_id [String, nil] Partner-assigned reference ID for the employee
      #
      #   @param suffix [String, nil] Name suffix (e.g., Jr., Sr., III)
      #
      #   @param termination_date [Date, nil] Employee's termination date, if terminated

      class Enrollment < VitableConnect::Internal::Type::BaseModel
        # @!attribute status
        #   - `pending` - Pending
        #   - `enrolled` - Enrolled
        #   - `waived` - Waived
        #   - `inactive` - Inactive
        #
        #   @return [Symbol, VitableConnect::Models::EnrollmentStatus]
        required :status, enum: -> { VitableConnect::EnrollmentStatus }

        # @!attribute answered_at
        #   Timestamp when the enrollment decision was made
        #
        #   @return [Time, nil]
        optional :answered_at, Time, nil?: true

        response_only do
          # @!attribute id
          #   Unique enrollment identifier with 'enrl\_' prefix
          #
          #   @return [String]
          required :id, String
        end

        # @!method initialize(id:, status:, answered_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::Employee::Enrollment} for more details.
        #
        #   @param id [String] Unique enrollment identifier with 'enrl\_' prefix
        #
        #   @param status [Symbol, VitableConnect::Models::EnrollmentStatus] - `pending` - Pending
        #
        #   @param answered_at [Time, nil] Timestamp when the enrollment decision was made
      end

      # @see VitableConnect::Models::Employee#address
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
        #   Employee's residential address
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
