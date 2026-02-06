# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#create_eligibility_policy
    class EmployerCreateEligibilityPolicyParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute effective_date
      #   Date when policy becomes effective
      #
      #   @return [Date]
      required :effective_date, Date

      # @!attribute name
      #   Display name for the policy
      #
      #   @return [String]
      required :name, String

      # @!attribute rules
      #   List of eligibility rules (at least one required)
      #
      #   @return [Array<VitableConnect::Models::EmployerCreateEligibilityPolicyParams::Rule>]
      required :rules,
               -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::EmployerCreateEligibilityPolicyParams::Rule] }

      # @!attribute policy_to_replace_id
      #   ID of existing policy to replace (epol\_\*)
      #
      #   @return [String, nil]
      optional :policy_to_replace_id, String

      # @!attribute description
      #   Detailed description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(effective_date:, name:, rules:, policy_to_replace_id: nil, description: nil, request_options: {})
      #   @param effective_date [Date] Date when policy becomes effective
      #
      #   @param name [String] Display name for the policy
      #
      #   @param rules [Array<VitableConnect::Models::EmployerCreateEligibilityPolicyParams::Rule>] List of eligibility rules (at least one required)
      #
      #   @param policy_to_replace_id [String] ID of existing policy to replace (epol\_\*)
      #
      #   @param description [String, nil] Detailed description
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

      class Rule < VitableConnect::Internal::Type::BaseModel
        # @!attribute operator
        #   Comparison operator
        #
        #   @return [String]
        required :operator, String

        # @!attribute rule_type
        #   Type of eligibility rule
        #
        #   @return [String]
        required :rule_type, String

        # @!attribute value
        #   Value to compare against (can be string, number, boolean, or list)
        #
        #   @return [String]
        required :value, String

        # @!method initialize(operator:, rule_type:, value:)
        #   @param operator [String] Comparison operator
        #
        #   @param rule_type [String] Type of eligibility rule
        #
        #   @param value [String] Value to compare against (can be string, number, boolean, or list)
      end
    end
  end
end
