# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module BenefitProducts
      # @see VitableConnectAPI::Resources::BenefitProducts::PlanYears#create
      class PlanYearCreateParams < VitableConnectAPI::Internal::Type::BaseModel
        extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
        include VitableConnectAPI::Internal::Type::RequestParameters

        # @!attribute contribution_classes
        #   List of contribution classes (at least one required)
        #
        #   @return [Array<VitableConnectAPI::Models::BenefitProducts::PlanYearCreateParams::ContributionClass>]
        required :contribution_classes,
                 -> { VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::BenefitProducts::PlanYearCreateParams::ContributionClass] }

        # @!attribute coverage_end
        #   Coverage end date
        #
        #   @return [Date]
        required :coverage_end, Date

        # @!attribute coverage_start
        #   Coverage start date
        #
        #   @return [Date]
        required :coverage_start, Date

        # @!attribute employer_id
        #   Employer ID this plan year is for (empr\_\*)
        #
        #   @return [String]
        required :employer_id, String

        # @!attribute open_enrollment_end
        #   Open enrollment end date
        #
        #   @return [Date]
        required :open_enrollment_end, Date

        # @!attribute open_enrollment_start
        #   Open enrollment start date
        #
        #   @return [Date]
        required :open_enrollment_start, Date

        # @!method initialize(contribution_classes:, coverage_end:, coverage_start:, employer_id:, open_enrollment_end:, open_enrollment_start:, request_options: {})
        #   @param contribution_classes [Array<VitableConnectAPI::Models::BenefitProducts::PlanYearCreateParams::ContributionClass>] List of contribution classes (at least one required)
        #
        #   @param coverage_end [Date] Coverage end date
        #
        #   @param coverage_start [Date] Coverage start date
        #
        #   @param employer_id [String] Employer ID this plan year is for (empr\_\*)
        #
        #   @param open_enrollment_end [Date] Open enrollment end date
        #
        #   @param open_enrollment_start [Date] Open enrollment start date
        #
        #   @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}]

        class ContributionClass < VitableConnectAPI::Internal::Type::BaseModel
          # @!attribute employee_contribution_cents
          #   Employee's monthly contribution in cents
          #
          #   @return [Integer]
          required :employee_contribution_cents, Integer

          # @!attribute employer_contribution_cents
          #   Employer's monthly contribution in cents
          #
          #   @return [Integer]
          required :employer_contribution_cents, Integer

          # @!attribute employment
          #   Employment type (e.g., 'full_time', 'part_time')
          #
          #   @return [String]
          required :employment, String

          # @!attribute family_status
          #   - `Unspecified` - Unspecified
          #   - `EE` - Ee
          #   - `ES` - Es
          #   - `EC` - Ec
          #   - `EF` - Ef
          #
          #   @return [Symbol, VitableConnectAPI::Models::CoverageTier]
          required :family_status, enum: -> { VitableConnectAPI::CoverageTier }

          # @!method initialize(employee_contribution_cents:, employer_contribution_cents:, employment:, family_status:)
          #   Some parameter documentations has been truncated, see
          #   {VitableConnectAPI::Models::BenefitProducts::PlanYearCreateParams::ContributionClass}
          #   for more details.
          #
          #   @param employee_contribution_cents [Integer] Employee's monthly contribution in cents
          #
          #   @param employer_contribution_cents [Integer] Employer's monthly contribution in cents
          #
          #   @param employment [String] Employment type (e.g., 'full_time', 'part_time')
          #
          #   @param family_status [Symbol, VitableConnectAPI::Models::CoverageTier] - `Unspecified` - Unspecified
        end
      end
    end
  end
end
