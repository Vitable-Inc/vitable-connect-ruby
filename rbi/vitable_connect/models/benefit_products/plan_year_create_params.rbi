# typed: strong

module VitableConnect
  module Models
    module BenefitProducts
      class PlanYearCreateParams < VitableConnect::Internal::Type::BaseModel
        extend VitableConnect::Internal::Type::RequestParameters::Converter
        include VitableConnect::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::BenefitProducts::PlanYearCreateParams,
              VitableConnect::Internal::AnyHash
            )
          end

        # List of contribution classes (at least one required)
        sig do
          returns(
            T::Array[
              VitableConnect::BenefitProducts::PlanYearCreateParams::ContributionClass
            ]
          )
        end
        attr_accessor :contribution_classes

        # Coverage end date
        sig { returns(Date) }
        attr_accessor :coverage_end

        # Coverage start date
        sig { returns(Date) }
        attr_accessor :coverage_start

        # Employer ID this plan year is for (empr\_\*)
        sig { returns(String) }
        attr_accessor :employer_id

        # Open enrollment end date
        sig { returns(Date) }
        attr_accessor :open_enrollment_end

        # Open enrollment start date
        sig { returns(Date) }
        attr_accessor :open_enrollment_start

        sig do
          params(
            contribution_classes:
              T::Array[
                VitableConnect::BenefitProducts::PlanYearCreateParams::ContributionClass::OrHash
              ],
            coverage_end: Date,
            coverage_start: Date,
            employer_id: String,
            open_enrollment_end: Date,
            open_enrollment_start: Date,
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # List of contribution classes (at least one required)
          contribution_classes:,
          # Coverage end date
          coverage_end:,
          # Coverage start date
          coverage_start:,
          # Employer ID this plan year is for (empr\_\*)
          employer_id:,
          # Open enrollment end date
          open_enrollment_end:,
          # Open enrollment start date
          open_enrollment_start:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              contribution_classes:
                T::Array[
                  VitableConnect::BenefitProducts::PlanYearCreateParams::ContributionClass
                ],
              coverage_end: Date,
              coverage_start: Date,
              employer_id: String,
              open_enrollment_end: Date,
              open_enrollment_start: Date,
              request_options: VitableConnect::RequestOptions
            }
          )
        end
        def to_hash
        end

        class ContributionClass < VitableConnect::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitableConnect::BenefitProducts::PlanYearCreateParams::ContributionClass,
                VitableConnect::Internal::AnyHash
              )
            end

          # - `Unspecified` - Unspecified
          # - `EE` - Ee
          # - `ES` - Es
          # - `EC` - Ec
          # - `EF` - Ef
          sig { returns(VitableConnect::CoverageTier::OrSymbol) }
          attr_accessor :coverage_tier

          # Employee's monthly contribution in cents
          sig { returns(Integer) }
          attr_accessor :employee_contribution_cents

          # Employer's monthly contribution in cents
          sig { returns(Integer) }
          attr_accessor :employer_contribution_cents

          # Employment type (e.g., 'full_time', 'part_time')
          sig { returns(String) }
          attr_accessor :employment

          # Contribution class input for plan year creation.
          sig do
            params(
              coverage_tier: VitableConnect::CoverageTier::OrSymbol,
              employee_contribution_cents: Integer,
              employer_contribution_cents: Integer,
              employment: String
            ).returns(T.attached_class)
          end
          def self.new(
            # - `Unspecified` - Unspecified
            # - `EE` - Ee
            # - `ES` - Es
            # - `EC` - Ec
            # - `EF` - Ef
            coverage_tier:,
            # Employee's monthly contribution in cents
            employee_contribution_cents:,
            # Employer's monthly contribution in cents
            employer_contribution_cents:,
            # Employment type (e.g., 'full_time', 'part_time')
            employment:
          )
          end

          sig do
            override.returns(
              {
                coverage_tier: VitableConnect::CoverageTier::OrSymbol,
                employee_contribution_cents: Integer,
                employer_contribution_cents: Integer,
                employment: String
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
