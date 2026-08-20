# typed: strong

module VitableConnect
  module Models
    class EmployerListResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::EmployerListResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # Whether the employer is currently active in the system.
      sig { returns(T::Boolean) }
      attr_accessor :active

      # Shared read serializer for a postal address on public API responses.
      #
      # One definition for the address block every public resource emits (employer,
      # employee, …), so the 5-field shape isn't hand-rolled per endpoint. Read-only: it
      # renders an already-built address value object (e.g. `AddressDVO`) whose
      # attributes map 1:1 to these fields.
      sig { returns(VitableConnect::Models::EmployerListResponse::Address) }
      attr_reader :address

      sig do
        params(
          address: VitableConnect::Models::EmployerListResponse::Address::OrHash
        ).void
      end
      attr_writer :address

      # Distinct benefit-family tags across the employer's active benefits (e.g. `MEC`,
      # `ICHRA`, `VPC`).
      sig { returns(T::Array[String]) }
      attr_accessor :benefit_families

      sig do
        returns(
          VitableConnect::Models::EmployerListResponse::BenefitLifecycleStage
        )
      end
      attr_reader :benefit_lifecycle_stage

      sig do
        params(
          benefit_lifecycle_stage:
            VitableConnect::Models::EmployerListResponse::BenefitLifecycleStage::OrHash
        ).void
      end
      attr_writer :benefit_lifecycle_stage

      # Timestamp when the employer was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Employer Identification Number (masked in responses).
      sig { returns(T.nilable(String)) }
      attr_accessor :ein

      # Email address for billing and communications.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Prefixed employer identifier (`empr_<base64-encoded-uuid>`).
      sig { returns(String) }
      attr_accessor :employer_id

      # Enrolled/eligible employees roll-up.
      sig do
        returns(
          VitableConnect::Models::EmployerListResponse::EnrollmentRateSummary
        )
      end
      attr_reader :enrollment_rate_summary

      sig do
        params(
          enrollment_rate_summary:
            VitableConnect::Models::EmployerListResponse::EnrollmentRateSummary::OrHash
        ).void
      end
      attr_writer :enrollment_rate_summary

      # HRIS connection, or null when the employer has none.
      sig do
        returns(
          T.nilable(VitableConnect::Models::EmployerListResponse::HRISStatus)
        )
      end
      attr_reader :hris_status

      sig do
        params(
          hris_status:
            T.nilable(
              VitableConnect::Models::EmployerListResponse::HRISStatus::OrHash
            )
        ).void
      end
      attr_writer :hris_status

      # Legal business name for compliance and tax purposes.
      sig { returns(T.nilable(String)) }
      attr_accessor :legal_name

      # Employer name.
      sig { returns(String) }
      attr_accessor :name

      # ID of the parent organization (`org_*`), or null when unknown.
      sig { returns(T.nilable(String)) }
      attr_accessor :organization_id

      # Employer phone number.
      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      # The organization's own reference id for this employer, or null when none was
      # assigned.
      sig { returns(T.nilable(String)) }
      attr_accessor :reference_id

      # Timestamp when the employer was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # One employer row of the organization's book (list projection).
      #
      # Carries the enriched/computed columns (enrollment roll-up, benefit-family tags,
      # HRIS connection, benefit-lifecycle stage) alongside the flat CRM fields of the
      # underlying employer (legal name, EIN, contact, address, timestamps) for parity
      # with the legacy `Employer` contract.
      sig do
        params(
          active: T::Boolean,
          address:
            VitableConnect::Models::EmployerListResponse::Address::OrHash,
          benefit_families: T::Array[String],
          benefit_lifecycle_stage:
            VitableConnect::Models::EmployerListResponse::BenefitLifecycleStage::OrHash,
          created_at: Time,
          ein: T.nilable(String),
          email: T.nilable(String),
          employer_id: String,
          enrollment_rate_summary:
            VitableConnect::Models::EmployerListResponse::EnrollmentRateSummary::OrHash,
          hris_status:
            T.nilable(
              VitableConnect::Models::EmployerListResponse::HRISStatus::OrHash
            ),
          legal_name: T.nilable(String),
          name: String,
          organization_id: T.nilable(String),
          phone_number: T.nilable(String),
          reference_id: T.nilable(String),
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether the employer is currently active in the system.
        active:,
        # Shared read serializer for a postal address on public API responses.
        #
        # One definition for the address block every public resource emits (employer,
        # employee, …), so the 5-field shape isn't hand-rolled per endpoint. Read-only: it
        # renders an already-built address value object (e.g. `AddressDVO`) whose
        # attributes map 1:1 to these fields.
        address:,
        # Distinct benefit-family tags across the employer's active benefits (e.g. `MEC`,
        # `ICHRA`, `VPC`).
        benefit_families:,
        benefit_lifecycle_stage:,
        # Timestamp when the employer was created.
        created_at:,
        # Employer Identification Number (masked in responses).
        ein:,
        # Email address for billing and communications.
        email:,
        # Prefixed employer identifier (`empr_<base64-encoded-uuid>`).
        employer_id:,
        # Enrolled/eligible employees roll-up.
        enrollment_rate_summary:,
        # HRIS connection, or null when the employer has none.
        hris_status:,
        # Legal business name for compliance and tax purposes.
        legal_name:,
        # Employer name.
        name:,
        # ID of the parent organization (`org_*`), or null when unknown.
        organization_id:,
        # Employer phone number.
        phone_number:,
        # The organization's own reference id for this employer, or null when none was
        # assigned.
        reference_id:,
        # Timestamp when the employer was last updated.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            active: T::Boolean,
            address: VitableConnect::Models::EmployerListResponse::Address,
            benefit_families: T::Array[String],
            benefit_lifecycle_stage:
              VitableConnect::Models::EmployerListResponse::BenefitLifecycleStage,
            created_at: Time,
            ein: T.nilable(String),
            email: T.nilable(String),
            employer_id: String,
            enrollment_rate_summary:
              VitableConnect::Models::EmployerListResponse::EnrollmentRateSummary,
            hris_status:
              T.nilable(
                VitableConnect::Models::EmployerListResponse::HRISStatus
              ),
            legal_name: T.nilable(String),
            name: String,
            organization_id: T.nilable(String),
            phone_number: T.nilable(String),
            reference_id: T.nilable(String),
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Address < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EmployerListResponse::Address,
              VitableConnect::Internal::AnyHash
            )
          end

        # Primary street address.
        sig { returns(String) }
        attr_accessor :address_line_1

        # Secondary street address (apt, suite, etc.).
        sig { returns(T.nilable(String)) }
        attr_accessor :address_line_2

        # City name.
        sig { returns(String) }
        attr_accessor :city

        # Two-letter state code (e.g. `CA`, `NY`).
        sig { returns(String) }
        attr_accessor :state

        # ZIP code (5 or 9 digit).
        sig { returns(String) }
        attr_accessor :zipcode

        # Shared read serializer for a postal address on public API responses.
        #
        # One definition for the address block every public resource emits (employer,
        # employee, …), so the 5-field shape isn't hand-rolled per endpoint. Read-only: it
        # renders an already-built address value object (e.g. `AddressDVO`) whose
        # attributes map 1:1 to these fields.
        sig do
          params(
            address_line_1: String,
            address_line_2: T.nilable(String),
            city: String,
            state: String,
            zipcode: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Primary street address.
          address_line_1:,
          # Secondary street address (apt, suite, etc.).
          address_line_2:,
          # City name.
          city:,
          # Two-letter state code (e.g. `CA`, `NY`).
          state:,
          # ZIP code (5 or 9 digit).
          zipcode:
        )
        end

        sig do
          override.returns(
            {
              address_line_1: String,
              address_line_2: T.nilable(String),
              city: String,
              state: String,
              zipcode: String
            }
          )
        end
        def to_hash
        end
      end

      class BenefitLifecycleStage < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EmployerListResponse::BenefitLifecycleStage,
              VitableConnect::Internal::AnyHash
            )
          end

        # Anchor date for the stage (e.g. renewal date); null when not applicable.
        sig { returns(T.nilable(Date)) }
        attr_accessor :as_of_date

        # Computed employer benefit-lifecycle stage: `open_enrollment`, `renewal`,
        # `active`, `onboarding`, or `cancelled`.
        sig { returns(String) }
        attr_accessor :stage

        sig do
          params(as_of_date: T.nilable(Date), stage: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Anchor date for the stage (e.g. renewal date); null when not applicable.
          as_of_date:,
          # Computed employer benefit-lifecycle stage: `open_enrollment`, `renewal`,
          # `active`, `onboarding`, or `cancelled`.
          stage:
        )
        end

        sig { override.returns({ as_of_date: T.nilable(Date), stage: String }) }
        def to_hash
        end
      end

      class EnrollmentRateSummary < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EmployerListResponse::EnrollmentRateSummary,
              VitableConnect::Internal::AnyHash
            )
          end

        # Employees eligible for at least one active benefit.
        sig { returns(Integer) }
        attr_accessor :eligible

        # Employees enrolled in at least one active benefit.
        sig { returns(Integer) }
        attr_accessor :enrolled

        # `enrolled / eligible` as a whole-number percent (0 when none eligible).
        sig { returns(Integer) }
        attr_accessor :percentage

        # Enrolled/eligible employees roll-up.
        sig do
          params(
            eligible: Integer,
            enrolled: Integer,
            percentage: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Employees eligible for at least one active benefit.
          eligible:,
          # Employees enrolled in at least one active benefit.
          enrolled:,
          # `enrolled / eligible` as a whole-number percent (0 when none eligible).
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

      class HRISStatus < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EmployerListResponse::HRISStatus,
              VitableConnect::Internal::AnyHash
            )
          end

        # HRIS/payroll provider the employer is connected to (e.g. `Paychex`).
        sig { returns(String) }
        attr_accessor :provider

        # Connection status reported by the integration.
        sig { returns(String) }
        attr_accessor :status

        # HRIS connection, or null when the employer has none.
        sig do
          params(provider: String, status: String).returns(T.attached_class)
        end
        def self.new(
          # HRIS/payroll provider the employer is connected to (e.g. `Paychex`).
          provider:,
          # Connection status reported by the integration.
          status:
        )
        end

        sig { override.returns({ provider: String, status: String }) }
        def to_hash
        end
      end
    end
  end
end
