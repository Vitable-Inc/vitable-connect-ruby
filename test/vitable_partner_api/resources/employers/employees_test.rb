# frozen_string_literal: true

require_relative "../../test_helper"

class VitablePartnerAPI::Test::Resources::Employers::EmployeesTest < VitablePartnerAPI::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.employers.employees.create(
        "empr__1k--w2KifJ1",
        date_of_birth: "2019-12-27",
        first_name: "first_name",
        last_name: "last_name",
        start_date: "2019-12-27"
      )

    assert_pattern do
      response => VitablePartnerAPI::Employee
    end

    assert_pattern do
      response => {
        id: String,
        active: VitablePartnerAPI::Internal::Type::Boolean,
        employer_id: String,
        member: VitablePartnerAPI::Member,
        start_date: Date,
        dependents: ^(VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::Dependent]) | nil,
        terminated_at: Time | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employers.employees.list("empr__1k--w2KifJ1")

    assert_pattern do
      response => VitablePartnerAPI::Models::Employers::EmployeeListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::Employee]) | nil,
        pagination: VitablePartnerAPI::Models::Employers::EmployeeListResponse::Pagination | nil
      }
    end
  end
end
