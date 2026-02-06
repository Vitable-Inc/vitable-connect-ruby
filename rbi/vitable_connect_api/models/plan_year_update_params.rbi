# typed: strong

module VitableConnectAPI
  module Models
    class PlanYearUpdateParams < VitableConnectAPI::Internal::Type::BaseModel
      extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
      include VitableConnectAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::PlanYearUpdateParams,
            VitableConnectAPI::Internal::AnyHash
          )
        end

      # Updated contribution classes
      sig do
        returns(
          T.nilable(
            T::Array[VitableConnectAPI::PlanYearUpdateParams::ContributionClass]
          )
        )
      end
      attr_accessor :contribution_classes

      # Open enrollment end date
      sig { returns(T.nilable(Date)) }
      attr_accessor :open_enrollment_end

      # Open enrollment start date
      sig { returns(T.nilable(Date)) }
      attr_accessor :open_enrollment_start

      # Plan year status
      sig { returns(T.nilable(String)) }
      attr_accessor :status

      sig do
        params(
          contribution_classes:
            T.nilable(
              T::Array[
                VitableConnectAPI::PlanYearUpdateParams::ContributionClass::OrHash
              ]
            ),
          open_enrollment_end: T.nilable(Date),
          open_enrollment_start: T.nilable(Date),
          status: T.nilable(String),
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Updated contribution classes
        contribution_classes: nil,
        # Open enrollment end date
        open_enrollment_end: nil,
        # Open enrollment start date
        open_enrollment_start: nil,
        # Plan year status
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            contribution_classes:
              T.nilable(
                T::Array[
                  VitableConnectAPI::PlanYearUpdateParams::ContributionClass
                ]
              ),
            open_enrollment_end: T.nilable(Date),
            open_enrollment_start: T.nilable(Date),
            status: T.nilable(String),
            request_options: VitableConnectAPI::RequestOptions
          }
        )
      end
      def to_hash
      end

      class ContributionClass < VitableConnectAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnectAPI::PlanYearUpdateParams::ContributionClass,
              VitableConnectAPI::Internal::AnyHash
            )
          end

        # - `Unspecified` - Unspecified
        # - `EE` - Ee
        # - `ES` - Es
        # - `EC` - Ec
        # - `EF` - Ef
        sig { returns(VitableConnectAPI::CoverageTier::OrSymbol) }
        attr_accessor :coverage_tier

        # Employee's monthly contribution in cents
        sig { returns(Integer) }
        attr_accessor :employee_contribution_cents

        # Employer's monthly contribution in cents
        sig { returns(Integer) }
        attr_accessor :employer_contribution_cents

        # Employment type
        sig { returns(String) }
        attr_accessor :employment

        # Contribution class input for plan year update.
        sig do
          params(
            coverage_tier: VitableConnectAPI::CoverageTier::OrSymbol,
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
          # Employment type
          employment:
        )
        end

        sig do
          override.returns(
            {
              coverage_tier: VitableConnectAPI::CoverageTier::OrSymbol,
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
