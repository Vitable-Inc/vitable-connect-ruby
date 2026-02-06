# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module BenefitProducts
      class PlanYear < VitableConnectAPI::Internal::Type::BaseModel
        # @!attribute id
        #   Unique plan year identifier with 'plyr\_' prefix
        #
        #   @return [String]
        required :id, String

        # @!attribute benefit_product_id
        #   ID of the benefit product (bprd\_\*)
        #
        #   @return [String]
        required :benefit_product_id, String

        # @!attribute contribution_classes
        #   List of contribution classes defining eligibility tiers and cost structures
        #
        #   @return [Array<VitableConnectAPI::Models::BenefitProducts::PlanYear::ContributionClass>]
        required :contribution_classes,
                 -> { VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::BenefitProducts::PlanYear::ContributionClass] }

        # @!attribute coverage_end
        #   Date when benefit coverage ends
        #
        #   @return [Date]
        required :coverage_end, Date

        # @!attribute coverage_start
        #   Date when benefit coverage begins
        #
        #   @return [Date]
        required :coverage_start, Date

        # @!attribute created_at
        #   Timestamp when the plan year was created
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute employer_id
        #   ID of the employer this plan year is for (empr\_\*)
        #
        #   @return [String]
        required :employer_id, String

        # @!attribute open_enrollment_end_date
        #   Date when open enrollment period ends
        #
        #   @return [Date]
        required :open_enrollment_end_date, Date

        # @!attribute open_enrollment_start_date
        #   Date when open enrollment period begins
        #
        #   @return [Date]
        required :open_enrollment_start_date, Date

        # @!attribute plans
        #   List of benefit plans available in this plan year
        #
        #   @return [Array<VitableConnectAPI::Models::BenefitProducts::PlanYear::Plan>]
        required :plans,
                 -> { VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::BenefitProducts::PlanYear::Plan] }

        # @!attribute status
        #   - `draft` - Draft
        #   - `open_enrollment` - Open Enrollment
        #   - `active` - Active
        #   - `expired` - Expired
        #
        #   @return [Symbol, VitableConnectAPI::Models::BenefitProducts::PlanYearStatus]
        required :status, enum: -> { VitableConnectAPI::BenefitProducts::PlanYearStatus }

        # @!attribute updated_at
        #   Timestamp when the plan year was last updated
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, benefit_product_id:, contribution_classes:, coverage_end:, coverage_start:, created_at:, employer_id:, open_enrollment_end_date:, open_enrollment_start_date:, plans:, status:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnectAPI::Models::BenefitProducts::PlanYear} for more details.
        #
        #   Serializer for Plan Year entity in public API responses.
        #
        #   A Plan Year represents a benefit period configuration including coverage dates,
        #   open enrollment windows, available plans, and contribution structures.
        #
        #   @param id [String] Unique plan year identifier with 'plyr\_' prefix
        #
        #   @param benefit_product_id [String] ID of the benefit product (bprd\_\*)
        #
        #   @param contribution_classes [Array<VitableConnectAPI::Models::BenefitProducts::PlanYear::ContributionClass>] List of contribution classes defining eligibility tiers and cost structures
        #
        #   @param coverage_end [Date] Date when benefit coverage ends
        #
        #   @param coverage_start [Date] Date when benefit coverage begins
        #
        #   @param created_at [Time] Timestamp when the plan year was created
        #
        #   @param employer_id [String] ID of the employer this plan year is for (empr\_\*)
        #
        #   @param open_enrollment_end_date [Date] Date when open enrollment period ends
        #
        #   @param open_enrollment_start_date [Date] Date when open enrollment period begins
        #
        #   @param plans [Array<VitableConnectAPI::Models::BenefitProducts::PlanYear::Plan>] List of benefit plans available in this plan year
        #
        #   @param status [Symbol, VitableConnectAPI::Models::BenefitProducts::PlanYearStatus] - `draft` - Draft
        #
        #   @param updated_at [Time] Timestamp when the plan year was last updated

        class ContributionClass < VitableConnectAPI::Internal::Type::BaseModel
          # @!attribute id
          #   Unique contribution class identifier
          #
          #   @return [String]
          required :id, String

          # @!attribute coverage_tier
          #   - `Unspecified` - Unspecified
          #   - `EE` - Ee
          #   - `ES` - Es
          #   - `EC` - Ec
          #   - `EF` - Ef
          #
          #   @return [Symbol, VitableConnectAPI::Models::CoverageTier]
          required :coverage_tier, enum: -> { VitableConnectAPI::CoverageTier }

          # @!attribute employee_contribution_cents
          #   Employee's monthly contribution amount in cents
          #
          #   @return [Integer]
          required :employee_contribution_cents, Integer

          # @!attribute employer_contribution_cents
          #   Employer's monthly contribution amount in cents
          #
          #   @return [Integer]
          required :employer_contribution_cents, Integer

          # @!attribute employment
          #   Employment type for this contribution class (e.g., 'full_time', 'part_time')
          #
          #   @return [String]
          required :employment, String

          # @!method initialize(id:, coverage_tier:, employee_contribution_cents:, employer_contribution_cents:, employment:)
          #   Some parameter documentations has been truncated, see
          #   {VitableConnectAPI::Models::BenefitProducts::PlanYear::ContributionClass} for
          #   more details.
          #
          #   Defines eligibility tiers for contributions within a plan year.
          #
          #   Contribution classes specify cost structures based on employment type and family
          #   coverage status.
          #
          #   @param id [String] Unique contribution class identifier
          #
          #   @param coverage_tier [Symbol, VitableConnectAPI::Models::CoverageTier] - `Unspecified` - Unspecified
          #
          #   @param employee_contribution_cents [Integer] Employee's monthly contribution amount in cents
          #
          #   @param employer_contribution_cents [Integer] Employer's monthly contribution amount in cents
          #
          #   @param employment [String] Employment type for this contribution class (e.g., 'full_time', 'part_time')
        end

        class Plan < VitableConnectAPI::Internal::Type::BaseModel
          # @!attribute id
          #   Unique plan identifier with 'plan\_' prefix
          #
          #   @return [String]
          required :id, String

          # @!attribute carrier_plan_id
          #   Reference to the carrier's plan definition (cplan\_\*)
          #
          #   @return [String]
          required :carrier_plan_id, String

          # @!attribute monthly_premium_cents
          #   Base monthly premium in cents
          #
          #   @return [Integer]
          required :monthly_premium_cents, Integer

          # @!attribute name
          #   Display name of the benefit plan
          #
          #   @return [String]
          required :name, String

          # @!attribute deductible_cents
          #   Annual deductible amount in cents
          #
          #   @return [Integer, nil]
          optional :deductible_cents, Integer, nil?: true

          # @!attribute out_of_pocket_max_cents
          #   Annual out-of-pocket maximum in cents
          #
          #   @return [Integer, nil]
          optional :out_of_pocket_max_cents, Integer, nil?: true

          # @!attribute tier
          #   - `Bronze` - Bronze
          #   - `Silver` - Silver
          #   - `Gold` - Gold
          #   - `Platinum` - Platinum
          #
          #   @return [Symbol, VitableConnectAPI::Models::PlanTier, nil]
          optional :tier, enum: -> { VitableConnectAPI::PlanTier }, nil?: true

          # @!method initialize(id:, carrier_plan_id:, monthly_premium_cents:, name:, deductible_cents: nil, out_of_pocket_max_cents: nil, tier: nil)
          #   Some parameter documentations has been truncated, see
          #   {VitableConnectAPI::Models::BenefitProducts::PlanYear::Plan} for more details.
          #
          #   Nested plan within PlanYearSerializer.
          #
          #   @param id [String] Unique plan identifier with 'plan\_' prefix
          #
          #   @param carrier_plan_id [String] Reference to the carrier's plan definition (cplan\_\*)
          #
          #   @param monthly_premium_cents [Integer] Base monthly premium in cents
          #
          #   @param name [String] Display name of the benefit plan
          #
          #   @param deductible_cents [Integer, nil] Annual deductible amount in cents
          #
          #   @param out_of_pocket_max_cents [Integer, nil] Annual out-of-pocket maximum in cents
          #
          #   @param tier [Symbol, VitableConnectAPI::Models::PlanTier, nil] - `Bronze` - Bronze
        end
      end
    end
  end
end
