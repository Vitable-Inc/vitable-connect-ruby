# typed: strong

module VitableConnect
  module Models
    class EmployerRetrieveBenefitPlanYearResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # One plan year, detail view.
      #
      # Standalone (no shared base) so the exact detail payload is readable in one
      # place; the list serializer is a separate class even where fields overlap. Detail
      # carries the SPD link and omits the list-only `is_current` flag.
      sig do
        returns(
          VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # Response containing a single employer benefit plan year resource.
      sig do
        params(
          data:
            VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # One plan year, detail view.
        #
        # Standalone (no shared base) so the exact detail payload is readable in one
        # place; the list serializer is a separate class even where fields overlap. Detail
        # carries the SPD link and omits the list-only `is_current` flag.
        data:
      )
      end

      sig do
        override.returns(
          {
            data:
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data
          }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        # Prefixed benefit identifier (`bprd_*`).
        sig { returns(String) }
        attr_accessor :benefit_id

        # Prefixed plan-year identifier (`plyr_*`).
        sig { returns(String) }
        attr_accessor :benefit_plan_year_id

        # Carrier name, or null (e.g. ICHRA).
        sig { returns(T.nilable(String)) }
        attr_accessor :carrier

        # How the plan year prices contributions: exactly one collection is populated,
        # determined by the plan year's `family` (ICHRA vs tier-priced).
        sig do
          returns(
            VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy
          )
        end
        attr_reader :contribution_strategy

        sig do
          params(
            contribution_strategy:
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::OrHash
          ).void
        end
        attr_writer :contribution_strategy

        # Coverage end.
        sig { returns(T.nilable(Date)) }
        attr_accessor :coverage_end

        # Coverage start.
        sig { returns(Date) }
        attr_accessor :coverage_start

        # The plan year's active eligibility policy. Mirrors the internal
        # `PlanYearEligibilityPolicyDTO` but exposes only the public subset (no raw ids,
        # `active_in`, or timestamps).
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy
            )
          )
        end
        attr_reader :eligibility_policy

        sig do
          params(
            eligibility_policy:
              T.nilable(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::OrHash
              )
          ).void
        end
        attr_writer :eligibility_policy

        # Employee contribution range.
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EmployeeContribution
            )
          )
        end
        attr_reader :employee_contribution

        sig do
          params(
            employee_contribution:
              T.nilable(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EmployeeContribution::OrHash
              )
          ).void
        end
        attr_writer :employee_contribution

        # Employer contribution range.
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EmployerContribution
            )
          )
        end
        attr_reader :employer_contribution

        sig do
          params(
            employer_contribution:
              T.nilable(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EmployerContribution::OrHash
              )
          ).void
        end
        attr_writer :employer_contribution

        # Enrolled/eligible rate for this plan year.
        sig do
          returns(
            VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EnrollmentRate
          )
        end
        attr_reader :enrollment_rate

        sig do
          params(
            enrollment_rate:
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EnrollmentRate::OrHash
          ).void
        end
        attr_writer :enrollment_rate

        # - `mec` - Mec
        # - `mvp` - Mvp
        # - `ichra` - Ichra
        # - `vpc` - Vpc
        # - `dental` - Dental
        # - `vision` - Vision
        sig do
          returns(
            VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Family::TaggedSymbol
          )
        end
        attr_accessor :family

        # Displayed networks: ["multi"] for ICHRA, otherwise the plan year's distinct
        # network names.
        sig { returns(T::Array[String]) }
        attr_accessor :network_names

        # Distinct offered state codes.
        sig { returns(T::Array[String]) }
        attr_accessor :offered_states

        # Open-enrollment end.
        sig { returns(T.nilable(Date)) }
        attr_accessor :open_enrollment_end

        # Open-enrollment start.
        sig { returns(Date) }
        attr_accessor :open_enrollment_start

        # Monthly premium in cents; only for an ICHRA benefit with effective coverage.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :premium_in_cents

        # Benefit/product display name.
        sig { returns(String) }
        attr_accessor :product_name

        # Summary Plan Description (SPD) link, or null.
        sig { returns(T.nilable(String)) }
        attr_accessor :spd_file_url

        # - `active` - Active
        # - `upcoming` - Upcoming
        # - `open_enrollment` - Open Enrollment
        # - `inactive` - Inactive
        sig do
          returns(
            VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Calendar coverage year.
        sig { returns(Integer) }
        attr_accessor :year

        # One plan year, detail view.
        #
        # Standalone (no shared base) so the exact detail payload is readable in one
        # place; the list serializer is a separate class even where fields overlap. Detail
        # carries the SPD link and omits the list-only `is_current` flag.
        sig do
          params(
            benefit_id: String,
            benefit_plan_year_id: String,
            carrier: T.nilable(String),
            contribution_strategy:
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::OrHash,
            coverage_end: T.nilable(Date),
            coverage_start: Date,
            eligibility_policy:
              T.nilable(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::OrHash
              ),
            employee_contribution:
              T.nilable(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EmployeeContribution::OrHash
              ),
            employer_contribution:
              T.nilable(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EmployerContribution::OrHash
              ),
            enrollment_rate:
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EnrollmentRate::OrHash,
            family:
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Family::OrSymbol,
            network_names: T::Array[String],
            offered_states: T::Array[String],
            open_enrollment_end: T.nilable(Date),
            open_enrollment_start: Date,
            premium_in_cents: T.nilable(Integer),
            product_name: String,
            spd_file_url: T.nilable(String),
            status:
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Status::OrSymbol,
            year: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Prefixed benefit identifier (`bprd_*`).
          benefit_id:,
          # Prefixed plan-year identifier (`plyr_*`).
          benefit_plan_year_id:,
          # Carrier name, or null (e.g. ICHRA).
          carrier:,
          # How the plan year prices contributions: exactly one collection is populated,
          # determined by the plan year's `family` (ICHRA vs tier-priced).
          contribution_strategy:,
          # Coverage end.
          coverage_end:,
          # Coverage start.
          coverage_start:,
          # The plan year's active eligibility policy. Mirrors the internal
          # `PlanYearEligibilityPolicyDTO` but exposes only the public subset (no raw ids,
          # `active_in`, or timestamps).
          eligibility_policy:,
          # Employee contribution range.
          employee_contribution:,
          # Employer contribution range.
          employer_contribution:,
          # Enrolled/eligible rate for this plan year.
          enrollment_rate:,
          # - `mec` - Mec
          # - `mvp` - Mvp
          # - `ichra` - Ichra
          # - `vpc` - Vpc
          # - `dental` - Dental
          # - `vision` - Vision
          family:,
          # Displayed networks: ["multi"] for ICHRA, otherwise the plan year's distinct
          # network names.
          network_names:,
          # Distinct offered state codes.
          offered_states:,
          # Open-enrollment end.
          open_enrollment_end:,
          # Open-enrollment start.
          open_enrollment_start:,
          # Monthly premium in cents; only for an ICHRA benefit with effective coverage.
          premium_in_cents:,
          # Benefit/product display name.
          product_name:,
          # Summary Plan Description (SPD) link, or null.
          spd_file_url:,
          # - `active` - Active
          # - `upcoming` - Upcoming
          # - `open_enrollment` - Open Enrollment
          # - `inactive` - Inactive
          status:,
          # Calendar coverage year.
          year:
        )
        end

        sig do
          override.returns(
            {
              benefit_id: String,
              benefit_plan_year_id: String,
              carrier: T.nilable(String),
              contribution_strategy:
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy,
              coverage_end: T.nilable(Date),
              coverage_start: Date,
              eligibility_policy:
                T.nilable(
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy
                ),
              employee_contribution:
                T.nilable(
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EmployeeContribution
                ),
              employer_contribution:
                T.nilable(
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EmployerContribution
                ),
              enrollment_rate:
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EnrollmentRate,
              family:
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Family::TaggedSymbol,
              network_names: T::Array[String],
              offered_states: T::Array[String],
              open_enrollment_end: T.nilable(Date),
              open_enrollment_start: Date,
              premium_in_cents: T.nilable(Integer),
              product_name: String,
              spd_file_url: T.nilable(String),
              status:
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Status::TaggedSymbol,
              year: Integer
            }
          )
        end
        def to_hash
        end

        class ContributionStrategy < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy,
                VitableConnect::Internal::AnyHash
              )
            end

          # Coverage tiers and their costs; empty for ICHRA benefits.
          sig do
            returns(
              T::Array[
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::ContributionTier
              ]
            )
          end
          attr_accessor :contribution_tiers

          # ICHRA contribution classes; empty for tier-priced benefits.
          sig do
            returns(
              T::Array[
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass
              ]
            )
          end
          attr_accessor :ichra_contribution_classes

          # How the plan year prices contributions: exactly one collection is populated,
          # determined by the plan year's `family` (ICHRA vs tier-priced).
          sig do
            params(
              contribution_tiers:
                T::Array[
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::ContributionTier::OrHash
                ],
              ichra_contribution_classes:
                T::Array[
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Coverage tiers and their costs; empty for ICHRA benefits.
            contribution_tiers:,
            # ICHRA contribution classes; empty for tier-priced benefits.
            ichra_contribution_classes:
          )
          end

          sig do
            override.returns(
              {
                contribution_tiers:
                  T::Array[
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::ContributionTier
                  ],
                ichra_contribution_classes:
                  T::Array[
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass
                  ]
              }
            )
          end
          def to_hash
          end

          class ContributionTier < VitableConnect::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::ContributionTier,
                  VitableConnect::Internal::AnyHash
                )
              end

            # Prefixed benefit-plan identifier (`bpln_*`).
            sig { returns(String) }
            attr_accessor :benefit_plan_id

            # Benefit plan name.
            sig { returns(String) }
            attr_accessor :benefit_plan_name

            # Coverage-tier name.
            sig { returns(String) }
            attr_accessor :benefit_plan_tier_name

            # Monthly employee deduction in cents.
            sig { returns(Integer) }
            attr_accessor :cost

            # Monthly employee deduction per dependent, in cents.
            sig { returns(Integer) }
            attr_accessor :cost_per_dependent

            # Whether dependents are required for this tier.
            sig { returns(T::Boolean) }
            attr_accessor :dependents_required_in

            # Whether a spouse is required for this tier.
            sig { returns(T::Boolean) }
            attr_accessor :spouse_required_in

            # One non-ICHRA coverage tier, mirroring the internal configuration
            # `CompanyBenefitPlanTierCostDTO` minus the tier-cost id, `pepm` and
            # `pepm_per_dependent`; `benefit_plan_id` is the prefixed `bpln_*` form rather
            # than a raw UUID.
            sig do
              params(
                benefit_plan_id: String,
                benefit_plan_name: String,
                benefit_plan_tier_name: String,
                cost: Integer,
                cost_per_dependent: Integer,
                dependents_required_in: T::Boolean,
                spouse_required_in: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(
              # Prefixed benefit-plan identifier (`bpln_*`).
              benefit_plan_id:,
              # Benefit plan name.
              benefit_plan_name:,
              # Coverage-tier name.
              benefit_plan_tier_name:,
              # Monthly employee deduction in cents.
              cost:,
              # Monthly employee deduction per dependent, in cents.
              cost_per_dependent:,
              # Whether dependents are required for this tier.
              dependents_required_in:,
              # Whether a spouse is required for this tier.
              spouse_required_in:
            )
            end

            sig do
              override.returns(
                {
                  benefit_plan_id: String,
                  benefit_plan_name: String,
                  benefit_plan_tier_name: String,
                  cost: Integer,
                  cost_per_dependent: Integer,
                  dependents_required_in: T::Boolean,
                  spouse_required_in: T::Boolean
                }
              )
            end
            def to_hash
            end
          end

          class IchraContributionClass < VitableConnect::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass,
                  VitableConnect::Internal::AnyHash
                )
              end

            # Monthly allowance in cents.
            sig { returns(Integer) }
            attr_accessor :amount_in_cents

            # - `Unspecified` - Unspecified
            # - `Salary` - Salary
            # - `Hourly` - Hourly
            sig do
              returns(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Compensation::TaggedSymbol
              )
            end
            attr_accessor :compensation

            # Prefixed contribution-class identifier (`iccl_*`).
            sig { returns(String) }
            attr_accessor :contribution_class_id

            # - `Unspecified` - Unspecified
            # - `Full Time` - Full Time
            # - `Part Time` - Part Time
            # - `Temporary` - Temporary
            # - `Seasonal` - Seasonal
            sig do
              returns(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Employment::TaggedSymbol
              )
            end
            attr_accessor :employment

            # - `Unspecified` - Unspecified
            # - `EE` - Ee
            # - `ES` - Es
            # - `EC` - Ec
            # - `EF` - Ef
            sig do
              returns(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::FamilyStatus::TaggedSymbol
              )
            end
            attr_accessor :family_status

            # - `Unspecified` - Unspecified
            # - `State` - State
            sig do
              returns(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Location::TaggedSymbol
              )
            end
            attr_accessor :location

            # Location matcher value (CSV of state codes), or null.
            sig { returns(T.nilable(String)) }
            attr_accessor :location_value

            # Age-band upper bound, or null.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :max_age

            # Age-band lower bound, or null.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :min_age

            # One ICHRA contribution class, mirroring the internal configuration endpoint's
            # `IchraContributionClassConfigurationEntitySerializer` field-for-field. Two
            # deliberate differences for the public surface: the identifier is the opaque
            # prefixed `iccl_*` form rather than a raw UUID, and the matcher choices come from
            # the domain enums rather than the model's.
            sig do
              params(
                amount_in_cents: Integer,
                compensation:
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Compensation::OrSymbol,
                contribution_class_id: String,
                employment:
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Employment::OrSymbol,
                family_status:
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::FamilyStatus::OrSymbol,
                location:
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Location::OrSymbol,
                location_value: T.nilable(String),
                max_age: T.nilable(Integer),
                min_age: T.nilable(Integer)
              ).returns(T.attached_class)
            end
            def self.new(
              # Monthly allowance in cents.
              amount_in_cents:,
              # - `Unspecified` - Unspecified
              # - `Salary` - Salary
              # - `Hourly` - Hourly
              compensation:,
              # Prefixed contribution-class identifier (`iccl_*`).
              contribution_class_id:,
              # - `Unspecified` - Unspecified
              # - `Full Time` - Full Time
              # - `Part Time` - Part Time
              # - `Temporary` - Temporary
              # - `Seasonal` - Seasonal
              employment:,
              # - `Unspecified` - Unspecified
              # - `EE` - Ee
              # - `ES` - Es
              # - `EC` - Ec
              # - `EF` - Ef
              family_status:,
              # - `Unspecified` - Unspecified
              # - `State` - State
              location:,
              # Location matcher value (CSV of state codes), or null.
              location_value:,
              # Age-band upper bound, or null.
              max_age:,
              # Age-band lower bound, or null.
              min_age:
            )
            end

            sig do
              override.returns(
                {
                  amount_in_cents: Integer,
                  compensation:
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Compensation::TaggedSymbol,
                  contribution_class_id: String,
                  employment:
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Employment::TaggedSymbol,
                  family_status:
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::FamilyStatus::TaggedSymbol,
                  location:
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Location::TaggedSymbol,
                  location_value: T.nilable(String),
                  max_age: T.nilable(Integer),
                  min_age: T.nilable(Integer)
                }
              )
            end
            def to_hash
            end

            # - `Unspecified` - Unspecified
            # - `Salary` - Salary
            # - `Hourly` - Hourly
            module Compensation
              extend VitableConnect::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Compensation
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UNSPECIFIED =
                T.let(
                  :Unspecified,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Compensation::TaggedSymbol
                )
              SALARY =
                T.let(
                  :Salary,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Compensation::TaggedSymbol
                )
              HOURLY =
                T.let(
                  :Hourly,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Compensation::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Compensation::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # - `Unspecified` - Unspecified
            # - `Full Time` - Full Time
            # - `Part Time` - Part Time
            # - `Temporary` - Temporary
            # - `Seasonal` - Seasonal
            module Employment
              extend VitableConnect::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Employment
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UNSPECIFIED =
                T.let(
                  :Unspecified,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Employment::TaggedSymbol
                )
              FULL_TIME =
                T.let(
                  :"Full Time",
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Employment::TaggedSymbol
                )
              PART_TIME =
                T.let(
                  :"Part Time",
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Employment::TaggedSymbol
                )
              TEMPORARY =
                T.let(
                  :Temporary,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Employment::TaggedSymbol
                )
              SEASONAL =
                T.let(
                  :Seasonal,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Employment::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Employment::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # - `Unspecified` - Unspecified
            # - `EE` - Ee
            # - `ES` - Es
            # - `EC` - Ec
            # - `EF` - Ef
            module FamilyStatus
              extend VitableConnect::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::FamilyStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UNSPECIFIED =
                T.let(
                  :Unspecified,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::FamilyStatus::TaggedSymbol
                )
              EE =
                T.let(
                  :EE,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::FamilyStatus::TaggedSymbol
                )
              ES =
                T.let(
                  :ES,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::FamilyStatus::TaggedSymbol
                )
              EC =
                T.let(
                  :EC,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::FamilyStatus::TaggedSymbol
                )
              EF =
                T.let(
                  :EF,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::FamilyStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::FamilyStatus::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # - `Unspecified` - Unspecified
            # - `State` - State
            module Location
              extend VitableConnect::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Location
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UNSPECIFIED =
                T.let(
                  :Unspecified,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Location::TaggedSymbol
                )
              STATE =
                T.let(
                  :State,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Location::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::ContributionStrategy::IchraContributionClass::Location::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class EligibilityPolicy < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy,
                VitableConnect::Internal::AnyHash
              )
            end

          # Eligibility rules; never empty for a valid policy.
          sig do
            returns(
              T::Array[
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule
              ]
            )
          end
          attr_accessor :rules

          # Months of continued coverage; set only when `termination_rule` is
          # `END_OF_N_MONTHS`.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :termination_n_months

          # - `END_OF_N_MONTHS` - End Of N Months
          # - `END_OF_PLAN_YEAR` - End Of Plan Year
          sig do
            returns(
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::TerminationRule::TaggedSymbol
            )
          end
          attr_accessor :termination_rule

          # - `FIRST_OF_FOLLOWING_MONTH` - First Of Following Month
          # - `THIRTY_DAYS` - Thirty Days
          # - `SIXTY_DAYS` - Sixty Days
          sig do
            returns(
              T.nilable(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::WaitingPeriod::TaggedSymbol
              )
            )
          end
          attr_accessor :waiting_period

          # The plan year's active eligibility policy. Mirrors the internal
          # `PlanYearEligibilityPolicyDTO` but exposes only the public subset (no raw ids,
          # `active_in`, or timestamps).
          sig do
            params(
              rules:
                T::Array[
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::OrHash
                ],
              termination_n_months: T.nilable(Integer),
              termination_rule:
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::TerminationRule::OrSymbol,
              waiting_period:
                T.nilable(
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::WaitingPeriod::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Eligibility rules; never empty for a valid policy.
            rules:,
            # Months of continued coverage; set only when `termination_rule` is
            # `END_OF_N_MONTHS`.
            termination_n_months:,
            # - `END_OF_N_MONTHS` - End Of N Months
            # - `END_OF_PLAN_YEAR` - End Of Plan Year
            termination_rule:,
            # - `FIRST_OF_FOLLOWING_MONTH` - First Of Following Month
            # - `THIRTY_DAYS` - Thirty Days
            # - `SIXTY_DAYS` - Sixty Days
            waiting_period:
          )
          end

          sig do
            override.returns(
              {
                rules:
                  T::Array[
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule
                  ],
                termination_n_months: T.nilable(Integer),
                termination_rule:
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::TerminationRule::TaggedSymbol,
                waiting_period:
                  T.nilable(
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::WaitingPeriod::TaggedSymbol
                  )
              }
            )
          end
          def to_hash
          end

          class Rule < VitableConnect::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule,
                  VitableConnect::Internal::AnyHash
                )
              end

            # - `Salary` - Salary
            # - `Hourly` - Hourly
            # - `All` - All
            sig do
              returns(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::CompensationType::TaggedSymbol
              )
            end
            attr_accessor :compensation_type

            # Geographic matcher.
            sig do
              returns(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation
              )
            end
            attr_reader :eligible_geographical_location

            sig do
              params(
                eligible_geographical_location:
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation::OrHash
              ).void
            end
            attr_writer :eligible_geographical_location

            # - `Full Time` - Full Time
            # - `Part Time` - Part Time
            # - `Temporary` - Temporary
            # - `Intern` - Intern
            # - `Seasonal` - Seasonal
            # - `Individual Contractor` - Individual Contractor
            # - `All` - All
            sig do
              returns(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EmployeeClass::TaggedSymbol
              )
            end
            attr_accessor :employee_class

            # One eligibility rule — the workforce slice it makes eligible. Mirrors the
            # internal `PlanYearEligibilityPolicyRuleDTO` minus the raw ids and timestamps.
            sig do
              params(
                compensation_type:
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::CompensationType::OrSymbol,
                eligible_geographical_location:
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation::OrHash,
                employee_class:
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EmployeeClass::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # - `Salary` - Salary
              # - `Hourly` - Hourly
              # - `All` - All
              compensation_type:,
              # Geographic matcher.
              eligible_geographical_location:,
              # - `Full Time` - Full Time
              # - `Part Time` - Part Time
              # - `Temporary` - Temporary
              # - `Intern` - Intern
              # - `Seasonal` - Seasonal
              # - `Individual Contractor` - Individual Contractor
              # - `All` - All
              employee_class:
            )
            end

            sig do
              override.returns(
                {
                  compensation_type:
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::CompensationType::TaggedSymbol,
                  eligible_geographical_location:
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation,
                  employee_class:
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EmployeeClass::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # - `Salary` - Salary
            # - `Hourly` - Hourly
            # - `All` - All
            module CompensationType
              extend VitableConnect::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::CompensationType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SALARY =
                T.let(
                  :Salary,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::CompensationType::TaggedSymbol
                )
              HOURLY =
                T.let(
                  :Hourly,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::CompensationType::TaggedSymbol
                )
              ALL =
                T.let(
                  :All,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::CompensationType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::CompensationType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class EligibleGeographicalLocation < VitableConnect::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation,
                    VitableConnect::Internal::AnyHash
                  )
                end

              # States the rule is restricted to; empty when `type` is `All`.
              sig { returns(T::Array[String]) }
              attr_accessor :state_codes

              # - `All` - All
              # - `StateCodes` - State Codes
              sig do
                returns(
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # Geographic matcher.
              sig do
                params(
                  state_codes: T::Array[String],
                  type:
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # States the rule is restricted to; empty when `type` is `All`.
                state_codes:,
                # - `All` - All
                # - `StateCodes` - State Codes
                type:
              )
              end

              sig do
                override.returns(
                  {
                    state_codes: T::Array[String],
                    type:
                      VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation::Type::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              # - `All` - All
              # - `StateCodes` - State Codes
              module Type
                extend VitableConnect::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ALL =
                  T.let(
                    :All,
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation::Type::TaggedSymbol
                  )
                STATE_CODES =
                  T.let(
                    :StateCodes,
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EligibleGeographicalLocation::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # - `Full Time` - Full Time
            # - `Part Time` - Part Time
            # - `Temporary` - Temporary
            # - `Intern` - Intern
            # - `Seasonal` - Seasonal
            # - `Individual Contractor` - Individual Contractor
            # - `All` - All
            module EmployeeClass
              extend VitableConnect::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EmployeeClass
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FULL_TIME =
                T.let(
                  :"Full Time",
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EmployeeClass::TaggedSymbol
                )
              PART_TIME =
                T.let(
                  :"Part Time",
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EmployeeClass::TaggedSymbol
                )
              TEMPORARY =
                T.let(
                  :Temporary,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EmployeeClass::TaggedSymbol
                )
              INTERN =
                T.let(
                  :Intern,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EmployeeClass::TaggedSymbol
                )
              SEASONAL =
                T.let(
                  :Seasonal,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EmployeeClass::TaggedSymbol
                )
              INDIVIDUAL_CONTRACTOR =
                T.let(
                  :"Individual Contractor",
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EmployeeClass::TaggedSymbol
                )
              ALL =
                T.let(
                  :All,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EmployeeClass::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::Rule::EmployeeClass::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          # - `END_OF_N_MONTHS` - End Of N Months
          # - `END_OF_PLAN_YEAR` - End Of Plan Year
          module TerminationRule
            extend VitableConnect::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::TerminationRule
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            END_OF_N_MONTHS =
              T.let(
                :END_OF_N_MONTHS,
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::TerminationRule::TaggedSymbol
              )
            END_OF_PLAN_YEAR =
              T.let(
                :END_OF_PLAN_YEAR,
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::TerminationRule::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::TerminationRule::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # - `FIRST_OF_FOLLOWING_MONTH` - First Of Following Month
          # - `THIRTY_DAYS` - Thirty Days
          # - `SIXTY_DAYS` - Sixty Days
          module WaitingPeriod
            extend VitableConnect::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::WaitingPeriod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FIRST_OF_FOLLOWING_MONTH =
              T.let(
                :FIRST_OF_FOLLOWING_MONTH,
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::WaitingPeriod::TaggedSymbol
              )
            THIRTY_DAYS =
              T.let(
                :THIRTY_DAYS,
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::WaitingPeriod::TaggedSymbol
              )
            SIXTY_DAYS =
              T.let(
                :SIXTY_DAYS,
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::WaitingPeriod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EligibilityPolicy::WaitingPeriod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class EmployeeContribution < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EmployeeContribution,
                VitableConnect::Internal::AnyHash
              )
            end

          # Highest per-tier contribution in cents.
          sig { returns(Integer) }
          attr_accessor :max_cents

          # Lowest per-tier contribution in cents.
          sig { returns(Integer) }
          attr_accessor :min_cents

          # Employee contribution range.
          sig do
            params(max_cents: Integer, min_cents: Integer).returns(
              T.attached_class
            )
          end
          def self.new(
            # Highest per-tier contribution in cents.
            max_cents:,
            # Lowest per-tier contribution in cents.
            min_cents:
          )
          end

          sig { override.returns({ max_cents: Integer, min_cents: Integer }) }
          def to_hash
          end
        end

        class EmployerContribution < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EmployerContribution,
                VitableConnect::Internal::AnyHash
              )
            end

          # Highest per-tier contribution in cents.
          sig { returns(Integer) }
          attr_accessor :max_cents

          # Lowest per-tier contribution in cents.
          sig { returns(Integer) }
          attr_accessor :min_cents

          # Employer contribution range.
          sig do
            params(max_cents: Integer, min_cents: Integer).returns(
              T.attached_class
            )
          end
          def self.new(
            # Highest per-tier contribution in cents.
            max_cents:,
            # Lowest per-tier contribution in cents.
            min_cents:
          )
          end

          sig { override.returns({ max_cents: Integer, min_cents: Integer }) }
          def to_hash
          end
        end

        class EnrollmentRate < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::EnrollmentRate,
                VitableConnect::Internal::AnyHash
              )
            end

          # Employees eligible for this plan year.
          sig { returns(Integer) }
          attr_accessor :eligible

          # Employees enrolled in this plan year.
          sig { returns(Integer) }
          attr_accessor :enrolled

          # `enrolled / eligible` whole-number percent (0 when none).
          sig { returns(Integer) }
          attr_accessor :percentage

          # Enrolled/eligible rate for this plan year.
          sig do
            params(
              eligible: Integer,
              enrolled: Integer,
              percentage: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Employees eligible for this plan year.
            eligible:,
            # Employees enrolled in this plan year.
            enrolled:,
            # `enrolled / eligible` whole-number percent (0 when none).
            percentage:
          )
          end

          sig do
            override.returns(
              { eligible: Integer, enrolled: Integer, percentage: Integer }
            )
          end
          def to_hash
          end
        end

        # - `mec` - Mec
        # - `mvp` - Mvp
        # - `ichra` - Ichra
        # - `vpc` - Vpc
        # - `dental` - Dental
        # - `vision` - Vision
        module Family
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Family
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MEC =
            T.let(
              :mec,
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Family::TaggedSymbol
            )
          MVP =
            T.let(
              :mvp,
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Family::TaggedSymbol
            )
          ICHRA =
            T.let(
              :ichra,
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Family::TaggedSymbol
            )
          VPC =
            T.let(
              :vpc,
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Family::TaggedSymbol
            )
          DENTAL =
            T.let(
              :dental,
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Family::TaggedSymbol
            )
          VISION =
            T.let(
              :vision,
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Family::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Family::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # - `active` - Active
        # - `upcoming` - Upcoming
        # - `open_enrollment` - Open Enrollment
        # - `inactive` - Inactive
        module Status
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Status::TaggedSymbol
            )
          UPCOMING =
            T.let(
              :upcoming,
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Status::TaggedSymbol
            )
          OPEN_ENROLLMENT =
            T.let(
              :open_enrollment,
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
