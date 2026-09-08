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

  def test_update
    skip("Mock server tests are disabled")

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

  def test_ensure_payroll_integration_email
    skip("Mock server tests are disabled")

    response = @vitable_connect.employers.ensure_payroll_integration_email("empr_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailResponse::Data
      }
    end
  end

  def test_list_benefit_plan_year_enrollments_required_params
    skip("Mock server tests are disabled")

    response =
      @vitable_connect.employers.list_benefit_plan_year_enrollments(
        "plyr_abc123def456",
        employer_id: "empr_abc123def456"
      )

    assert_pattern do
      response => VitableConnect::Internal::PageNumberPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse
    end

    assert_pattern do
      row => {
        carrier: String | nil,
        dependent_count: Integer,
        election_status: VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::ElectionStatus,
        employee_deduction_in_cents: Integer | nil,
        employee_external_reference_id: String | nil,
        employee_id: String,
        employer_contribution_in_cents: Integer | nil,
        member_first_name: String,
        member_id: String,
        member_last_name: String,
        plan: String | nil,
        policy_status: VitableConnect::Models::EmployerListBenefitPlanYearEnrollmentsResponse::PolicyStatus | nil,
        premium_in_cents: Integer | nil,
        tier: String | nil
      }
    end
  end

  def test_list_benefit_plan_years
    skip("Mock server tests are disabled")

    response = @vitable_connect.employers.list_benefit_plan_years("empr_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::EmployerListBenefitPlanYearsResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::EmployerListBenefitPlanYearsResponse::Data])
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

  def test_list_hris_providers
    skip("Mock server tests are disabled")

    response = @vitable_connect.employers.list_hris_providers

    assert_pattern do
      response => VitableConnect::Models::EmployerListHRISProvidersResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::EmployerListHRISProvidersResponse::Data])
      }
    end
  end

  def test_list_invoices
    skip("Mock server tests are disabled")

    response = @vitable_connect.employers.list_invoices("empr_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::EmployerListInvoicesResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::EmployerListInvoicesResponse::Data]),
        pagination: VitableConnect::Models::EmployerListInvoicesResponse::Pagination
      }
    end
  end

  def test_list_payroll_deduction_statements
    skip("Mock server tests are disabled")

    response = @vitable_connect.employers.list_payroll_deduction_statements("empr_abc123def456")

    assert_pattern do
      response => VitableConnect::Internal::PageNumberPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse
    end

    assert_pattern do
      row => {
        csv_file_url: String | nil,
        deduction_frequency: VitableConnect::Models::EmployerListPayrollDeductionStatementsResponse::DeductionFrequency,
        deduction_frequency_label: String,
        employee_count: Integer,
        period_end: Date,
        period_start: Date,
        run_date: Time,
        statement_id: String,
        total_deduction_cents: Integer
      }
    end
  end

  def test_retrieve_benefit_plan_year_required_params
    skip("Mock server tests are disabled")

    response =
      @vitable_connect.employers.retrieve_benefit_plan_year(
        "plyr_abc123def456",
        employer_id: "empr_abc123def456"
      )

    assert_pattern do
      response => VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Models::EmployerRetrieveBenefitPlanYearResponse::Data
      }
    end
  end

  def test_retrieve_hris
    skip("Mock server tests are disabled")

    response = @vitable_connect.employers.retrieve_hris("empr_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::EmployerRetrieveHRISResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Models::EmployerRetrieveHRISResponse::Data
      }
    end
  end

  def test_retrieve_invoice_pdf_required_params
    skip("Mock server tests are disabled")

    response = @vitable_connect.employers.retrieve_invoice_pdf("INV-00042", employer_id: "empr_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::EmployerRetrieveInvoicePdfResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Models::EmployerRetrieveInvoicePdfResponse::Data
      }
    end
  end

  def test_retrieve_payroll_access_setup
    skip("Mock server tests are disabled")

    response = @vitable_connect.employers.retrieve_payroll_access_setup("empr_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::EmployerRetrievePayrollAccessSetupResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Models::EmployerRetrievePayrollAccessSetupResponse::Data
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

  def test_submit_payroll_access_setup_required_params
    skip("Mock server tests are disabled")

    response =
      @vitable_connect.employers.submit_payroll_access_setup(
        "empr_abc123def456",
        access_method: :SELF_SETUP,
        all_benefit_eligible_employees_present: true,
        classifications_accurate: true,
        employees_in_payroll_acknowledged: true,
        has_additional_payroll_system: true,
        is_controlled_group: true,
        payroll_data_impacts_eligibility_acknowledged: true
      )

    assert_pattern do
      response => VitableConnect::Models::EmployerSubmitPayrollAccessSetupResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Models::EmployerSubmitPayrollAccessSetupResponse::Data
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
