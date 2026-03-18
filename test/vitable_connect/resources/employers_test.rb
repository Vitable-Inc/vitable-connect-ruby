# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::EmployersTest < VitableConnect::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

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

  def test_list
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

    response =
      @vitable_connect.employers.create_eligibility_policy(
        "empr_abc123def456",
        classification: "classification",
        waiting_period: "waiting_period"
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
