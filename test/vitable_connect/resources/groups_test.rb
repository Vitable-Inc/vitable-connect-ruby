# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::GroupsTest < VitableConnect::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @vitable_connect.groups.create(external_reference_id: "x", name: "x")

    assert_pattern do
      response => VitableConnect::GroupResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Group
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @vitable_connect.groups.retrieve("grp_abc123def456")

    assert_pattern do
      response => VitableConnect::GroupResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Group
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @vitable_connect.groups.update("grp_abc123def456")

    assert_pattern do
      response => VitableConnect::GroupResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Group
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @vitable_connect.groups.list

    assert_pattern do
      response => VitableConnect::Internal::PageNumberPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => VitableConnect::Group
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time | nil,
        external_reference_id: String,
        name: String,
        organization_id: String,
        updated_at: Time | nil
      }
    end
  end
end
