# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnectAPI::Test::Resources::BenefitEligibilityPolicyTest < VitableConnectAPI::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect_api.benefit_eligibility_policy.retrieve("epol_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::BenefitEligibilityPolicyAPI
    end

    assert_pattern do
      response => {
        id: String,
        active: VitableConnectAPI::Internal::Type::Boolean,
        created_at: Time,
        effective_date: Date,
        employer_id: String,
        name: String,
        rules: ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::BenefitEligibilityPolicyAPI::Rule]),
        updated_at: Time,
        description: String | nil,
        replaced_policy_id: String | nil
      }
    end
  end
end
