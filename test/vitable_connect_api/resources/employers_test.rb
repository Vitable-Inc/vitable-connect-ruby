# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnectAPI::Test::Resources::EmployersTest < VitableConnectAPI::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.employers.create(
        address: {city: "city", state: "xx", street_1: "street_1", zip_code: "zip_code"},
        ein: "xxxxxxxxx",
        legal_name: "x",
        name: "x"
      )

    assert_pattern do
      response => VitableConnectAPI::Employer
    end

    assert_pattern do
      response => {
        id: String,
        active: VitableConnectAPI::Internal::Type::Boolean,
        created_at: Time,
        legal_name: String,
        name: String,
        organization_id: String,
        updated_at: Time,
        address: VitableConnectAPI::Employer::Address | nil,
        ein: String | nil,
        eligibility_policy_id: String | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employers.retrieve("empr_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Employer
    end

    assert_pattern do
      response => {
        id: String,
        active: VitableConnectAPI::Internal::Type::Boolean,
        created_at: Time,
        legal_name: String,
        name: String,
        organization_id: String,
        updated_at: Time,
        address: VitableConnectAPI::Employer::Address | nil,
        ein: String | nil,
        eligibility_policy_id: String | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employers.update("empr_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Employer
    end

    assert_pattern do
      response => {
        id: String,
        active: VitableConnectAPI::Internal::Type::Boolean,
        created_at: Time,
        legal_name: String,
        name: String,
        organization_id: String,
        updated_at: Time,
        address: VitableConnectAPI::Employer::Address | nil,
        ein: String | nil,
        eligibility_policy_id: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employers.list

    assert_pattern do
      response => ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Employer])
    end
  end

  def test_create_eligibility_policy_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.employers.create_eligibility_policy(
        "empr_abc123def456",
        effective_date: "2019-12-27",
        name: "x",
        rules: [{operator: "operator", rule_type: "rule_type", value: "value"}]
      )

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
