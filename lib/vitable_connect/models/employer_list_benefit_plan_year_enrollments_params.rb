# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#list_benefit_plan_year_enrollments
    class EmployerListBenefitPlanYearEnrollmentsParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute employer_id
      #   Unique employer identifier (empr\_\*)
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute benefit_plan_year_id
      #   Unique benefit-plan-year identifier (plyr\_\*).
      #
      #   @return [String]
      required :benefit_plan_year_id, String

      # @!attribute election_status
      #   Filter by election status. Repeat the parameter to match several.
      #
      #   @return [Array<Symbol, VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsParams::ElectionStatus>, nil]
      optional :election_status,
               -> { VitableConnect::Internal::Type::ArrayOf[enum: VitableConnect::EmployerListBenefitPlanYearEnrollmentsParams::ElectionStatus] }

      # @!attribute limit
      #   Items per page (default: 20, max: 100)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute page
      #   Page number (default: 1)
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute search
      #   Case-insensitive search. Matches member name partially, and the `member_id`
      #   exactly — either your own reference id or the prefixed `grpmbr_<...>` id.
      #
      #   @return [String, nil]
      optional :search, String

      # @!method initialize(employer_id:, benefit_plan_year_id:, election_status: nil, limit: nil, page: nil, search: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsParams} for more
      #   details.
      #
      #   @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      #   @param benefit_plan_year_id [String] Unique benefit-plan-year identifier (plyr\_\*).
      #
      #   @param election_status [Array<Symbol, VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsParams::ElectionStatus>] Filter by election status. Repeat the parameter to match several.
      #
      #   @param limit [Integer] Items per page (default: 20, max: 100)
      #
      #   @param page [Integer] Page number (default: 1)
      #
      #   @param search [String] Case-insensitive search. Matches member name partially, and the `member_id` exac
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

      module ElectionStatus
        extend VitableConnect::Internal::Type::Enum

        ENROLLED = :Enrolled
        EXPIRED = :Expired
        PENDING = :Pending
        WAIVED = :Waived

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
