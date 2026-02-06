# frozen_string_literal: true

require_relative "../../test_helper"

class VitableConnectAPI::Test::Resources::Members::DependentsTest < VitableConnectAPI::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.members.dependents.create(
        "mbr_abc123def456",
        date_of_birth: "2020-05-15",
        first_name: "Emily",
        last_name: "Doe",
        relationship: :Child,
        sex: :Female
      )

    assert_pattern do
      response => VitableConnectAPI::Models::Members::DependentCreateResponse
    end

    assert_pattern do
      response => {
        data: VitableConnectAPI::Dependent
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.members.dependents.list("mbr_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Models::Members::DependentListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Dependent]),
        pagination: VitableConnectAPI::Models::Members::DependentListResponse::Pagination
      }
    end
  end
end
