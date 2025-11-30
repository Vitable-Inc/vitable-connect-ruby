# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # @see VitableConnectAPI::Resources::BenefitEligibilityPolicy#retrieve
    class BenefitEligibilityPolicyAPI < VitableConnectAPI::Internal::Type::BaseModel
      # @!attribute id
      #   Unique eligibility policy identifier with 'epol\_' prefix
      #
      #   @return [String]
      required :id, String

      # @!attribute active
      #   Whether this policy is currently active
      #
      #   @return [Boolean]
      required :active, VitableConnectAPI::Internal::Type::Boolean

      # @!attribute created_at
      #   Timestamp when the policy was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute effective_date
      #   Date when this policy becomes effective
      #
      #   @return [Date]
      required :effective_date, Date

      # @!attribute employer_id
      #   ID of the employer this policy belongs to (empr\_\*)
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute name
      #   Display name for the eligibility policy
      #
      #   @return [String]
      required :name, String

      # @!attribute rules
      #   List of eligibility rules that must be satisfied
      #
      #   @return [Array<VitableConnectAPI::Models::BenefitEligibilityPolicyAPI::Rule>]
      required :rules,
               -> { VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::BenefitEligibilityPolicyAPI::Rule] }

      # @!attribute updated_at
      #   Timestamp when the policy was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #   Detailed description of the policy
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute replaced_policy_id
      #   ID of the policy this one replaces, if any (epol\_\*)
      #
      #   @return [String, nil]
      optional :replaced_policy_id, String, nil?: true

      # @!method initialize(id:, active:, created_at:, effective_date:, employer_id:, name:, rules:, updated_at:, description: nil, replaced_policy_id: nil)
      #   Serializer for Benefit Eligibility Policy entity.
      #
      #   Eligibility policies define rules that determine which employees qualify for
      #   benefits.
      #
      #   @param id [String] Unique eligibility policy identifier with 'epol\_' prefix
      #
      #   @param active [Boolean] Whether this policy is currently active
      #
      #   @param created_at [Time] Timestamp when the policy was created
      #
      #   @param effective_date [Date] Date when this policy becomes effective
      #
      #   @param employer_id [String] ID of the employer this policy belongs to (empr\_\*)
      #
      #   @param name [String] Display name for the eligibility policy
      #
      #   @param rules [Array<VitableConnectAPI::Models::BenefitEligibilityPolicyAPI::Rule>] List of eligibility rules that must be satisfied
      #
      #   @param updated_at [Time] Timestamp when the policy was last updated
      #
      #   @param description [String, nil] Detailed description of the policy
      #
      #   @param replaced_policy_id [String, nil] ID of the policy this one replaces, if any (epol\_\*)

      class Rule < VitableConnectAPI::Internal::Type::BaseModel
        # @!attribute operator
        #   Comparison operator (e.g., 'equals', 'greater_than', 'in')
        #
        #   @return [String]
        required :operator, String

        # @!attribute rule_type
        #   Type of eligibility rule (e.g., 'employment_status', 'hours_per_week',
        #   'waiting_period')
        #
        #   @return [String]
        required :rule_type, String

        # @!attribute value
        #   Value to compare against (type depends on rule_type)
        #
        #   @return [Object]
        required :value, VitableConnectAPI::Internal::Type::Unknown

        # @!method initialize(operator:, rule_type:, value:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnectAPI::Models::BenefitEligibilityPolicyAPI::Rule} for more details.
        #
        #   Individual eligibility rule within a policy.
        #
        #   @param operator [String] Comparison operator (e.g., 'equals', 'greater_than', 'in')
        #
        #   @param rule_type [String] Type of eligibility rule (e.g., 'employment*status', 'hours_per_week', 'waiting*
        #
        #   @param value [Object] Value to compare against (type depends on rule_type)
      end
    end
  end
end
