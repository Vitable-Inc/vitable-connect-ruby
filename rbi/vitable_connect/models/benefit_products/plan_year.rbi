# typed: strong

module VitableConnect
  module Models
    module BenefitProducts
      class PlanYear < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::BenefitProducts::PlanYear,
              VitableConnect::Internal::AnyHash
            )
          end

        # Unique plan year identifier with 'plyr\_' prefix
        sig { returns(String) }
        attr_accessor :id

        # ID of the benefit product (bprd\_\*)
        sig { returns(String) }
        attr_accessor :benefit_product_id

        # List of contribution classes defining eligibility tiers and cost structures
        sig do
          returns(
            T::Array[
              VitableConnect::BenefitProducts::PlanYear::ContributionClass
            ]
          )
        end
        attr_accessor :contribution_classes

        # Date when benefit coverage ends
        sig { returns(Date) }
        attr_accessor :coverage_end

        # Date when benefit coverage begins
        sig { returns(Date) }
        attr_accessor :coverage_start

        # Timestamp when the plan year was created
        sig { returns(Time) }
        attr_accessor :created_at

        # ID of the employer this plan year is for (empr\_\*)
        sig { returns(String) }
        attr_accessor :employer_id

        # Date when open enrollment period ends
        sig { returns(Date) }
        attr_accessor :open_enrollment_end_date

        # Date when open enrollment period begins
        sig { returns(Date) }
        attr_accessor :open_enrollment_start_date

        # List of benefit plans available in this plan year
        sig do
          returns(T::Array[VitableConnect::BenefitProducts::PlanYear::Plan])
        end
        attr_accessor :plans

        # - `draft` - Draft
        # - `open_enrollment` - Open Enrollment
        # - `active` - Active
        # - `expired` - Expired
        sig do
          returns(VitableConnect::BenefitProducts::PlanYearStatus::TaggedSymbol)
        end
        attr_accessor :status

        # Timestamp when the plan year was last updated
        sig { returns(Time) }
        attr_accessor :updated_at

        # Serializer for Plan Year entity in public API responses.
        #
        # A Plan Year represents a benefit period configuration including coverage dates,
        # open enrollment windows, available plans, and contribution structures.
        sig do
          params(
            id: String,
            benefit_product_id: String,
            contribution_classes:
              T::Array[
                VitableConnect::BenefitProducts::PlanYear::ContributionClass::OrHash
              ],
            coverage_end: Date,
            coverage_start: Date,
            created_at: Time,
            employer_id: String,
            open_enrollment_end_date: Date,
            open_enrollment_start_date: Date,
            plans:
              T::Array[VitableConnect::BenefitProducts::PlanYear::Plan::OrHash],
            status: VitableConnect::BenefitProducts::PlanYearStatus::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique plan year identifier with 'plyr\_' prefix
          id:,
          # ID of the benefit product (bprd\_\*)
          benefit_product_id:,
          # List of contribution classes defining eligibility tiers and cost structures
          contribution_classes:,
          # Date when benefit coverage ends
          coverage_end:,
          # Date when benefit coverage begins
          coverage_start:,
          # Timestamp when the plan year was created
          created_at:,
          # ID of the employer this plan year is for (empr\_\*)
          employer_id:,
          # Date when open enrollment period ends
          open_enrollment_end_date:,
          # Date when open enrollment period begins
          open_enrollment_start_date:,
          # List of benefit plans available in this plan year
          plans:,
          # - `draft` - Draft
          # - `open_enrollment` - Open Enrollment
          # - `active` - Active
          # - `expired` - Expired
          status:,
          # Timestamp when the plan year was last updated
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              benefit_product_id: String,
              contribution_classes:
                T::Array[
                  VitableConnect::BenefitProducts::PlanYear::ContributionClass
                ],
              coverage_end: Date,
              coverage_start: Date,
              created_at: Time,
              employer_id: String,
              open_enrollment_end_date: Date,
              open_enrollment_start_date: Date,
              plans: T::Array[VitableConnect::BenefitProducts::PlanYear::Plan],
              status:
                VitableConnect::BenefitProducts::PlanYearStatus::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        class ContributionClass < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::BenefitProducts::PlanYear::ContributionClass,
                VitableConnect::Internal::AnyHash
              )
            end

          # Unique contribution class identifier
          sig { returns(String) }
          attr_accessor :id

          # - `Unspecified` - Unspecified
          # - `EE` - Ee
          # - `ES` - Es
          # - `EC` - Ec
          # - `EF` - Ef
          sig { returns(VitableConnect::CoverageTier::TaggedSymbol) }
          attr_accessor :coverage_tier

          # Employee's monthly contribution amount in cents
          sig { returns(Integer) }
          attr_accessor :employee_contribution_cents

          # Employer's monthly contribution amount in cents
          sig { returns(Integer) }
          attr_accessor :employer_contribution_cents

          # Employment type for this contribution class (e.g., 'full_time', 'part_time')
          sig { returns(String) }
          attr_accessor :employment

          # Defines eligibility tiers for contributions within a plan year.
          #
          # Contribution classes specify cost structures based on employment type and family
          # coverage status.
          sig do
            params(
              id: String,
              coverage_tier: VitableConnect::CoverageTier::OrSymbol,
              employee_contribution_cents: Integer,
              employer_contribution_cents: Integer,
              employment: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique contribution class identifier
            id:,
            # - `Unspecified` - Unspecified
            # - `EE` - Ee
            # - `ES` - Es
            # - `EC` - Ec
            # - `EF` - Ef
            coverage_tier:,
            # Employee's monthly contribution amount in cents
            employee_contribution_cents:,
            # Employer's monthly contribution amount in cents
            employer_contribution_cents:,
            # Employment type for this contribution class (e.g., 'full_time', 'part_time')
            employment:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                coverage_tier: VitableConnect::CoverageTier::TaggedSymbol,
                employee_contribution_cents: Integer,
                employer_contribution_cents: Integer,
                employment: String
              }
            )
          end
          def to_hash
          end
        end

        class Plan < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::BenefitProducts::PlanYear::Plan,
                VitableConnect::Internal::AnyHash
              )
            end

          # Unique plan identifier with 'plan\_' prefix
          sig { returns(String) }
          attr_accessor :id

          # Reference to the carrier's plan definition (cplan\_\*)
          sig { returns(String) }
          attr_accessor :carrier_plan_id

          # Base monthly premium in cents
          sig { returns(Integer) }
          attr_accessor :monthly_premium_cents

          # Display name of the benefit plan
          sig { returns(String) }
          attr_accessor :name

          # Annual deductible amount in cents
          sig { returns(T.nilable(Integer)) }
          attr_accessor :deductible_cents

          # Annual out-of-pocket maximum in cents
          sig { returns(T.nilable(Integer)) }
          attr_accessor :out_of_pocket_max_cents

          # - `Bronze` - Bronze
          # - `Silver` - Silver
          # - `Gold` - Gold
          # - `Platinum` - Platinum
          sig { returns(T.nilable(VitableConnect::PlanTier::TaggedSymbol)) }
          attr_accessor :tier

          # Nested plan within PlanYearSerializer.
          sig do
            params(
              id: String,
              carrier_plan_id: String,
              monthly_premium_cents: Integer,
              name: String,
              deductible_cents: T.nilable(Integer),
              out_of_pocket_max_cents: T.nilable(Integer),
              tier: T.nilable(VitableConnect::PlanTier::OrSymbol)
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique plan identifier with 'plan\_' prefix
            id:,
            # Reference to the carrier's plan definition (cplan\_\*)
            carrier_plan_id:,
            # Base monthly premium in cents
            monthly_premium_cents:,
            # Display name of the benefit plan
            name:,
            # Annual deductible amount in cents
            deductible_cents: nil,
            # Annual out-of-pocket maximum in cents
            out_of_pocket_max_cents: nil,
            # - `Bronze` - Bronze
            # - `Silver` - Silver
            # - `Gold` - Gold
            # - `Platinum` - Platinum
            tier: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                carrier_plan_id: String,
                monthly_premium_cents: Integer,
                name: String,
                deductible_cents: T.nilable(Integer),
                out_of_pocket_max_cents: T.nilable(Integer),
                tier: T.nilable(VitableConnect::PlanTier::TaggedSymbol)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
