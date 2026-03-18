# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#create_eligibility_policy
    class EmployerCreateEligibilityPolicyParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute employer_id
      #   Unique employer identifier (empr\_\*)
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute classification
      #   Which employee classifications are eligible. One of: full_time, part_time, all
      #
      #   @return [String]
      required :classification, String

      # @!attribute waiting_period
      #   Waiting period before eligibility. One of: first_of_following_month, 30_days,
      #   60_days, none
      #
      #   @return [String]
      required :waiting_period, String

      # @!method initialize(employer_id:, classification:, waiting_period:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::EmployerCreateEligibilityPolicyParams} for more
      #   details.
      #
      #   @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      #   @param classification [String] Which employee classifications are eligible. One of: full_time, part_time, all
      #
      #   @param waiting_period [String] Waiting period before eligibility. One of: first_of_following_month, 30_days, 60
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
