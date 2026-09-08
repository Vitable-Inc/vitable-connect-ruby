# typed: strong

module VitableConnect
  module Models
    class EmployerListBenefitPlanYearsResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::EmployerListBenefitPlanYearsResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data
          ]
        )
      end
      attr_accessor :data

      sig do
        params(
          data:
            T::Array[
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data
              ]
          }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data,
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

        # Coverage end.
        sig { returns(T.nilable(Date)) }
        attr_accessor :coverage_end

        # Coverage start.
        sig { returns(Date) }
        attr_accessor :coverage_start

        # Employee contribution range.
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EmployeeContribution
            )
          )
        end
        attr_reader :employee_contribution

        sig do
          params(
            employee_contribution:
              T.nilable(
                VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EmployeeContribution::OrHash
              )
          ).void
        end
        attr_writer :employee_contribution

        # Employer contribution range.
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EmployerContribution
            )
          )
        end
        attr_reader :employer_contribution

        sig do
          params(
            employer_contribution:
              T.nilable(
                VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EmployerContribution::OrHash
              )
          ).void
        end
        attr_writer :employer_contribution

        # Enrolled/eligible rate for this plan year.
        sig do
          returns(
            VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EnrollmentRate
          )
        end
        attr_reader :enrollment_rate

        sig do
          params(
            enrollment_rate:
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EnrollmentRate::OrHash
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
            VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Family::TaggedSymbol
          )
        end
        attr_accessor :family

        # Whether this is the current plan year.
        sig { returns(T::Boolean) }
        attr_accessor :is_current

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

        # - `active` - Active
        # - `upcoming` - Upcoming
        # - `open_enrollment` - Open Enrollment
        # - `inactive` - Inactive
        sig do
          returns(
            VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Calendar coverage year.
        sig { returns(Integer) }
        attr_accessor :year

        # One plan year, list view.
        #
        # Standalone (no shared base) so the exact list payload is readable in one place;
        # the detail serializer is a separate class even where fields overlap.
        sig do
          params(
            benefit_id: String,
            benefit_plan_year_id: String,
            carrier: T.nilable(String),
            coverage_end: T.nilable(Date),
            coverage_start: Date,
            employee_contribution:
              T.nilable(
                VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EmployeeContribution::OrHash
              ),
            employer_contribution:
              T.nilable(
                VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EmployerContribution::OrHash
              ),
            enrollment_rate:
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EnrollmentRate::OrHash,
            family:
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Family::OrSymbol,
            is_current: T::Boolean,
            network_names: T::Array[String],
            offered_states: T::Array[String],
            open_enrollment_end: T.nilable(Date),
            open_enrollment_start: Date,
            premium_in_cents: T.nilable(Integer),
            product_name: String,
            status:
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Status::OrSymbol,
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
          # Coverage end.
          coverage_end:,
          # Coverage start.
          coverage_start:,
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
          # Whether this is the current plan year.
          is_current:,
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
              coverage_end: T.nilable(Date),
              coverage_start: Date,
              employee_contribution:
                T.nilable(
                  VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EmployeeContribution
                ),
              employer_contribution:
                T.nilable(
                  VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EmployerContribution
                ),
              enrollment_rate:
                VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EnrollmentRate,
              family:
                VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Family::TaggedSymbol,
              is_current: T::Boolean,
              network_names: T::Array[String],
              offered_states: T::Array[String],
              open_enrollment_end: T.nilable(Date),
              open_enrollment_start: Date,
              premium_in_cents: T.nilable(Integer),
              product_name: String,
              status:
                VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Status::TaggedSymbol,
              year: Integer
            }
          )
        end
        def to_hash
        end

        class EmployeeContribution < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EmployeeContribution,
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
                VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EmployerContribution,
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
                VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::EnrollmentRate,
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
                VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Family
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MEC =
            T.let(
              :mec,
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Family::TaggedSymbol
            )
          MVP =
            T.let(
              :mvp,
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Family::TaggedSymbol
            )
          ICHRA =
            T.let(
              :ichra,
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Family::TaggedSymbol
            )
          VPC =
            T.let(
              :vpc,
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Family::TaggedSymbol
            )
          DENTAL =
            T.let(
              :dental,
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Family::TaggedSymbol
            )
          VISION =
            T.let(
              :vision,
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Family::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Family::TaggedSymbol
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
                VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Status::TaggedSymbol
            )
          UPCOMING =
            T.let(
              :upcoming,
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Status::TaggedSymbol
            )
          OPEN_ENROLLMENT =
            T.let(
              :open_enrollment,
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data::Status::TaggedSymbol
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
