# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnectAPI::Test::Resources::DependentsTest < VitableConnectAPI::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect_api.dependents.retrieve("dpnd_abc123def456")

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

  def test_update
    skip("Prism tests are disabled")

    response = @vitable_connect_api.dependents.update("dpnd_abc123def456")

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
end
