# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::EmployersTest < VitableConnect::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect.employers.create(
        address: {address_line_1: "789 Business Blvd", city: "Seattle", state: "WA", zipcode: "98101"},
        ein: "12-3456789",
        email: "hr@newco.com",
        legal_name: "NewCo Industries LLC",
        name: "NewCo Industries"
      )

    assert_pattern do
      response => VitableConnect::EmployerResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Employer
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect.employers.retrieve("empr_abc123def456")

    assert_pattern do
      response => VitableConnect::EmployerResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Employer
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @vitable_connect.employers.update("empr_abc123def456")

    assert_pattern do
      response => VitableConnect::EmployerResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Employer
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect.employers.list

    assert_pattern do
      response => VitableConnect::Models::EmployerListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Employer]),
        pagination: VitableConnect::Pagination
      }
    end
  end

  def test_create_eligibility_policy_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect.employers.create_eligibility_policy(
        "empr_abc123def456",
        effective_date: "2025-01-01",
        name: "Standard Full-Time Eligibility",
        rules: [
          {operator: "in", rule_type: "employment_status", value: "full_time,part_time_30_plus"},
          {operator: "greater_than_or_equal", rule_type: "waiting_period_days", value: "30"}
        ]
      )

    assert_pattern do
      response => VitableConnect::BenefitEligibilityPolicy
    end

    assert_pattern do
      response => {
        data: VitableConnect::BenefitEligibilityPolicy::Data
      }
    end
  end
end
