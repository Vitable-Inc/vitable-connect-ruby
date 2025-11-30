# frozen_string_literal: true

module VitableConnectAPI
  module Models
    class EnrollmentListPlansResponseItem < VitableConnectAPI::Internal::Type::BaseModel
      # @!attribute id
      #   Unique plan identifier (plan\_\*)
      #
      #   @return [String]
      required :id, String

      # @!attribute costs
      #   Cost breakdown by coverage tier
      #
      #   @return [Array<VitableConnectAPI::Models::EnrollmentListPlansResponseItem::Cost>]
      required :costs,
               -> { VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Models::EnrollmentListPlansResponseItem::Cost] }

      # @!attribute name
      #   Display name of the plan
      #
      #   @return [String]
      required :name, String

      # @!attribute carrier_name
      #   Name of the insurance carrier
      #
      #   @return [String, nil]
      optional :carrier_name, String, nil?: true

      # @!attribute deductible_cents
      #   Annual deductible in cents
      #
      #   @return [Integer, nil]
      optional :deductible_cents, Integer, nil?: true

      # @!attribute description
      #   Plan description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute out_of_pocket_max_cents
      #   Annual out-of-pocket maximum in cents
      #
      #   @return [Integer, nil]
      optional :out_of_pocket_max_cents, Integer, nil?: true

      # @!attribute tier
      #   - `Bronze` - Bronze
      #   - `Silver` - Silver
      #   - `Gold` - Gold
      #   - `Platinum` - Platinum
      #
      #   @return [Symbol, VitableConnectAPI::Models::PlanTier, nil]
      optional :tier, enum: -> { VitableConnectAPI::PlanTier }, nil?: true

      # @!method initialize(id:, costs:, name:, carrier_name: nil, deductible_cents: nil, description: nil, out_of_pocket_max_cents: nil, tier: nil)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnectAPI::Models::EnrollmentListPlansResponseItem} for more details.
      #
      #   Serializer for plan options available for enrollment selection.
      #
      #   Returns plan details with cost breakdowns for each coverage tier.
      #
      #   @param id [String] Unique plan identifier (plan\_\*)
      #
      #   @param costs [Array<VitableConnectAPI::Models::EnrollmentListPlansResponseItem::Cost>] Cost breakdown by coverage tier
      #
      #   @param name [String] Display name of the plan
      #
      #   @param carrier_name [String, nil] Name of the insurance carrier
      #
      #   @param deductible_cents [Integer, nil] Annual deductible in cents
      #
      #   @param description [String, nil] Plan description
      #
      #   @param out_of_pocket_max_cents [Integer, nil] Annual out-of-pocket maximum in cents
      #
      #   @param tier [Symbol, VitableConnectAPI::Models::PlanTier, nil] - `Bronze` - Bronze

      class Cost < VitableConnectAPI::Internal::Type::BaseModel
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

        # @!attribute total_monthly_premium_cents
        #   Total monthly premium in cents
        #
        #   @return [Integer]
        required :total_monthly_premium_cents, Integer

        # @!method initialize(coverage_tier:, employee_contribution_cents:, employer_contribution_cents:, total_monthly_premium_cents:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnectAPI::Models::EnrollmentListPlansResponseItem::Cost} for more
        #   details.
        #
        #   Cost breakdown for a plan option.
        #
        #   @param coverage_tier [Symbol, VitableConnectAPI::Models::CoverageTier] - `Unspecified` - Unspecified
        #
        #   @param employee_contribution_cents [Integer] Employee's monthly contribution in cents
        #
        #   @param employer_contribution_cents [Integer] Employer's monthly contribution in cents
        #
        #   @param total_monthly_premium_cents [Integer] Total monthly premium in cents
      end
    end

    # @type [VitableConnectAPI::Internal::Type::Converter]
    EnrollmentListPlansResponse =
      VitableConnectAPI::Internal::Type::ArrayOf[-> { VitableConnectAPI::Models::EnrollmentListPlansResponseItem }]
  end
end
