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
      row => VitableConnect::Models::EmployerListResponse
    end

    assert_pattern do
      row => {
        active: VitableConnect::Internal::Type::Boolean,
        address: VitableConnect::Models::EmployerListResponse::Address,
        benefit_families: ^(VitableConnect::Internal::Type::ArrayOf[String]),
        benefit_lifecycle_stage: VitableConnect::Models::EmployerListResponse::BenefitLifecycleStage,
        created_at: Time,
        ein: String | nil,
        email: String | nil,
        employer_id: String,
        enrollment_rate_summary: VitableConnect::Models::EmployerListResponse::EnrollmentRateSummary,
        hris_status: VitableConnect::Models::EmployerListResponse::HRISStatus | nil,
        legal_name: String | nil,
        name: String,
        organization_id: String | nil,
        phone_number: String | nil,
        reference_id: String | nil,
        updated_at: Time
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
        classification_effective_date: Date,
        compensation_type: VitableConnect::Employee::CompensationType | nil,
        compensation_type_effective_date: Date,
        created_at: Time,
        date_of_birth: Date,
        deductions: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Employee::Deduction]),
        email: String,
        employee_class: VitableConnect::EmployeeClass,
        employer_id: String,
        first_name: String,
        last_name: String,
        member_id: String,
        phone: String | nil,
        start_date: Date,
        status: VitableConnect::Employee::Status,
        updated_at: Time,
        address: VitableConnect::Employee::Address | nil,
        employer_name: String | nil,
        gender: String | nil,
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
          {date_of_birth: "1990-05-15", email: "jane.doe@acme.com", first_name: "Jane", last_name: "Doe"},
          {date_of_birth: "1985-11-20", email: "john.smith@acme.com", first_name: "John", last_name: "Smith"}
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

  def test_update_settings_required_params
    skip("Mock server tests are disabled")

    response = @vitable_connect.employers.update_settings("empr_abc123def456", pay_frequency: :bi_weekly)

    assert_pattern do
      response => VitableConnect::Models::EmployerUpdateSettingsResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Models::EmployerUpdateSettingsResponse::Data
      }
    end
  end
end
