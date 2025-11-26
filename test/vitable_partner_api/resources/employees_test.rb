# frozen_string_literal: true

require_relative "../test_helper"

class VitablePartnerAPI::Test::Resources::EmployeesTest < VitablePartnerAPI::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employees.retrieve("empl__1k--w2KifJ1")

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

  def test_update
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employees.update("empl__1k--w2KifJ1")

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

  def test_terminate
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employees.terminate("empl__1k--w2KifJ1")

    assert_pattern do
      response => nil
    end
  end
end
