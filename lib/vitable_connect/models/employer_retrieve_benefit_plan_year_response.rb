# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#retrieve_benefit_plan_year
    class EmployerRetrieveBenefitPlanYearResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #   One plan year, detail view.
      #
      #   Standalone (no shared base) so the exact detail payload is readable in one
      #   place; the list serializer is a separate class even where fields overlap. Detail
      #   carries the SPD link and omits the list-only `is_current` flag.
      #
      #   @return [VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data]
      required :data, -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse} for more
      #   details.
      #
      #   Response containing a single employer benefit plan year resource.
      #
      #   @param data [VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data] One plan year, detail view.

      # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse#data
      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute benefit_id
        #   Prefixed benefit identifier (`bprd_*`).
        #
        #   @return [String]
        required :benefit_id, String

        # @!attribute benefit_plan_year_id
        #   Prefixed plan-year identifier (`plyr_*`).
        #
        #   @return [String]
        required :benefit_plan_year_id, String

        # @!attribute carrier
        #   Carrier name, or null (e.g. ICHRA).
        #
        #   @return [String, nil]
        required :carrier, String, nil?: true

        # @!attribute contribution_strategy
        #   How the plan year prices contributions: exactly one collection is populated,
        #   determined by the plan year's `family` (ICHRA vs tier-priced).
        #
        #   @return [VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy]
        required :contribution_strategy,
                 -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy }

        # @!attribute coverage_end
        #   Coverage end.
        #
        #   @return [Date, nil]
        required :coverage_end, Date, nil?: true

        # @!attribute coverage_start
        #   Coverage start.
        #
        #   @return [Date]
        required :coverage_start, Date

        # @!attribute eligibility_policy
        #   The plan year's active eligibility policy. Mirrors the internal
        #   `PlanYearEligibilityPolicyDTO` but exposes only the public subset (no raw ids,
        #   `active_in`, or timestamps).
        #
        #   @return [VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy, nil]
        required :eligibility_policy,
                 -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy },
                 nil?: true

        # @!attribute employee_contribution
        #   Employee contribution range.
        #
        #   @return [VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EmployeeContribution, nil]
        required :employee_contribution,
                 -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EmployeeContribution },
                 nil?: true

        # @!attribute employer_contribution
        #   Employer contribution range.
        #
        #   @return [VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EmployerContribution, nil]
        required :employer_contribution,
                 -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EmployerContribution },
                 nil?: true

        # @!attribute enrollment_rate
        #   Enrolled/eligible rate for this plan year.
        #
        #   @return [VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EnrollmentRate]
        required :enrollment_rate,
                 -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EnrollmentRate }

        # @!attribute family
        #   - `mec` - Mec
        #   - `mvp` - Mvp
        #   - `ichra` - Ichra
        #   - `vpc` - Vpc
        #   - `dental` - Dental
        #   - `vision` - Vision
        #
        #   @return [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Family]
        required :family,
                 enum: -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Family }

        # @!attribute network_names
        #   Displayed networks: ["multi"] for ICHRA, otherwise the plan year's distinct
        #   network names.
        #
        #   @return [Array<String>]
        required :network_names, VitableConnect::Internal::Type::ArrayOf[String]

        # @!attribute offered_states
        #   Distinct offered state codes.
        #
        #   @return [Array<String>]
        required :offered_states, VitableConnect::Internal::Type::ArrayOf[String]

        # @!attribute open_enrollment_end
        #   Open-enrollment end.
        #
        #   @return [Date, nil]
        required :open_enrollment_end, Date, nil?: true

        # @!attribute open_enrollment_start
        #   Open-enrollment start.
        #
        #   @return [Date]
        required :open_enrollment_start, Date

        # @!attribute premium_in_cents
        #   Monthly premium in cents; only for an ICHRA benefit with effective coverage.
        #
        #   @return [Integer, nil]
        required :premium_in_cents, Integer, nil?: true

        # @!attribute product_name
        #   Benefit/product display name.
        #
        #   @return [String]
        required :product_name, String

        # @!attribute spd_file_url
        #   Summary Plan Description (SPD) link, or null.
        #
        #   @return [String, nil]
        required :spd_file_url, String, nil?: true

        # @!attribute status
        #   - `active` - Active
        #   - `upcoming` - Upcoming
        #   - `open_enrollment` - Open Enrollment
        #   - `inactive` - Inactive
        #
        #   @return [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Status]
        required :status,
                 enum: -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Status }

        # @!attribute year
        #   Calendar coverage year.
        #
        #   @return [Integer]
        required :year, Integer

        # @!method initialize(benefit_id:, benefit_plan_year_id:, carrier:, contribution_strategy:, coverage_end:, coverage_start:, eligibility_policy:, employee_contribution:, employer_contribution:, enrollment_rate:, family:, network_names:, offered_states:, open_enrollment_end:, open_enrollment_start:, premium_in_cents:, product_name:, spd_file_url:, status:, year:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data} for more
        #   details.
        #
        #   One plan year, detail view.
        #
        #   Standalone (no shared base) so the exact detail payload is readable in one
        #   place; the list serializer is a separate class even where fields overlap. Detail
        #   carries the SPD link and omits the list-only `is_current` flag.
        #
        #   @param benefit_id [String] Prefixed benefit identifier (`bprd_*`).
        #
        #   @param benefit_plan_year_id [String] Prefixed plan-year identifier (`plyr_*`).
        #
        #   @param carrier [String, nil] Carrier name, or null (e.g. ICHRA).
        #
        #   @param contribution_strategy [VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy] How the plan year prices contributions: exactly one collection is populated, det
        #
        #   @param coverage_end [Date, nil] Coverage end.
        #
        #   @param coverage_start [Date] Coverage start.
        #
        #   @param eligibility_policy [VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy, nil] The plan year's active eligibility policy. Mirrors the internal ``PlanYearEligib
        #
        #   @param employee_contribution [VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EmployeeContribution, nil] Employee contribution range.
        #
        #   @param employer_contribution [VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EmployerContribution, nil] Employer contribution range.
        #
        #   @param enrollment_rate [VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EnrollmentRate] Enrolled/eligible rate for this plan year.
        #
        #   @param family [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Family] - `mec` - Mec
        #
        #   @param network_names [Array<String>] Displayed networks: ["multi"] for ICHRA, otherwise the plan year's distinct netw
        #
        #   @param offered_states [Array<String>] Distinct offered state codes.
        #
        #   @param open_enrollment_end [Date, nil] Open-enrollment end.
        #
        #   @param open_enrollment_start [Date] Open-enrollment start.
        #
        #   @param premium_in_cents [Integer, nil] Monthly premium in cents; only for an ICHRA benefit with effective coverage.
        #
        #   @param product_name [String] Benefit/product display name.
        #
        #   @param spd_file_url [String, nil] Summary Plan Description (SPD) link, or null.
        #
        #   @param status [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Status] - `active` - Active
        #
        #   @param year [Integer] Calendar coverage year.

        # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data#contribution_strategy
        class ContributionStrategy < VitableConnect::Internal::Type::BaseModel
          # @!attribute contribution_tiers
          #   Coverage tiers and their costs; empty for ICHRA benefits.
          #
          #   @return [Array<VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::ContributionTier>]
          required :contribution_tiers,
                   -> do
                     VitableConnect::Internal::Type::ArrayOf[
                       VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::ContributionTier
                     ]
                   end

          # @!attribute ichra_contribution_classes
          #   ICHRA contribution classes; empty for tier-priced benefits.
          #
          #   @return [Array<VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass>]
          required :ichra_contribution_classes,
                   -> do
                     VitableConnect::Internal::Type::ArrayOf[
                       VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass
                     ]
                   end

          # @!method initialize(contribution_tiers:, ichra_contribution_classes:)
          #   How the plan year prices contributions: exactly one collection is populated,
          #   determined by the plan year's `family` (ICHRA vs tier-priced).
          #
          #   @param contribution_tiers [Array<VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::ContributionTier>] Coverage tiers and their costs; empty for ICHRA benefits.
          #
          #   @param ichra_contribution_classes [Array<VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass>] ICHRA contribution classes; empty for tier-priced benefits.

          class ContributionTier < VitableConnect::Internal::Type::BaseModel
            # @!attribute benefit_plan_id
            #   Prefixed benefit-plan identifier (`bpln_*`).
            #
            #   @return [String]
            required :benefit_plan_id, String

            # @!attribute benefit_plan_name
            #   Benefit plan name.
            #
            #   @return [String]
            required :benefit_plan_name, String

            # @!attribute benefit_plan_tier_name
            #   Coverage-tier name.
            #
            #   @return [String]
            required :benefit_plan_tier_name, String

            # @!attribute cost
            #   Monthly employee deduction in cents.
            #
            #   @return [Integer]
            required :cost, Integer

            # @!attribute cost_per_dependent
            #   Monthly employee deduction per dependent, in cents.
            #
            #   @return [Integer]
            required :cost_per_dependent, Integer

            # @!attribute coverage_tier
            #   - `Unspecified` - Unspecified
            #   - `EE` - EE
            #   - `ES` - ES
            #   - `EC` - EC
            #   - `EF` - EF
            #
            #   @return [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::ContributionTier::CoverageTier]
            required :coverage_tier,
                     enum: -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::ContributionTier::CoverageTier }

            # @!attribute dependents_required_in
            #   Whether dependents are required for this tier.
            #
            #   @return [Boolean]
            required :dependents_required_in, VitableConnect::Internal::Type::Boolean

            # @!attribute spouse_required_in
            #   Whether a spouse is required for this tier.
            #
            #   @return [Boolean]
            required :spouse_required_in, VitableConnect::Internal::Type::Boolean

            # @!method initialize(benefit_plan_id:, benefit_plan_name:, benefit_plan_tier_name:, cost:, cost_per_dependent:, coverage_tier:, dependents_required_in:, spouse_required_in:)
            #   Some parameter documentations has been truncated, see
            #   {VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::ContributionTier}
            #   for more details.
            #
            #   One non-ICHRA coverage tier, mirroring the internal configuration
            #   `CompanyBenefitPlanTierCostDTO` minus the tier-cost id, `pepm` and
            #   `pepm_per_dependent`; `benefit_plan_id` is the prefixed `bpln_*` form rather
            #   than a raw UUID.
            #
            #   @param benefit_plan_id [String] Prefixed benefit-plan identifier (`bpln_*`).
            #
            #   @param benefit_plan_name [String] Benefit plan name.
            #
            #   @param benefit_plan_tier_name [String] Coverage-tier name.
            #
            #   @param cost [Integer] Monthly employee deduction in cents.
            #
            #   @param cost_per_dependent [Integer] Monthly employee deduction per dependent, in cents.
            #
            #   @param coverage_tier [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::ContributionTier::CoverageTier] - `Unspecified` - Unspecified
            #
            #   @param dependents_required_in [Boolean] Whether dependents are required for this tier.
            #
            #   @param spouse_required_in [Boolean] Whether a spouse is required for this tier.

            # - `Unspecified` - Unspecified
            # - `EE` - EE
            # - `ES` - ES
            # - `EC` - EC
            # - `EF` - EF
            #
            # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::ContributionTier#coverage_tier
            module CoverageTier
              extend VitableConnect::Internal::Type::Enum

              UNSPECIFIED = :Unspecified
              EE = :EE
              ES = :ES
              EC = :EC
              EF = :EF

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class IchraContributionClass < VitableConnect::Internal::Type::BaseModel
            # @!attribute amount_in_cents
            #   Monthly allowance in cents.
            #
            #   @return [Integer]
            required :amount_in_cents, Integer

            # @!attribute compensation
            #   - `Unspecified` - Unspecified
            #   - `Salary` - Salary
            #   - `Hourly` - Hourly
            #
            #   @return [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Compensation]
            required :compensation,
                     enum: -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Compensation }

            # @!attribute contribution_class_id
            #   Prefixed contribution-class identifier (`iccl_*`).
            #
            #   @return [String]
            required :contribution_class_id, String

            # @!attribute employment
            #   - `Unspecified` - Unspecified
            #   - `Full Time` - Full Time
            #   - `Part Time` - Part Time
            #   - `Temporary` - Temporary
            #   - `Seasonal` - Seasonal
            #
            #   @return [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Employment]
            required :employment,
                     enum: -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Employment }

            # @!attribute family_status
            #   - `Unspecified` - Unspecified
            #   - `EE` - EE
            #   - `ES` - ES
            #   - `EC` - EC
            #   - `EF` - EF
            #
            #   @return [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::FamilyStatus]
            required :family_status,
                     enum: -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::FamilyStatus }

            # @!attribute location
            #   - `Unspecified` - Unspecified
            #   - `State` - State
            #
            #   @return [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Location]
            required :location,
                     enum: -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Location }

            # @!attribute location_value
            #   Location matcher value (CSV of state codes), or null.
            #
            #   @return [String, nil]
            required :location_value, String, nil?: true

            # @!attribute max_age
            #   Age-band upper bound, or null.
            #
            #   @return [Integer, nil]
            required :max_age, Integer, nil?: true

            # @!attribute min_age
            #   Age-band lower bound, or null.
            #
            #   @return [Integer, nil]
            required :min_age, Integer, nil?: true

            # @!method initialize(amount_in_cents:, compensation:, contribution_class_id:, employment:, family_status:, location:, location_value:, max_age:, min_age:)
            #   Some parameter documentations has been truncated, see
            #   {VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass}
            #   for more details.
            #
            #   One ICHRA contribution class, mirroring the internal configuration endpoint's
            #   `IchraContributionClassConfigurationEntitySerializer` field-for-field. Two
            #   deliberate differences for the public surface: the identifier is the opaque
            #   prefixed `iccl_*` form rather than a raw UUID, and the matcher choices come from
            #   the domain enums rather than the model's.
            #
            #   @param amount_in_cents [Integer] Monthly allowance in cents.
            #
            #   @param compensation [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Compensation] - `Unspecified` - Unspecified
            #
            #   @param contribution_class_id [String] Prefixed contribution-class identifier (`iccl_*`).
            #
            #   @param employment [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Employment] - `Unspecified` - Unspecified
            #
            #   @param family_status [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::FamilyStatus] - `Unspecified` - Unspecified
            #
            #   @param location [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Location] - `Unspecified` - Unspecified
            #
            #   @param location_value [String, nil] Location matcher value (CSV of state codes), or null.
            #
            #   @param max_age [Integer, nil] Age-band upper bound, or null.
            #
            #   @param min_age [Integer, nil] Age-band lower bound, or null.

            # - `Unspecified` - Unspecified
            # - `Salary` - Salary
            # - `Hourly` - Hourly
            #
            # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass#compensation
            module Compensation
              extend VitableConnect::Internal::Type::Enum

              UNSPECIFIED = :Unspecified
              SALARY = :Salary
              HOURLY = :Hourly

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # - `Unspecified` - Unspecified
            # - `Full Time` - Full Time
            # - `Part Time` - Part Time
            # - `Temporary` - Temporary
            # - `Seasonal` - Seasonal
            #
            # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass#employment
            module Employment
              extend VitableConnect::Internal::Type::Enum

              UNSPECIFIED = :Unspecified
              FULL_TIME = :"Full Time"
              PART_TIME = :"Part Time"
              TEMPORARY = :Temporary
              SEASONAL = :Seasonal

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # - `Unspecified` - Unspecified
            # - `EE` - EE
            # - `ES` - ES
            # - `EC` - EC
            # - `EF` - EF
            #
            # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass#family_status
            module FamilyStatus
              extend VitableConnect::Internal::Type::Enum

              UNSPECIFIED = :Unspecified
              EE = :EE
              ES = :ES
              EC = :EC
              EF = :EF

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # - `Unspecified` - Unspecified
            # - `State` - State
            #
            # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass#location
            module Location
              extend VitableConnect::Internal::Type::Enum

              UNSPECIFIED = :Unspecified
              STATE = :State

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data#eligibility_policy
        class EligibilityPolicy < VitableConnect::Internal::Type::BaseModel
          # @!attribute rules
          #   Eligibility rules; never empty for a valid policy.
          #
          #   @return [Array<VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule>]
          required :rules,
                   -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule] }

          # @!attribute termination_n_months
          #   Months of continued coverage; set only when `termination_rule` is
          #   `END_OF_N_MONTHS`.
          #
          #   @return [Integer, nil]
          required :termination_n_months, Integer, nil?: true

          # @!attribute termination_rule
          #   - `END_OF_N_MONTHS` - End Of N Months
          #   - `END_OF_PLAN_YEAR` - End Of Plan Year
          #
          #   @return [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::TerminationRule]
          required :termination_rule,
                   enum: -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::TerminationRule }

          # @!attribute waiting_period
          #   - `FIRST_OF_FOLLOWING_MONTH` - First Of Following Month
          #   - `THIRTY_DAYS` - Thirty Days
          #   - `SIXTY_DAYS` - Sixty Days
          #
          #   @return [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::WaitingPeriod, nil]
          required :waiting_period,
                   enum: -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::WaitingPeriod },
                   nil?: true

          # @!method initialize(rules:, termination_n_months:, termination_rule:, waiting_period:)
          #   Some parameter documentations has been truncated, see
          #   {VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy}
          #   for more details.
          #
          #   The plan year's active eligibility policy. Mirrors the internal
          #   `PlanYearEligibilityPolicyDTO` but exposes only the public subset (no raw ids,
          #   `active_in`, or timestamps).
          #
          #   @param rules [Array<VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule>] Eligibility rules; never empty for a valid policy.
          #
          #   @param termination_n_months [Integer, nil] Months of continued coverage; set only when `termination_rule` is `END_OF_N_MONT
          #
          #   @param termination_rule [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::TerminationRule] - `END_OF_N_MONTHS` - End Of N Months
          #
          #   @param waiting_period [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::WaitingPeriod, nil] - `FIRST_OF_FOLLOWING_MONTH` - First Of Following Month

          class Rule < VitableConnect::Internal::Type::BaseModel
            # @!attribute compensation_type
            #   - `Salary` - Salary
            #   - `Hourly` - Hourly
            #   - `All` - All
            #
            #   @return [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::CompensationType]
            required :compensation_type,
                     enum: -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::CompensationType }

            # @!attribute eligible_geographical_location
            #   Geographic matcher.
            #
            #   @return [VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation]
            required :eligible_geographical_location,
                     -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation }

            # @!attribute employee_class
            #   - `Full Time` - Full Time
            #   - `Part Time` - Part Time
            #   - `Temporary` - Temporary
            #   - `Intern` - Intern
            #   - `Seasonal` - Seasonal
            #   - `Individual Contractor` - Individual Contractor
            #   - `All` - All
            #
            #   @return [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EmployeeClass]
            required :employee_class,
                     enum: -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EmployeeClass }

            # @!method initialize(compensation_type:, eligible_geographical_location:, employee_class:)
            #   Some parameter documentations has been truncated, see
            #   {VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule}
            #   for more details.
            #
            #   One eligibility rule — the workforce slice it makes eligible. Mirrors the
            #   internal `PlanYearEligibilityPolicyRuleDTO` minus the raw ids and timestamps.
            #
            #   @param compensation_type [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::CompensationType] - `Salary` - Salary
            #
            #   @param eligible_geographical_location [VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation] Geographic matcher.
            #
            #   @param employee_class [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EmployeeClass] - `Full Time` - Full Time

            # - `Salary` - Salary
            # - `Hourly` - Hourly
            # - `All` - All
            #
            # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule#compensation_type
            module CompensationType
              extend VitableConnect::Internal::Type::Enum

              SALARY = :Salary
              HOURLY = :Hourly
              ALL = :All

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule#eligible_geographical_location
            class EligibleGeographicalLocation < VitableConnect::Internal::Type::BaseModel
              # @!attribute state_codes
              #   States the rule is restricted to; empty when `type` is `All`.
              #
              #   @return [Array<String>]
              required :state_codes, VitableConnect::Internal::Type::ArrayOf[String]

              # @!attribute type
              #   - `All` - All
              #   - `StateCodes` - State Codes
              #
              #   @return [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation::Type]
              required :type,
                       enum: -> { VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation::Type }

              # @!method initialize(state_codes:, type:)
              #   Some parameter documentations has been truncated, see
              #   {VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation}
              #   for more details.
              #
              #   Geographic matcher.
              #
              #   @param state_codes [Array<String>] States the rule is restricted to; empty when `type` is `All`.
              #
              #   @param type [Symbol, VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation::Type] - `All` - All

              # - `All` - All
              # - `StateCodes` - State Codes
              #
              # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation#type
              module Type
                extend VitableConnect::Internal::Type::Enum

                ALL = :All
                STATE_CODES = :StateCodes

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # - `Full Time` - Full Time
            # - `Part Time` - Part Time
            # - `Temporary` - Temporary
            # - `Intern` - Intern
            # - `Seasonal` - Seasonal
            # - `Individual Contractor` - Individual Contractor
            # - `All` - All
            #
            # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule#employee_class
            module EmployeeClass
              extend VitableConnect::Internal::Type::Enum

              FULL_TIME = :"Full Time"
              PART_TIME = :"Part Time"
              TEMPORARY = :Temporary
              INTERN = :Intern
              SEASONAL = :Seasonal
              INDIVIDUAL_CONTRACTOR = :"Individual Contractor"
              ALL = :All

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # - `END_OF_N_MONTHS` - End Of N Months
          # - `END_OF_PLAN_YEAR` - End Of Plan Year
          #
          # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy#termination_rule
          module TerminationRule
            extend VitableConnect::Internal::Type::Enum

            END_OF_N_MONTHS = :END_OF_N_MONTHS
            END_OF_PLAN_YEAR = :END_OF_PLAN_YEAR

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # - `FIRST_OF_FOLLOWING_MONTH` - First Of Following Month
          # - `THIRTY_DAYS` - Thirty Days
          # - `SIXTY_DAYS` - Sixty Days
          #
          # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy#waiting_period
          module WaitingPeriod
            extend VitableConnect::Internal::Type::Enum

            FIRST_OF_FOLLOWING_MONTH = :FIRST_OF_FOLLOWING_MONTH
            THIRTY_DAYS = :THIRTY_DAYS
            SIXTY_DAYS = :SIXTY_DAYS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data#employee_contribution
        class EmployeeContribution < VitableConnect::Internal::Type::BaseModel
          # @!attribute max_cents
          #   Highest per-tier contribution in cents.
          #
          #   @return [Integer]
          required :max_cents, Integer

          # @!attribute min_cents
          #   Lowest per-tier contribution in cents.
          #
          #   @return [Integer]
          required :min_cents, Integer

          # @!method initialize(max_cents:, min_cents:)
          #   Employee contribution range.
          #
          #   @param max_cents [Integer] Highest per-tier contribution in cents.
          #
          #   @param min_cents [Integer] Lowest per-tier contribution in cents.
        end

        # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data#employer_contribution
        class EmployerContribution < VitableConnect::Internal::Type::BaseModel
          # @!attribute max_cents
          #   Highest per-tier contribution in cents.
          #
          #   @return [Integer]
          required :max_cents, Integer

          # @!attribute min_cents
          #   Lowest per-tier contribution in cents.
          #
          #   @return [Integer]
          required :min_cents, Integer

          # @!method initialize(max_cents:, min_cents:)
          #   Employer contribution range.
          #
          #   @param max_cents [Integer] Highest per-tier contribution in cents.
          #
          #   @param min_cents [Integer] Lowest per-tier contribution in cents.
        end

        # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data#enrollment_rate
        class EnrollmentRate < VitableConnect::Internal::Type::BaseModel
          # @!attribute eligible
          #   Employees eligible for this plan year.
          #
          #   @return [Integer]
          required :eligible, Integer

          # @!attribute enrolled
          #   Employees enrolled in this plan year.
          #
          #   @return [Integer]
          required :enrolled, Integer

          # @!attribute percentage
          #   `enrolled / eligible` whole-number percent (0 when none).
          #
          #   @return [Integer]
          required :percentage, Integer

          # @!method initialize(eligible:, enrolled:, percentage:)
          #   Enrolled/eligible rate for this plan year.
          #
          #   @param eligible [Integer] Employees eligible for this plan year.
          #
          #   @param enrolled [Integer] Employees enrolled in this plan year.
          #
          #   @param percentage [Integer] `enrolled / eligible` whole-number percent (0 when none).
        end

        # - `mec` - Mec
        # - `mvp` - Mvp
        # - `ichra` - Ichra
        # - `vpc` - Vpc
        # - `dental` - Dental
        # - `vision` - Vision
        #
        # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data#family
        module Family
          extend VitableConnect::Internal::Type::Enum

          MEC = :mec
          MVP = :mvp
          ICHRA = :ichra
          VPC = :vpc
          DENTAL = :dental
          VISION = :vision

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # - `active` - Active
        # - `upcoming` - Upcoming
        # - `open_enrollment` - Open Enrollment
        # - `inactive` - Inactive
        #
        # @see VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data#status
        module Status
          extend VitableConnect::Internal::Type::Enum

          ACTIVE = :active
          UPCOMING = :upcoming
          OPEN_ENROLLMENT = :open_enrollment
          INACTIVE = :inactive

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
