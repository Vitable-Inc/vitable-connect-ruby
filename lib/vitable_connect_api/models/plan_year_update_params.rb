# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # @see VitableConnectAPI::Resources::PlanYears#update
    class PlanYearUpdateParams < VitableConnectAPI::Internal::Type::BaseModel
      extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
      include VitableConnectAPI::Internal::Type::RequestParameters

      # @!attribute contribution_classes
      #   Updated contribution classes
      #
      #   @return [Array<VitableConnectAPI::Models::PlanYearUpdateParams::ContributionClass>, nil]
      optional :contribution_classes,
               -> {
                 VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::PlanYearUpdateParams::ContributionClass]
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

      # @!method initialize(contribution_classes: nil, open_enrollment_end: nil, open_enrollment_start: nil, status: nil, request_options: {})
      #   @param contribution_classes [Array<VitableConnectAPI::Models::PlanYearUpdateParams::ContributionClass>, nil] Updated contribution classes
      #
      #   @param open_enrollment_end [Date, nil] Open enrollment end date
      #
      #   @param open_enrollment_start [Date, nil] Open enrollment start date
      #
      #   @param status [String, nil] Plan year status
      #
      #   @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}]

      class ContributionClass < VitableConnectAPI::Internal::Type::BaseModel
        # @!attribute coverage_tier
        #   - `Unspecified` - Unspecified
        #   - `EE` - Ee
        #   - `ES` - Es
        #   - `EC` - Ec
        #   - `EF` - Ef
        #
        #   @return [Symbol, VitableConnectAPI::Models::CoverageTier]
        required :coverage_tier, enum: -> { VitableConnectAPI::CoverageTier }

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
        #   {VitableConnectAPI::Models::PlanYearUpdateParams::ContributionClass} for more
        #   details.
        #
        #   Contribution class input for plan year update.
        #
        #   @param coverage_tier [Symbol, VitableConnectAPI::Models::CoverageTier] - `Unspecified` - Unspecified
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
