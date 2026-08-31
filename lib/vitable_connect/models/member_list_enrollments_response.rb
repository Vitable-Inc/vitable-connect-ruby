# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Members#list_enrollments
    class MemberListEnrollmentsResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<VitableConnect::Models::MemberListEnrollmentsResponse::Data>]
      required :data,
               -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::MemberListEnrollmentsResponse::Data] }

      # @!method initialize(data:)
      #   Unpaginated `{"data": [...]}` list of member enrollments.
      #
      #   @param data [Array<VitableConnect::Models::MemberListEnrollmentsResponse::Data>]

      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute id
        #   Opaque, stable enrollment identifier used to target enrollment actions
        #
        #   @return [String]
        required :id, String

        # @!attribute benefit_plan_year_id
        #   Exact benefit plan-year identifier for this enrollment
        #
        #   @return [String]
        required :benefit_plan_year_id, String

        # @!attribute benefit_type
        #   - `Medical` - Medical
        #   - `Dental` - Dental
        #   - `Vision` - Vision
        #   - `Hospital` - Hospital
        #
        #   @return [Symbol, VitableConnect::Models::MemberListEnrollmentsResponse::Data::BenefitType]
        required :benefit_type,
                 enum: -> { VitableConnect::Models::MemberListEnrollmentsResponse::Data::BenefitType }

        # @!attribute cancelled_date
        #   Earliest applicable coverage boundary (YYYY-MM-DD) when coverage was cancelled
        #   before its effective start; null unless the enrollment was cancelled
        #
        #   @return [Date, nil]
        required :cancelled_date, Date, nil?: true

        # @!attribute election_status
        #   - `Enrolled` - Enrolled
        #   - `Waived` - Waived
        #   - `Pending` - Pending
        #   - `Expired` - Expired
        #
        #   @return [Symbol, VitableConnect::Models::MemberListEnrollmentsResponse::Data::ElectionStatus]
        required :election_status,
                 enum: -> { VitableConnect::Models::MemberListEnrollmentsResponse::Data::ElectionStatus }

        # @!attribute employer_id
        #   Exact employer identifier for this enrollment
        #
        #   @return [String]
        required :employer_id, String

        # @!attribute employer_name
        #   Name of the employer the enrollment is through
        #
        #   @return [String]
        required :employer_name, String

        # @!attribute enrollment_window_start
        #   Enrollment / open-enrollment window start date (YYYY-MM-DD)
        #
        #   @return [Date]
        required :enrollment_window_start, Date

        # @!attribute ichra_affordability
        #   How this member's monthly share compares with the ACA affordability line for
        #   their income. Null unless the row is an ICHRA election whose plan year, premium
        #   and the member's individual income are all on file.
        #
        #   @return [VitableConnect::Models::MemberListEnrollmentsResponse::Data::IchraAffordability, nil]
        required :ichra_affordability,
                 -> { VitableConnect::Models::MemberListEnrollmentsResponse::Data::IchraAffordability },
                 nil?: true

        # @!attribute in_last_month_of_coverage
        #   True when today falls in the final month of the plan-year coverage window;
        #   drives end-of-coverage enrollment actions on the client.
        #
        #   @return [Boolean]
        required :in_last_month_of_coverage, VitableConnect::Internal::Type::Boolean

        # @!attribute is_within_enrollment_window
        #   True when today falls inside the enrollment window this member has to answer in;
        #   drives enrollment-action availability on the client.
        #
        #   @return [Boolean]
        required :is_within_enrollment_window, VitableConnect::Internal::Type::Boolean

        # @!attribute issued_date
        #   Date the enrollment record was created (YYYY-MM-DD), the value Ops labels Issued
        #   on. Present on every row whatever the member answered, and distinct from
        #   `coverage_start`. It does not imply the member could answer the enrollment on
        #   that date; the window they can answer in is
        #   `enrollment_window_start`/`enrollment_window_end`.
        #
        #   @return [Date]
        required :issued_date, Date

        # @!attribute plan_year_coverage_end
        #   Benefit plan-year coverage end date (YYYY-MM-DD), distinct from this
        #   enrollment's coverage_end; null when the plan year is open-ended
        #
        #   @return [Date, nil]
        required :plan_year_coverage_end, Date, nil?: true

        # @!attribute policy_status
        #   - `Coverage Upcoming` - Coverage Upcoming
        #   - `Coverage Effective` - Coverage Effective
        #   - `Coverage Ended` - Coverage Ended
        #   - `Cancelled` - Cancelled
        #
        #   @return [Symbol, VitableConnect::Models::MemberListEnrollmentsResponse::Data::PolicyStatus, nil]
        required :policy_status,
                 enum: -> { VitableConnect::Models::MemberListEnrollmentsResponse::Data::PolicyStatus },
                 nil?: true

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
        #   @return [Symbol, VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode]
        required :product_code,
                 enum: -> { VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode }

        # @!attribute product_name
        #   Display name of the benefit product
        #
        #   @return [String]
        required :product_name, String

        # @!attribute requires_qle_for_reissue
        #   Whether a qualifying life event would be required to reissue this enrollment
        #   under the product and open-enrollment rule at the time this list was read
        #
        #   @return [Boolean]
        required :requires_qle_for_reissue, VitableConnect::Internal::Type::Boolean

        # @!attribute carrier_name
        #   Insurance carrier name; null when no active carrier period is resolvable
        #
        #   @return [String, nil]
        optional :carrier_name, String, nil?: true

        # @!attribute coverage_end
        #   Coverage window end date (YYYY-MM-DD); null while coverage is open-ended
        #
        #   @return [Date, nil]
        optional :coverage_end, Date, nil?: true

        # @!attribute coverage_start
        #   Coverage window start date (YYYY-MM-DD)
        #
        #   @return [Date, nil]
        optional :coverage_start, Date, nil?: true

        # @!attribute employee_deduction_in_cents
        #   Employee monthly payroll deduction in cents; null unless the row is an election
        #
        #   @return [Integer, nil]
        optional :employee_deduction_in_cents, Integer, nil?: true

        # @!attribute employer_contribution_in_cents
        #   Employer monthly contribution in cents; null unless the row is an election
        #
        #   @return [Integer, nil]
        optional :employer_contribution_in_cents, Integer, nil?: true

        # @!attribute enrollment_window_end
        #   Enrollment / open-enrollment window end date (YYYY-MM-DD); null when open-ended
        #
        #   @return [Date, nil]
        optional :enrollment_window_end, Date, nil?: true

        # @!attribute plan_name
        #   Chosen benefit plan name; null unless the row is an election
        #
        #   @return [String, nil]
        optional :plan_name, String, nil?: true

        # @!attribute premium_in_cents
        #   Total monthly plan premium in cents; null unless the row is an election
        #
        #   @return [Integer, nil]
        optional :premium_in_cents, Integer, nil?: true

        # @!attribute tier_name
        #   Chosen benefit plan tier name (e.g., Employee Only); null unless the row is an
        #   election
        #
        #   @return [String, nil]
        optional :tier_name, String, nil?: true

        # @!method initialize(id:, benefit_plan_year_id:, benefit_type:, cancelled_date:, election_status:, employer_id:, employer_name:, enrollment_window_start:, ichra_affordability:, in_last_month_of_coverage:, is_within_enrollment_window:, issued_date:, plan_year_coverage_end:, policy_status:, product_code:, product_name:, requires_qle_for_reissue:, carrier_name: nil, coverage_end: nil, coverage_start: nil, employee_deduction_in_cents: nil, employer_contribution_in_cents: nil, enrollment_window_end: nil, plan_name: nil, premium_in_cents: nil, tier_name: nil)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::MemberListEnrollmentsResponse::Data} for more details.
        #
        #   Wire serializer for :class:`MemberEnrollmentDTO` (one benefit enrollment row).
        #
        #   @param id [String] Opaque, stable enrollment identifier used to target enrollment actions
        #
        #   @param benefit_plan_year_id [String] Exact benefit plan-year identifier for this enrollment
        #
        #   @param benefit_type [Symbol, VitableConnect::Models::MemberListEnrollmentsResponse::Data::BenefitType] - `Medical` - Medical
        #
        #   @param cancelled_date [Date, nil] Earliest applicable coverage boundary (YYYY-MM-DD) when coverage was cancelled b
        #
        #   @param election_status [Symbol, VitableConnect::Models::MemberListEnrollmentsResponse::Data::ElectionStatus] - `Enrolled` - Enrolled
        #
        #   @param employer_id [String] Exact employer identifier for this enrollment
        #
        #   @param employer_name [String] Name of the employer the enrollment is through
        #
        #   @param enrollment_window_start [Date] Enrollment / open-enrollment window start date (YYYY-MM-DD)
        #
        #   @param ichra_affordability [VitableConnect::Models::MemberListEnrollmentsResponse::Data::IchraAffordability, nil] How this member's monthly share compares with the ACA affordability line for the
        #
        #   @param in_last_month_of_coverage [Boolean] True when today falls in the final month of the plan-year coverage window; drive
        #
        #   @param is_within_enrollment_window [Boolean] True when today falls inside the enrollment window this member has to answer in;
        #
        #   @param issued_date [Date] Date the enrollment record was created (YYYY-MM-DD), the value Ops labels Issued
        #
        #   @param plan_year_coverage_end [Date, nil] Benefit plan-year coverage end date (YYYY-MM-DD), distinct from this enrollment'
        #
        #   @param policy_status [Symbol, VitableConnect::Models::MemberListEnrollmentsResponse::Data::PolicyStatus, nil] - `Coverage Upcoming` - Coverage Upcoming
        #
        #   @param product_code [Symbol, VitableConnect::Models::MemberListEnrollmentsResponse::Data::ProductCode] - `EBA` - Eba Mec
        #
        #   @param product_name [String] Display name of the benefit product
        #
        #   @param requires_qle_for_reissue [Boolean] Whether a qualifying life event would be required to reissue this enrollment und
        #
        #   @param carrier_name [String, nil] Insurance carrier name; null when no active carrier period is resolvable
        #
        #   @param coverage_end [Date, nil] Coverage window end date (YYYY-MM-DD); null while coverage is open-ended
        #
        #   @param coverage_start [Date, nil] Coverage window start date (YYYY-MM-DD)
        #
        #   @param employee_deduction_in_cents [Integer, nil] Employee monthly payroll deduction in cents; null unless the row is an election
        #
        #   @param employer_contribution_in_cents [Integer, nil] Employer monthly contribution in cents; null unless the row is an election
        #
        #   @param enrollment_window_end [Date, nil] Enrollment / open-enrollment window end date (YYYY-MM-DD); null when open-ended
        #
        #   @param plan_name [String, nil] Chosen benefit plan name; null unless the row is an election
        #
        #   @param premium_in_cents [Integer, nil] Total monthly plan premium in cents; null unless the row is an election
        #
        #   @param tier_name [String, nil] Chosen benefit plan tier name (e.g., Employee Only); null unless the row is an e

        # - `Medical` - Medical
        # - `Dental` - Dental
        # - `Vision` - Vision
        # - `Hospital` - Hospital
        #
        # @see VitableConnect::Models::MemberListEnrollmentsResponse::Data#benefit_type
        module BenefitType
          extend VitableConnect::Internal::Type::Enum

          MEDICAL = :Medical
          DENTAL = :Dental
          VISION = :Vision
          HOSPITAL = :Hospital

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # - `Enrolled` - Enrolled
        # - `Waived` - Waived
        # - `Pending` - Pending
        # - `Expired` - Expired
        #
        # @see VitableConnect::Models::MemberListEnrollmentsResponse::Data#election_status
        module ElectionStatus
          extend VitableConnect::Internal::Type::Enum

          ENROLLED = :Enrolled
          WAIVED = :Waived
          PENDING = :Pending
          EXPIRED = :Expired

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see VitableConnect::Models::MemberListEnrollmentsResponse::Data#ichra_affordability
        class IchraAffordability < VitableConnect::Internal::Type::BaseModel
          # @!attribute is_affordable
          #   True when `employee_deduction_in_cents` is at or below the IRS affordability
          #   percentage of the member's individual income for the year this plan year
          #   started. It measures what the member pays for the plan they chose, so it is
          #   **not** a statement that the employer's offer satisfies the ACA employer
          #   mandate: that test is benchmarked against the lowest-cost silver plan at
          #   self-only coverage, which this does not use.
          #
          #   @return [Boolean]
          required :is_affordable, VitableConnect::Internal::Type::Boolean

          # @!method initialize(is_affordable:)
          #   Some parameter documentations has been truncated, see
          #   {VitableConnect::Models::MemberListEnrollmentsResponse::Data::IchraAffordability}
          #   for more details.
          #
          #   How this member's monthly share compares with the ACA affordability line for
          #   their income. Null unless the row is an ICHRA election whose plan year, premium
          #   and the member's individual income are all on file.
          #
          #   @param is_affordable [Boolean] True when `employee_deduction_in_cents` is at or below the IRS affordability per
        end

        # - `Coverage Upcoming` - Coverage Upcoming
        # - `Coverage Effective` - Coverage Effective
        # - `Coverage Ended` - Coverage Ended
        # - `Cancelled` - Cancelled
        #
        # @see VitableConnect::Models::MemberListEnrollmentsResponse::Data#policy_status
        module PolicyStatus
          extend VitableConnect::Internal::Type::Enum

          COVERAGE_UPCOMING = :"Coverage Upcoming"
          COVERAGE_EFFECTIVE = :"Coverage Effective"
          COVERAGE_ENDED = :"Coverage Ended"
          CANCELLED = :Cancelled

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
        # @see VitableConnect::Models::MemberListEnrollmentsResponse::Data#product_code
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
