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

      # @!attribute deductions
      #   Payroll deductions from the most recent statement period. Replaced when a new
      #   statement is generated.
      #
      #   @return [Array<VitableConnect::Models::Employee::Deduction>]
      required :deductions, -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Employee::Deduction] }

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

      # @!method initialize(id:, created_at:, date_of_birth:, deductions:, email:, first_name:, last_name:, member_id:, status:, updated_at:, address: nil, employee_class: nil, gender: nil, hire_date: nil, phone: nil, reference_id: nil, suffix: nil, termination_date: nil)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::Employee} for more details.
      #
      #   @param id [String] Unique employee identifier with 'empl\_' prefix
      #
      #   @param created_at [Time] Timestamp when the employee was created
      #
      #   @param date_of_birth [Date] Date of birth (YYYY-MM-DD)
      #
      #   @param deductions [Array<VitableConnect::Models::Employee::Deduction>] Payroll deductions from the most recent statement period. Replaced when a new st
      #
      #   @param email [String] Email address
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

      class Deduction < VitableConnect::Internal::Type::BaseModel
        # @!attribute benefit_name
        #   Name of the benefit plan
        #
        #   @return [String]
        required :benefit_name, String

        # @!attribute deduction_amount_in_cents
        #   Employee deduction amount in cents
        #
        #   @return [Integer]
        required :deduction_amount_in_cents, Integer

        # @!attribute deduction_category
        #   Deduction category (reserved for future use)
        #
        #   @return [String, nil]
        required :deduction_category, String, nil?: true

        # @!attribute frequency
        #   - `weekly` - Weekly
        #   - `bi_weekly` - Bi Weekly
        #   - `semi_monthly` - Semi Monthly
        #   - `monthly` - Monthly
        #
        #   @return [Symbol, VitableConnect::Models::Employee::Deduction::Frequency]
        required :frequency, enum: -> { VitableConnect::Employee::Deduction::Frequency }

        # @!attribute period_end_date
        #   Period end date (YYYY-MM-DD)
        #
        #   @return [Date]
        required :period_end_date, Date

        # @!attribute period_start_date
        #   Period start date (YYYY-MM-DD)
        #
        #   @return [Date]
        required :period_start_date, Date

        # @!attribute tax_classification
        #   - `Unknown` - Unknown
        #   - `Pre-tax` - Pre Tax
        #   - `Post-tax` - Post Tax
        #
        #   @return [Symbol, VitableConnect::Models::Employee::Deduction::TaxClassification]
        required :tax_classification, enum: -> { VitableConnect::Employee::Deduction::TaxClassification }

        # @!method initialize(benefit_name:, deduction_amount_in_cents:, deduction_category:, frequency:, period_end_date:, period_start_date:, tax_classification:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::Employee::Deduction} for more details.
        #
        #   @param benefit_name [String] Name of the benefit plan
        #
        #   @param deduction_amount_in_cents [Integer] Employee deduction amount in cents
        #
        #   @param deduction_category [String, nil] Deduction category (reserved for future use)
        #
        #   @param frequency [Symbol, VitableConnect::Models::Employee::Deduction::Frequency] - `weekly` - Weekly
        #
        #   @param period_end_date [Date] Period end date (YYYY-MM-DD)
        #
        #   @param period_start_date [Date] Period start date (YYYY-MM-DD)
        #
        #   @param tax_classification [Symbol, VitableConnect::Models::Employee::Deduction::TaxClassification] - `Unknown` - Unknown

        # - `weekly` - Weekly
        # - `bi_weekly` - Bi Weekly
        # - `semi_monthly` - Semi Monthly
        # - `monthly` - Monthly
        #
        # @see VitableConnect::Models::Employee::Deduction#frequency
        module Frequency
          extend VitableConnect::Internal::Type::Enum

          WEEKLY = :weekly
          BI_WEEKLY = :bi_weekly
          SEMI_MONTHLY = :semi_monthly
          MONTHLY = :monthly

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # - `Unknown` - Unknown
        # - `Pre-tax` - Pre Tax
        # - `Post-tax` - Post Tax
        #
        # @see VitableConnect::Models::Employee::Deduction#tax_classification
        module TaxClassification
          extend VitableConnect::Internal::Type::Enum

          UNKNOWN = :Unknown
          PRE_TAX = :"Pre-tax"
          POST_TAX = :"Post-tax"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
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
