# frozen_string_literal: true

require_relative "../../test_helper"

class VitableConnect::Test::Resources::Members::DependentsTest < VitableConnect::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect.members.dependents.create(
        "mbr_abc123def456",
        date_of_birth: "2020-05-15",
        first_name: "Emily",
        last_name: "Doe",
        relationship: :Child,
        sex: :Female
      )

    assert_pattern do
      response => VitableConnect::DependentResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Dependent
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect.members.dependents.list("mbr_abc123def456")

    assert_pattern do
      response => VitableConnect::Models::Members::DependentListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Dependent]),
        pagination: VitableConnect::Pagination
      }
    end
  end
end
