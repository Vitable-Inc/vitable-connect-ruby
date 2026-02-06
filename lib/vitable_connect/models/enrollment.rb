# frozen_string_literal: true

module VitableConnect
  module Models
    class Enrollment < VitableConnect::Internal::Type::BaseModel
      # @!attribute id
      #   Unique enrollment identifier with 'enrl\_' prefix
      #
      #   @return [String]
      required :id, String

      # @!attribute benefit_product_id
      #   ID of the benefit product (bprd\_\*)
      #
      #   @return [String]
      required :benefit_product_id, String

      # @!attribute coverage_tier
      #   - `Unspecified` - Unspecified
      #   - `EE` - Ee
      #   - `ES` - Es
      #   - `EC` - Ec
      #   - `EF` - Ef
      #
      #   @return [Symbol, VitableConnect::Models::CoverageTier]
      required :coverage_tier, enum: -> { VitableConnect::CoverageTier }

      # @!attribute created_at
      #   Timestamp when the enrollment was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute employee_id
      #   ID of the employee (empl\_\*)
      #
      #   @return [String]
      required :employee_id, String

      # @!attribute plan_year_id
      #   ID of the plan year (plyr\_\*)
      #
      #   @return [String]
      required :plan_year_id, String

      # @!attribute status
      #   - `pending` - Pending
      #   - `enrolled` - Enrolled
      #   - `waived` - Waived
      #   - `inactive` - Inactive
      #
      #   @return [Symbol, VitableConnect::Models::Employees::EnrollmentStatus]
      required :status, enum: -> { VitableConnect::Employees::EnrollmentStatus }

      # @!attribute updated_at
      #   Timestamp when the enrollment was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute coverage_end_date
      #   Date when coverage ends
      #
      #   @return [Date, nil]
      optional :coverage_end_date, Date, nil?: true

      # @!attribute coverage_start_date
      #   Date when coverage begins
      #
      #   @return [Date, nil]
      optional :coverage_start_date, Date, nil?: true

      # @!attribute decision
      #   Employee's election decision: 'enrolled' (accepted) or 'waived' (declined)
      #
      #   @return [String, nil]
      optional :decision, String, nil?: true

      # @!attribute employee_contribution_cents
      #   Employee's monthly contribution in cents
      #
      #   @return [Integer, nil]
      optional :employee_contribution_cents, Integer, nil?: true

      # @!attribute employer_contribution_cents
      #   Employer's monthly contribution in cents
      #
      #   @return [Integer, nil]
      optional :employer_contribution_cents, Integer, nil?: true

      # @!attribute enrolled_dependents
      #   List of dependents included in this enrollment
      #
      #   @return [Array<VitableConnect::Models::Enrollment::EnrolledDependent>, nil]
      optional :enrolled_dependents,
               -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Enrollment::EnrolledDependent] }

      # @!attribute selected_plan_id
      #   ID of the selected plan (plan\_\*), if enrolled
      #
      #   @return [String, nil]
      optional :selected_plan_id, String, nil?: true

      # @!attribute selected_plan_name
      #   Name of the selected plan
      #
      #   @return [String, nil]
      optional :selected_plan_name, String, nil?: true

      # @!method initialize(id:, benefit_product_id:, coverage_tier:, created_at:, employee_id:, plan_year_id:, status:, updated_at:, coverage_end_date: nil, coverage_start_date: nil, decision: nil, employee_contribution_cents: nil, employer_contribution_cents: nil, enrolled_dependents: nil, selected_plan_id: nil, selected_plan_name: nil)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::Enrollment} for more details.
      #
      #   Serializer for Enrollment entity in public API responses.
      #
      #   An Enrollment represents an employee's benefit enrollment for a specific plan
      #   year.
      #
      #   @param id [String] Unique enrollment identifier with 'enrl\_' prefix
      #
      #   @param benefit_product_id [String] ID of the benefit product (bprd\_\*)
      #
      #   @param coverage_tier [Symbol, VitableConnect::Models::CoverageTier] - `Unspecified` - Unspecified
      #
      #   @param created_at [Time] Timestamp when the enrollment was created
      #
      #   @param employee_id [String] ID of the employee (empl\_\*)
      #
      #   @param plan_year_id [String] ID of the plan year (plyr\_\*)
      #
      #   @param status [Symbol, VitableConnect::Models::Employees::EnrollmentStatus] - `pending` - Pending
      #
      #   @param updated_at [Time] Timestamp when the enrollment was last updated
      #
      #   @param coverage_end_date [Date, nil] Date when coverage ends
      #
      #   @param coverage_start_date [Date, nil] Date when coverage begins
      #
      #   @param decision [String, nil] Employee's election decision: 'enrolled' (accepted) or 'waived' (declined)
      #
      #   @param employee_contribution_cents [Integer, nil] Employee's monthly contribution in cents
      #
      #   @param employer_contribution_cents [Integer, nil] Employer's monthly contribution in cents
      #
      #   @param enrolled_dependents [Array<VitableConnect::Models::Enrollment::EnrolledDependent>] List of dependents included in this enrollment
      #
      #   @param selected_plan_id [String, nil] ID of the selected plan (plan\_\*), if enrolled
      #
      #   @param selected_plan_name [String, nil] Name of the selected plan

      class EnrolledDependent < VitableConnect::Internal::Type::BaseModel
        # @!attribute dependent_id
        #   ID of the dependent (dpnd\_\*)
        #
        #   @return [String]
        required :dependent_id, String

        # @!attribute first_name
        #   Dependent's first name
        #
        #   @return [String]
        required :first_name, String

        # @!attribute last_name
        #   Dependent's last name
        #
        #   @return [String]
        required :last_name, String

        # @!attribute relationship
        #   - `Spouse` - Spouse
        #   - `Child` - Child
        #
        #   @return [Symbol, VitableConnect::Models::Members::Relationship]
        required :relationship, enum: -> { VitableConnect::Members::Relationship }

        # @!method initialize(dependent_id:, first_name:, last_name:, relationship:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::Enrollment::EnrolledDependent} for more details.
        #
        #   Dependent included in an enrollment.
        #
        #   @param dependent_id [String] ID of the dependent (dpnd\_\*)
        #
        #   @param first_name [String] Dependent's first name
        #
        #   @param last_name [String] Dependent's last name
        #
        #   @param relationship [Symbol, VitableConnect::Models::Members::Relationship] - `Spouse` - Spouse
      end
    end
  end
end
