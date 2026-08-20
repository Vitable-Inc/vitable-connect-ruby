# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::OrganizationsTest < VitableConnect::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @vitable_connect.organizations.create(name: "Acme Brokerage")

    assert_pattern do
      response => VitableConnect::Models::OrganizationCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        idp_org_id: String | nil,
        idp_provider: VitableConnect::Models::OrganizationCreateResponse::IdpProvider | nil,
        name: String,
        super_in: VitableConnect::Internal::Type::Boolean,
        type: VitableConnect::Models::OrganizationCreateResponse::Type | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @vitable_connect.organizations.list

    assert_pattern do
      response => VitableConnect::Models::OrganizationListResponse
    end

    assert_pattern do
      response => {
        organizations: ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::OrganizationListResponse::Organization]),
        total: Integer
      }
    end
  end
end
