# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#list_benefit_plan_years
    class EmployerListBenefitPlanYearsResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data>]
      required :data,
               -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data] }

      # @!method initialize(data:)
      #   @param data [Array<VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data>]

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

        # @!attribute employee_contribution
        #   Employee contribution range.
        #
        #   @return [VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EmployeeContribution, nil]
        required :employee_contribution,
                 -> { VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EmployeeContribution },
                 nil?: true

        # @!attribute employer_contribution
        #   Employer contribution range.
        #
        #   @return [VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EmployerContribution, nil]
        required :employer_contribution,
                 -> { VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EmployerContribution },
                 nil?: true

        # @!attribute enrollment_rate
        #   Enrolled/eligible rate for this plan year.
        #
        #   @return [VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EnrollmentRate]
        required :enrollment_rate,
                 -> { VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EnrollmentRate }

        # @!attribute family
        #   - `mec` - Mec
        #   - `mvp` - Mvp
        #   - `ichra` - Ichra
        #   - `vpc` - Vpc
        #   - `dental` - Dental
        #   - `vision` - Vision
        #
        #   @return [Symbol, VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Family]
        required :family, enum: -> { VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Family }

        # @!attribute is_current
        #   Whether this is the current plan year.
        #
        #   @return [Boolean]
        required :is_current, VitableConnect::Internal::Type::Boolean

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

        # @!attribute status
        #   - `active` - Active
        #   - `upcoming` - Upcoming
        #   - `open_enrollment` - Open Enrollment
        #   - `inactive` - Inactive
        #
        #   @return [Symbol, VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Status]
        required :status, enum: -> { VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Status }

        # @!attribute year
        #   Calendar coverage year.
        #
        #   @return [Integer]
        required :year, Integer

        # @!method initialize(benefit_id:, benefit_plan_year_id:, carrier:, coverage_end:, coverage_start:, employee_contribution:, employer_contribution:, enrollment_rate:, family:, is_current:, network_names:, offered_states:, open_enrollment_end:, open_enrollment_start:, premium_in_cents:, product_name:, status:, year:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data} for more
        #   details.
        #
        #   One plan year, list view.
        #
        #   Standalone (no shared base) so the exact list payload is readable in one place;
        #   the detail serializer is a separate class even where fields overlap.
        #
        #   @param benefit_id [String] Prefixed benefit identifier (`bprd_*`).
        #
        #   @param benefit_plan_year_id [String] Prefixed plan-year identifier (`plyr_*`).
        #
        #   @param carrier [String, nil] Carrier name, or null (e.g. ICHRA).
        #
        #   @param coverage_end [Date, nil] Coverage end.
        #
        #   @param coverage_start [Date] Coverage start.
        #
        #   @param employee_contribution [VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EmployeeContribution, nil] Employee contribution range.
        #
        #   @param employer_contribution [VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EmployerContribution, nil] Employer contribution range.
        #
        #   @param enrollment_rate [VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EnrollmentRate] Enrolled/eligible rate for this plan year.
        #
        #   @param family [Symbol, VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Family] - `mec` - Mec
        #
        #   @param is_current [Boolean] Whether this is the current plan year.
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
        #   @param status [Symbol, VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Status] - `active` - Active
        #
        #   @param year [Integer] Calendar coverage year.

        # @see VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data#employee_contribution
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

        # @see VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data#employer_contribution
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

        # @see VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data#enrollment_rate
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
        # @see VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data#family
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
        # @see VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data#status
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
