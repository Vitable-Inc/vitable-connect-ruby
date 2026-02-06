# frozen_string_literal: true

module VitableConnect
  module Models
    module BenefitProducts
      # @see VitableConnect::Resources::BenefitProducts::PlanYears#create
      class PlanYearCreateParams < VitableConnect::Internal::Type::BaseModel
        extend VitableConnect::Internal::Type::RequestParameters::Converter
        include VitableConnect::Internal::Type::RequestParameters

        # @!attribute contribution_classes
        #   List of contribution classes (at least one required)
        #
        #   @return [Array<VitableConnect::Models::BenefitProducts::PlanYearCreateParams::ContributionClass>]
        required :contribution_classes,
                 -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::BenefitProducts::PlanYearCreateParams::ContributionClass] }

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
        #   @param contribution_classes [Array<VitableConnect::Models::BenefitProducts::PlanYearCreateParams::ContributionClass>] List of contribution classes (at least one required)
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
        #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

        class ContributionClass < VitableConnect::Internal::Type::BaseModel
          # @!attribute coverage_tier
          #   - `Unspecified` - Unspecified
          #   - `EE` - Ee
          #   - `ES` - Es
          #   - `EC` - Ec
          #   - `EF` - Ef
          #
          #   @return [Symbol, VitableConnect::Models::CoverageTier]
          required :coverage_tier, enum: -> { VitableConnect::CoverageTier }

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

          # @!method initialize(coverage_tier:, employee_contribution_cents:, employer_contribution_cents:, employment:)
          #   Some parameter documentations has been truncated, see
          #   {VitableConnect::Models::BenefitProducts::PlanYearCreateParams::ContributionClass}
          #   for more details.
          #
          #   Contribution class input for plan year creation.
          #
          #   @param coverage_tier [Symbol, VitableConnect::Models::CoverageTier] - `Unspecified` - Unspecified
          #
          #   @param employee_contribution_cents [Integer] Employee's monthly contribution in cents
          #
          #   @param employer_contribution_cents [Integer] Employer's monthly contribution in cents
          #
          #   @param employment [String] Employment type (e.g., 'full_time', 'part_time')
        end
      end
    end
  end
end
