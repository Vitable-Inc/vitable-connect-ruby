# frozen_string_literal: true

require_relative "../../test_helper"

class VitableConnectAPI::Test::Resources::Members::DependentsTest < VitableConnectAPI::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.members.dependents.create(
        "mbr_abc123def456",
        date_of_birth: "2019-12-27",
        first_name: "x",
        last_name: "x",
        relationship: :Spouse,
        sex: :Male
      )

    assert_pattern do
      response => VitableConnectAPI::Dependent
    end

    assert_pattern do
      response => {
        id: String,
        active: VitableConnectAPI::Internal::Type::Boolean,
        created_at: Time,
        date_of_birth: Date,
        first_name: String,
        last_name: String,
        member_id: String,
        relationship: VitableConnectAPI::Members::Relationship,
        sex: VitableConnectAPI::Sex,
        updated_at: Time,
        gender: String | nil,
        ssn_last_four: String | nil,
        suffix: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.members.dependents.list("mbr_abc123def456")

    assert_pattern do
      response => ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Dependent])
    end
  end
end
