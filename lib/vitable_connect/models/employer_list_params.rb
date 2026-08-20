# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#list
    class EmployerListParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute benefit_family
      #   Filter to employers with at least one active benefit in these families.
      #
      #   @return [Array<Symbol, VitableConnect::Models::EmployerListParams::BenefitFamily>, nil]
      optional :benefit_family,
               -> { VitableConnect::Internal::Type::ArrayOf[enum: VitableConnect::EmployerListParams::BenefitFamily] }

      # @!attribute benefit_lifecycle_stage
      #   Filter to employers in one of these computed benefit-lifecycle stages.
      #
      #   @return [Array<Symbol, VitableConnect::Models::EmployerListParams::BenefitLifecycleStage>, nil]
      optional :benefit_lifecycle_stage,
               -> { VitableConnect::Internal::Type::ArrayOf[enum: VitableConnect::EmployerListParams::BenefitLifecycleStage] }

      # @!attribute hris_provider
      #   Filter to employers whose HRIS connection is with one of these payroll providers
      #   (e.g. `ADP RUN`). Matched case-insensitively; free text, so read the available
      #   values from the HRIS-providers endpoint rather than assuming a fixed set.
      #
      #   @return [Array<String>, nil]
      optional :hris_provider, VitableConnect::Internal::Type::ArrayOf[String]

      # @!attribute hris_status
      #   Filter to employers whose HRIS connection is in one of these statuses.
      #
      #   @return [Array<Symbol, VitableConnect::Models::EmployerListParams::HRISStatus>, nil]
      optional :hris_status,
               -> { VitableConnect::Internal::Type::ArrayOf[enum: VitableConnect::EmployerListParams::HRISStatus] }

      # @!attribute include_cancelled
      #   Include cancelled employers (hidden by default unless their stage is explicitly
      #   requested).
      #
      #   @return [Boolean, nil]
      optional :include_cancelled, VitableConnect::Internal::Type::Boolean

      # @!attribute limit
      #   Items per page.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute page
      #   Page number.
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute search
      #   Case-insensitive employer-name substring filter.
      #
      #   @return [String, nil]
      optional :search, String, nil?: true

      # @!method initialize(benefit_family: nil, benefit_lifecycle_stage: nil, hris_provider: nil, hris_status: nil, include_cancelled: nil, limit: nil, page: nil, search: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::EmployerListParams} for more details.
      #
      #   @param benefit_family [Array<Symbol, VitableConnect::Models::EmployerListParams::BenefitFamily>] Filter to employers with at least one active benefit in these families.
      #
      #   @param benefit_lifecycle_stage [Array<Symbol, VitableConnect::Models::EmployerListParams::BenefitLifecycleStage>] Filter to employers in one of these computed benefit-lifecycle stages.
      #
      #   @param hris_provider [Array<String>] Filter to employers whose HRIS connection is with one of these payroll providers
      #
      #   @param hris_status [Array<Symbol, VitableConnect::Models::EmployerListParams::HRISStatus>] Filter to employers whose HRIS connection is in one of these statuses.
      #
      #   @param include_cancelled [Boolean] Include cancelled employers (hidden by default unless their stage is explicitly
      #
      #   @param limit [Integer] Items per page.
      #
      #   @param page [Integer] Page number.
      #
      #   @param search [String, nil] Case-insensitive employer-name substring filter.
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

      # - `mec` - mec
      # - `mvp` - mvp
      # - `ichra` - ichra
      # - `vpc` - vpc
      # - `dental` - dental
      # - `vision` - vision
      module BenefitFamily
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

      # - `open_enrollment` - open_enrollment
      # - `renewal` - renewal
      # - `active` - active
      # - `onboarding` - onboarding
      # - `cancelled` - cancelled
      module BenefitLifecycleStage
        extend VitableConnect::Internal::Type::Enum

        OPEN_ENROLLMENT = :open_enrollment
        RENEWAL = :renewal
        ACTIVE = :active
        ONBOARDING = :onboarding
        CANCELLED = :cancelled

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # - `Pending` - Pending
      # - `Active` - Active
      # - `Inactive` - Inactive
      # - `Paused` - Paused
      # - `Terminated` - Terminated
      module HRISStatus
        extend VitableConnect::Internal::Type::Enum

        PENDING = :Pending
        ACTIVE = :Active
        INACTIVE = :Inactive
        PAUSED = :Paused
        TERMINATED = :Terminated

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
