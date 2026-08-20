# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#list_benefit_plan_year_enrollments
    class EmployerListBenefitPlanYearEnrollmentsResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute carrier
      #   The carrier for this enrollment: the individual-market carrier for an ICHRA
      #   plan, otherwise the benefit's own. Null when the benefit has no carrier.
      #
      #   @return [String, nil]
      required :carrier, String, nil?: true

      # @!attribute dependent_count
      #   Dependents covered under this enrollment today. Counts the same dependents
      #   `premium_in_cents` is priced for, so a dependent whose termination is dated in
      #   the future still counts.
      #
      #   @return [Integer]
      required :dependent_count, Integer

      # @!attribute election_status
      #   - `Enrolled` - Enrolled
      #   - `Waived` - Waived
      #   - `Pending` - Pending
      #   - `Expired` - Expired
      #
      #   @return [Symbol, VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::ElectionStatus]
      required :election_status,
               enum: -> { VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::ElectionStatus }

      # @!attribute employee_deduction_in_cents
      #   What the employee is deducted monthly, in cents: `premium_in_cents` less
      #   `employer_contribution_in_cents`, floored at zero. Null when unanswered/waived.
      #
      #   @return [Integer, nil]
      required :employee_deduction_in_cents, Integer, nil?: true

      # @!attribute employee_external_reference_id
      #   Your own reference id for this employee, as you supplied it. Null when you have
      #   not set one.
      #
      #   @return [String, nil]
      required :employee_external_reference_id, String, nil?: true

      # @!attribute employee_id
      #   Our id for this person's employment with this employer (`empl_<...>`). A person
      #   who leaves and is rehired has two.
      #
      #   @return [String]
      required :employee_id, String

      # @!attribute employer_contribution_in_cents
      #   The employer's monthly share of `premium_in_cents`, in cents. Null when
      #   unanswered/waived.
      #
      #   @return [Integer, nil]
      required :employer_contribution_in_cents, Integer, nil?: true

      # @!attribute member_first_name
      #   The member's first name.
      #
      #   @return [String]
      required :member_first_name, String

      # @!attribute member_id
      #   Our id for the person (`mbr_<...>`). Stable across every employer they work for.
      #
      #   @return [String]
      required :member_id, String

      # @!attribute member_last_name
      #   The member's last name.
      #
      #   @return [String]
      required :member_last_name, String

      # @!attribute plan
      #   Chosen plan name, or null when unanswered/waived.
      #
      #   @return [String, nil]
      required :plan, String, nil?: true

      # @!attribute policy_status
      #   - `Coverage Upcoming` - Coverage Upcoming
      #   - `Coverage Effective` - Coverage Effective
      #   - `Coverage Ended` - Coverage Ended
      #
      #   @return [Symbol, VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::PolicyStatus, nil]
      required :policy_status,
               enum: -> { VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::PolicyStatus },
               nil?: true

      # @!attribute premium_in_cents
      #   Monthly premium in cents for the chosen plan, dependents included. The plan's
      #   own cost, not the employer's share of it. Null when unanswered/waived.
      #
      #   @return [Integer, nil]
      required :premium_in_cents, Integer, nil?: true

      # @!attribute tier
      #   Chosen coverage tier, or null when unanswered/waived.
      #
      #   @return [String, nil]
      required :tier, String, nil?: true

      # @!method initialize(carrier:, dependent_count:, election_status:, employee_deduction_in_cents:, employee_external_reference_id:, employee_id:, employer_contribution_in_cents:, member_first_name:, member_id:, member_last_name:, plan:, policy_status:, premium_in_cents:, tier:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse} for
      #   more details.
      #
      #   @param carrier [String, nil] The carrier for this enrollment: the individual-market carrier for an ICHRA plan
      #
      #   @param dependent_count [Integer] Dependents covered under this enrollment today. Counts the same dependents `prem
      #
      #   @param election_status [Symbol, VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::ElectionStatus] - `Enrolled` - Enrolled
      #
      #   @param employee_deduction_in_cents [Integer, nil] What the employee is deducted monthly, in cents: `premium_in_cents` less `employ
      #
      #   @param employee_external_reference_id [String, nil] Your own reference id for this employee, as you supplied it. Null when you have
      #
      #   @param employee_id [String] Our id for this person's employment with this employer (`empl_<...>`). A person
      #
      #   @param employer_contribution_in_cents [Integer, nil] The employer's monthly share of `premium_in_cents`, in cents. Null when unanswer
      #
      #   @param member_first_name [String] The member's first name.
      #
      #   @param member_id [String] Our id for the person (`mbr_<...>`). Stable across every employer they work for.
      #
      #   @param member_last_name [String] The member's last name.
      #
      #   @param plan [String, nil] Chosen plan name, or null when unanswered/waived.
      #
      #   @param policy_status [Symbol, VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::PolicyStatus, nil] - `Coverage Upcoming` - Coverage Upcoming
      #
      #   @param premium_in_cents [Integer, nil] Monthly premium in cents for the chosen plan, dependents included. The plan's ow
      #
      #   @param tier [String, nil] Chosen coverage tier, or null when unanswered/waived.

      # - `Enrolled` - Enrolled
      # - `Waived` - Waived
      # - `Pending` - Pending
      # - `Expired` - Expired
      #
      # @see VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse#election_status
      module ElectionStatus
        extend VitableConnect::Internal::Type::Enum

        ENROLLED = :Enrolled
        WAIVED = :Waived
        PENDING = :Pending
        EXPIRED = :Expired

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # - `Coverage Upcoming` - Coverage Upcoming
      # - `Coverage Effective` - Coverage Effective
      # - `Coverage Ended` - Coverage Ended
      #
      # @see VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse#policy_status
      module PolicyStatus
        extend VitableConnect::Internal::Type::Enum

        COVERAGE_UPCOMING = :"Coverage Upcoming"
        COVERAGE_EFFECTIVE = :"Coverage Effective"
        COVERAGE_ENDED = :"Coverage Ended"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
