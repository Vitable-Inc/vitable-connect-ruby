# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#list
    class EmployerListResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute active
      #   Whether the employer is currently active in the system.
      #
      #   @return [Boolean]
      required :active, VitableConnect::Internal::Type::Boolean

      # @!attribute address
      #   Shared read serializer for a postal address on public API responses.
      #
      #   One definition for the address block every public resource emits (employer,
      #   employee, …), so the 5-field shape isn't hand-rolled per endpoint. Read-only: it
      #   renders an already-built address value object (e.g. `AddressDVO`) whose
      #   attributes map 1:1 to these fields.
      #
      #   @return [VitableConnect::Models::EmployerListResponse::Address]
      required :address, -> { VitableConnect::Models::EmployerListResponse::Address }

      # @!attribute benefit_families
      #   Distinct benefit-family tags across the employer's active benefits (e.g. `MEC`,
      #   `ICHRA`, `VPC`).
      #
      #   @return [Array<String>]
      required :benefit_families, VitableConnect::Internal::Type::ArrayOf[String]

      # @!attribute benefit_lifecycle_stage
      #
      #   @return [VitableConnect::Models::EmployerListResponse::BenefitLifecycleStage]
      required :benefit_lifecycle_stage,
               -> { VitableConnect::Models::EmployerListResponse::BenefitLifecycleStage }

      # @!attribute created_at
      #   Timestamp when the employer was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute ein
      #   Employer Identification Number (masked in responses).
      #
      #   @return [String, nil]
      required :ein, String, nil?: true

      # @!attribute email
      #   Email address for billing and communications.
      #
      #   @return [String, nil]
      required :email, String, nil?: true

      # @!attribute employer_id
      #   Prefixed employer identifier (`empr_<base64-encoded-uuid>`).
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute enrollment_rate_summary
      #   Enrolled/eligible employees roll-up.
      #
      #   @return [VitableConnect::Models::EmployerListResponse::EnrollmentRateSummary]
      required :enrollment_rate_summary,
               -> { VitableConnect::Models::EmployerListResponse::EnrollmentRateSummary }

      # @!attribute hris_status
      #   HRIS connection, or null when the employer has none.
      #
      #   @return [VitableConnect::Models::EmployerListResponse::HRISStatus, nil]
      required :hris_status, -> { VitableConnect::Models::EmployerListResponse::HRISStatus }, nil?: true

      # @!attribute legal_name
      #   Legal business name for compliance and tax purposes.
      #
      #   @return [String, nil]
      required :legal_name, String, nil?: true

      # @!attribute name
      #   Employer name.
      #
      #   @return [String]
      required :name, String

      # @!attribute organization_id
      #   ID of the parent organization (`org_*`), or null when unknown.
      #
      #   @return [String, nil]
      required :organization_id, String, nil?: true

      # @!attribute phone_number
      #   Employer phone number.
      #
      #   @return [String, nil]
      required :phone_number, String, nil?: true

      # @!attribute reference_id
      #   The organization's own reference id for this employer, or null when none was
      #   assigned.
      #
      #   @return [String, nil]
      required :reference_id, String, nil?: true

      # @!attribute updated_at
      #   Timestamp when the employer was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(active:, address:, benefit_families:, benefit_lifecycle_stage:, created_at:, ein:, email:, employer_id:, enrollment_rate_summary:, hris_status:, legal_name:, name:, organization_id:, phone_number:, reference_id:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::EmployerListResponse} for more details.
      #
      #   One employer row of the organization's book (list projection).
      #
      #   Carries the enriched/computed columns (enrollment roll-up, benefit-family tags,
      #   HRIS connection, benefit-lifecycle stage) alongside the flat CRM fields of the
      #   underlying employer (legal name, EIN, contact, address, timestamps) for parity
      #   with the legacy `Employer` contract.
      #
      #   @param active [Boolean] Whether the employer is currently active in the system.
      #
      #   @param address [VitableConnect::Models::EmployerListResponse::Address] Shared read serializer for a postal address on public API responses.
      #
      #   @param benefit_families [Array<String>] Distinct benefit-family tags across the employer's active benefits (e.g. `MEC`,
      #
      #   @param benefit_lifecycle_stage [VitableConnect::Models::EmployerListResponse::BenefitLifecycleStage]
      #
      #   @param created_at [Time] Timestamp when the employer was created.
      #
      #   @param ein [String, nil] Employer Identification Number (masked in responses).
      #
      #   @param email [String, nil] Email address for billing and communications.
      #
      #   @param employer_id [String] Prefixed employer identifier (`empr_<base64-encoded-uuid>`).
      #
      #   @param enrollment_rate_summary [VitableConnect::Models::EmployerListResponse::EnrollmentRateSummary] Enrolled/eligible employees roll-up.
      #
      #   @param hris_status [VitableConnect::Models::EmployerListResponse::HRISStatus, nil] HRIS connection, or null when the employer has none.
      #
      #   @param legal_name [String, nil] Legal business name for compliance and tax purposes.
      #
      #   @param name [String] Employer name.
      #
      #   @param organization_id [String, nil] ID of the parent organization (`org_*`), or null when unknown.
      #
      #   @param phone_number [String, nil] Employer phone number.
      #
      #   @param reference_id [String, nil] The organization's own reference id for this employer, or null when none was ass
      #
      #   @param updated_at [Time] Timestamp when the employer was last updated.

      # @see VitableConnect::Models::EmployerListResponse#address
      class Address < VitableConnect::Internal::Type::BaseModel
        # @!attribute address_line_1
        #   Primary street address.
        #
        #   @return [String]
        required :address_line_1, String

        # @!attribute address_line_2
        #   Secondary street address (apt, suite, etc.).
        #
        #   @return [String, nil]
        required :address_line_2, String, nil?: true

        # @!attribute city
        #   City name.
        #
        #   @return [String]
        required :city, String

        # @!attribute state
        #   Two-letter state code (e.g. `CA`, `NY`).
        #
        #   @return [String]
        required :state, String

        # @!attribute zipcode
        #   ZIP code (5 or 9 digit).
        #
        #   @return [String]
        required :zipcode, String

        # @!method initialize(address_line_1:, address_line_2:, city:, state:, zipcode:)
        #   Shared read serializer for a postal address on public API responses.
        #
        #   One definition for the address block every public resource emits (employer,
        #   employee, …), so the 5-field shape isn't hand-rolled per endpoint. Read-only: it
        #   renders an already-built address value object (e.g. `AddressDVO`) whose
        #   attributes map 1:1 to these fields.
        #
        #   @param address_line_1 [String] Primary street address.
        #
        #   @param address_line_2 [String, nil] Secondary street address (apt, suite, etc.).
        #
        #   @param city [String] City name.
        #
        #   @param state [String] Two-letter state code (e.g. `CA`, `NY`).
        #
        #   @param zipcode [String] ZIP code (5 or 9 digit).
      end

      # @see VitableConnect::Models::EmployerListResponse#benefit_lifecycle_stage
      class BenefitLifecycleStage < VitableConnect::Internal::Type::BaseModel
        # @!attribute as_of_date
        #   Anchor date for the stage (e.g. renewal date); null when not applicable.
        #
        #   @return [Date, nil]
        required :as_of_date, Date, nil?: true

        # @!attribute stage
        #   Computed employer benefit-lifecycle stage: `open_enrollment`, `renewal`,
        #   `active`, `onboarding`, or `cancelled`.
        #
        #   @return [String]
        required :stage, String

        # @!method initialize(as_of_date:, stage:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::EmployerListResponse::BenefitLifecycleStage} for more
        #   details.
        #
        #   @param as_of_date [Date, nil] Anchor date for the stage (e.g. renewal date); null when not applicable.
        #
        #   @param stage [String] Computed employer benefit-lifecycle stage: `open_enrollment`, `renewal`, `active
      end

      # @see VitableConnect::Models::EmployerListResponse#enrollment_rate_summary
      class EnrollmentRateSummary < VitableConnect::Internal::Type::BaseModel
        # @!attribute eligible
        #   Employees eligible for at least one active benefit.
        #
        #   @return [Integer]
        required :eligible, Integer

        # @!attribute enrolled
        #   Employees enrolled in at least one active benefit.
        #
        #   @return [Integer]
        required :enrolled, Integer

        # @!attribute percentage
        #   `enrolled / eligible` as a whole-number percent (0 when none eligible).
        #
        #   @return [Integer]
        required :percentage, Integer

        # @!method initialize(eligible:, enrolled:, percentage:)
        #   Enrolled/eligible employees roll-up.
        #
        #   @param eligible [Integer] Employees eligible for at least one active benefit.
        #
        #   @param enrolled [Integer] Employees enrolled in at least one active benefit.
        #
        #   @param percentage [Integer] `enrolled / eligible` as a whole-number percent (0 when none eligible).
      end

      # @see VitableConnect::Models::EmployerListResponse#hris_status
      class HRISStatus < VitableConnect::Internal::Type::BaseModel
        # @!attribute provider
        #   Id of the HRIS/payroll provider the employer is connected to (e.g. `paylocity`).
        #
        #   @return [String]
        required :provider, String

        # @!attribute provider_label
        #   Display name of that provider (e.g. `Paylocity`).
        #
        #   @return [String]
        required :provider_label, String

        # @!attribute status
        #   Connection status reported by the integration.
        #
        #   @return [String]
        required :status, String

        # @!method initialize(provider:, provider_label:, status:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::EmployerListResponse::HRISStatus} for more details.
        #
        #   HRIS connection, or null when the employer has none.
        #
        #   @param provider [String] Id of the HRIS/payroll provider the employer is connected to (e.g. `paylocity`).
        #
        #   @param provider_label [String] Display name of that provider (e.g. `Paylocity`).
        #
        #   @param status [String] Connection status reported by the integration.
      end
    end
  end
end
