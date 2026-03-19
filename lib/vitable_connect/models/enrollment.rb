# frozen_string_literal: true

module VitableConnect
  module Models
    class Enrollment < VitableConnect::Internal::Type::BaseModel
      # @!attribute id
      #   Unique enrollment identifier (enrl\_\*)
      #
      #   @return [String]
      required :id, String

      # @!attribute answered_at
      #   When the employee enrolled or waived
      #
      #   @return [Time, nil]
      required :answered_at, Time, nil?: true

      # @!attribute benefit
      #   Nested benefit product summary
      #
      #   @return [VitableConnect::Models::Enrollment::Benefit]
      required :benefit, -> { VitableConnect::Enrollment::Benefit }

      # @!attribute coverage_end
      #   Coverage period end date
      #
      #   @return [Date, nil]
      required :coverage_end, Date, nil?: true

      # @!attribute coverage_start
      #   Coverage period start date
      #
      #   @return [Date]
      required :coverage_start, Date

      # @!attribute created_at
      #   When the enrollment was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute employee_deduction_in_cents
      #   Employee monthly payroll deduction in cents
      #
      #   @return [Integer, nil]
      required :employee_deduction_in_cents, Integer, nil?: true

      # @!attribute employee_id
      #   Employee ID (empl\_\*)
      #
      #   @return [String]
      required :employee_id, String

      # @!attribute employer_contribution_in_cents
      #   Employer monthly contribution in cents
      #
      #   @return [Integer, nil]
      required :employer_contribution_in_cents, Integer, nil?: true

      # @!attribute employer_id
      #   Employer ID (empr\_\*)
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute status
      #   - `pending` - Pending
      #   - `enrolled` - Enrolled
      #   - `waived` - Waived
      #   - `inactive` - Inactive
      #
      #   @return [Symbol, VitableConnect::Models::EnrollmentStatus]
      required :status, enum: -> { VitableConnect::EnrollmentStatus }

      # @!attribute terminated_at
      #   When coverage was terminated
      #
      #   @return [Time, nil]
      required :terminated_at, Time, nil?: true

      # @!attribute updated_at
      #   When the enrollment was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, answered_at:, benefit:, coverage_end:, coverage_start:, created_at:, employee_deduction_in_cents:, employee_id:, employer_contribution_in_cents:, employer_id:, status:, terminated_at:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::Enrollment} for more details.
      #
      #   @param id [String] Unique enrollment identifier (enrl\_\*)
      #
      #   @param answered_at [Time, nil] When the employee enrolled or waived
      #
      #   @param benefit [VitableConnect::Models::Enrollment::Benefit] Nested benefit product summary
      #
      #   @param coverage_end [Date, nil] Coverage period end date
      #
      #   @param coverage_start [Date] Coverage period start date
      #
      #   @param created_at [Time] When the enrollment was created
      #
      #   @param employee_deduction_in_cents [Integer, nil] Employee monthly payroll deduction in cents
      #
      #   @param employee_id [String] Employee ID (empl\_\*)
      #
      #   @param employer_contribution_in_cents [Integer, nil] Employer monthly contribution in cents
      #
      #   @param employer_id [String] Employer ID (empr\_\*)
      #
      #   @param status [Symbol, VitableConnect::Models::EnrollmentStatus] - `pending` - Pending
      #
      #   @param terminated_at [Time, nil] When coverage was terminated
      #
      #   @param updated_at [Time] When the enrollment was last updated

      # @see VitableConnect::Models::Enrollment#benefit
      class Benefit < VitableConnect::Internal::Type::BaseModel
        # @!attribute id
        #   Benefit product ID (bprd\_\*)
        #
        #   @return [String]
        required :id, String

        # @!attribute category
        #   - `Medical` - Medical
        #   - `Dental` - Dental
        #   - `Vision` - Vision
        #   - `Hospital` - Hospital
        #
        #   @return [Symbol, VitableConnect::Models::Enrollment::Benefit::Category]
        required :category, enum: -> { VitableConnect::Enrollment::Benefit::Category }

        # @!attribute name
        #   Display name of the benefit product
        #
        #   @return [String]
        required :name, String

        # @!attribute product_code
        #   - `EBA` - Eba Mec
        #   - `VPC` - Vpc Enhanced
        #   - `VPC_CORE` - Vpc Core
        #   - `MEC` - Vpc Mec
        #   - `MEC2` - Mec2
        #   - `MEC_PLUS` - Mec Plus
        #   - `MVP` - Mvp
        #   - `MVP2` - Mvp2
        #   - `MVPSL` - Mvpsl
        #   - `MVPSL2` - Mvpsl2
        #   - `VD` - Dental
        #   - `VV` - Vision
        #   - `ICHRA` - Ichra
        #   - `ICHRA_PREMIUM_PLUS` - Ichra Premium Plus
        #   - `ICHRA_REIMBURSEMENT_ONLY` - Ichra Reimbursement Only
        #
        #   @return [Symbol, VitableConnect::Models::Enrollment::Benefit::ProductCode]
        required :product_code, enum: -> { VitableConnect::Enrollment::Benefit::ProductCode }

        # @!method initialize(id:, category:, name:, product_code:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::Enrollment::Benefit} for more details.
        #
        #   Nested benefit product summary
        #
        #   @param id [String] Benefit product ID (bprd\_\*)
        #
        #   @param category [Symbol, VitableConnect::Models::Enrollment::Benefit::Category] - `Medical` - Medical
        #
        #   @param name [String] Display name of the benefit product
        #
        #   @param product_code [Symbol, VitableConnect::Models::Enrollment::Benefit::ProductCode] - `EBA` - Eba Mec

        # - `Medical` - Medical
        # - `Dental` - Dental
        # - `Vision` - Vision
        # - `Hospital` - Hospital
        #
        # @see VitableConnect::Models::Enrollment::Benefit#category
        module Category
          extend VitableConnect::Internal::Type::Enum

          MEDICAL = :Medical
          DENTAL = :Dental
          VISION = :Vision
          HOSPITAL = :Hospital

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # - `EBA` - Eba Mec
        # - `VPC` - Vpc Enhanced
        # - `VPC_CORE` - Vpc Core
        # - `MEC` - Vpc Mec
        # - `MEC2` - Mec2
        # - `MEC_PLUS` - Mec Plus
        # - `MVP` - Mvp
        # - `MVP2` - Mvp2
        # - `MVPSL` - Mvpsl
        # - `MVPSL2` - Mvpsl2
        # - `VD` - Dental
        # - `VV` - Vision
        # - `ICHRA` - Ichra
        # - `ICHRA_PREMIUM_PLUS` - Ichra Premium Plus
        # - `ICHRA_REIMBURSEMENT_ONLY` - Ichra Reimbursement Only
        #
        # @see VitableConnect::Models::Enrollment::Benefit#product_code
        module ProductCode
          extend VitableConnect::Internal::Type::Enum

          EBA = :EBA
          VPC = :VPC
          VPC_CORE = :VPC_CORE
          MEC = :MEC
          MEC2 = :MEC2
          MEC_PLUS = :MEC_PLUS
          MVP = :MVP
          MVP2 = :MVP2
          MVPSL = :MVPSL
          MVPSL2 = :MVPSL2
          VD = :VD
          VV = :VV
          ICHRA = :ICHRA
          ICHRA_PREMIUM_PLUS = :ICHRA_PREMIUM_PLUS
          ICHRA_REIMBURSEMENT_ONLY = :ICHRA_REIMBURSEMENT_ONLY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
