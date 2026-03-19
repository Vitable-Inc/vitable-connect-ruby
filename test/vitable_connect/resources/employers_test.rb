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
      response => VitableConnect::Internal::PageNumberPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => VitableConnect::Employer
    end

    assert_pattern do
      row => {
        id: String,
        active: VitableConnect::Internal::Type::Boolean,
        address: VitableConnect::Employer::Address,
        created_at: Time,
        ein: String | nil,
        eligibility_policy_id: String | nil,
        legal_name: String,
        name: String,
        organization_id: String | nil,
        updated_at: Time,
        email: String | nil,
        phone_number: String | nil,
        reference_id: String | nil
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
      response => VitableConnect::BenefitEligibilityPolicyResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::BenefitEligibilityPolicy
      }
    end
  end

  def test_list_employees
    skip("Mock server tests are disabled")

    response = @vitable_connect.employers.list_employees("empr_abc123def456")

    assert_pattern do
      response => VitableConnect::Internal::PageNumberPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => VitableConnect::Employee
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        date_of_birth: Date,
        email: String,
        enrollments: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Employee::Enrollment]),
        first_name: String,
        last_name: String,
        member_id: String,
        status: String,
        updated_at: Time,
        address: VitableConnect::Employee::Address | nil,
        employee_class: VitableConnect::EmployeeClass | nil,
        gender: String | nil,
        hire_date: Date | nil,
        phone: String | nil,
        reference_id: String | nil,
        suffix: String | nil,
        termination_date: Date | nil
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
