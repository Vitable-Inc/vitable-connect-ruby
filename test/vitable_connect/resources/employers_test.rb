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

  def test_create_benefit_eligibility_policy_required_params
    skip("Mock server tests are disabled")

    response =
      @vitable_connect.employers.create_benefit_eligibility_policy(
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

  def test_list_employees
    skip("Mock server tests are disabled")

    response = @vitable_connect.employers.list_employees("empr_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::EmployerListEmployeesResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Employee]),
        pagination: VitableConnect::Pagination
      }
    end
  end

  def test_submit_census_sync_required_params
    skip("Mock server tests are disabled")

    response =
      @vitable_connect.employers.submit_census_sync(
        "empr_abc123def456",
        employees: [
          {
            date_of_birth: "1990-05-15",
            email: "jane.doe@acme.com",
            first_name: "Jane",
            last_name: "Doe",
            phone: "4155550100"
          },
          {
            date_of_birth: "1985-11-20",
            email: "john.smith@acme.com",
            first_name: "John",
            last_name: "Smith",
            phone: "4155550101"
          }
        ]
      )

    assert_pattern do
      response => VitableConnect::Models::EmployerSubmitCensusSyncResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Models::EmployerSubmitCensusSyncResponse::Data
      }
    end
  end
end
