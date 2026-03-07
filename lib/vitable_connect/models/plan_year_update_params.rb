# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::PlanYears#update
    class PlanYearUpdateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute plan_year_id
      #   Unique plan year identifier (plyr\_\*)
      #
      #   @return [String]
      required :plan_year_id, String

      # @!attribute contribution_classes
      #   Updated contribution classes
      #
      #   @return [Array<VitableConnect::Models::PlanYearUpdateParams::ContributionClass>, nil]
      optional :contribution_classes,
               -> {
                 VitableConnect::Internal::Type::ArrayOf[VitableConnect::PlanYearUpdateParams::ContributionClass]
               },
               nil?: true

      # @!attribute open_enrollment_end
      #   Open enrollment end date
      #
      #   @return [Date, nil]
      optional :open_enrollment_end, Date, nil?: true

      # @!attribute open_enrollment_start
      #   Open enrollment start date
      #
      #   @return [Date, nil]
      optional :open_enrollment_start, Date, nil?: true

      # @!attribute status
      #   Plan year status
      #
      #   @return [String, nil]
      optional :status, String, nil?: true

      # @!method initialize(plan_year_id:, contribution_classes: nil, open_enrollment_end: nil, open_enrollment_start: nil, status: nil, request_options: {})
      #   @param plan_year_id [String] Unique plan year identifier (plyr\_\*)
      #
      #   @param contribution_classes [Array<VitableConnect::Models::PlanYearUpdateParams::ContributionClass>, nil] Updated contribution classes
      #
      #   @param open_enrollment_end [Date, nil] Open enrollment end date
      #
      #   @param open_enrollment_start [Date, nil] Open enrollment start date
      #
      #   @param status [String, nil] Plan year status
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
        #   Employment type
        #
        #   @return [String]
        required :employment, String

        # @!method initialize(coverage_tier:, employee_contribution_cents:, employer_contribution_cents:, employment:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::PlanYearUpdateParams::ContributionClass} for more
        #   details.
        #
        #   Contribution class input for plan year update.
        #
        #   @param coverage_tier [Symbol, VitableConnect::Models::CoverageTier] - `Unspecified` - Unspecified
        #
        #   @param employee_contribution_cents [Integer] Employee's monthly contribution in cents
        #
        #   @param employer_contribution_cents [Integer] Employer's monthly contribution in cents
        #
        #   @param employment [String] Employment type
      end
    end
  end
end
