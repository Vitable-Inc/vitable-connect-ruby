# frozen_string_literal: true

require_relative "../../test_helper"

class VitablePartnerAPI::Test::Resources::Employees::DependentsTest < VitablePartnerAPI::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.employees.dependents.create(
        "empl__1k--w2KifJ1",
        date_of_birth: "2019-12-27",
        first_name: "first_name",
        last_name: "last_name",
        relationship: :SPOUSE
      )

    assert_pattern do
      response => VitablePartnerAPI::Dependent
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employees.dependents.list("empl__1k--w2KifJ1")

    assert_pattern do
      response => VitablePartnerAPI::Models::Employees::DependentListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::Dependent]) | nil
      }
    end
  end
end
