# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnectAPI::Test::Resources::EmployersTest < VitableConnectAPI::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.employers.create(
        address: {address_line_1: "789 Business Blvd", city: "Seattle", state: "WA", zipcode: "98101"},
        ein: "12-3456789",
        email: "hr@newco.com",
        legal_name: "NewCo Industries LLC",
        name: "NewCo Industries"
      )

    assert_pattern do
      response => VitableConnectAPI::Models::EmployerCreateResponse
    end

    assert_pattern do
      response => {
        data: VitableConnectAPI::Employer
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employers.retrieve("empr_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Models::EmployerRetrieveResponse
    end

    assert_pattern do
      response => {
        data: VitableConnectAPI::Employer
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employers.update("empr_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Models::EmployerUpdateResponse
    end

    assert_pattern do
      response => {
        data: VitableConnectAPI::Employer
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employers.list

    assert_pattern do
      response => VitableConnectAPI::Models::EmployerListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Employer]),
        pagination: VitableConnectAPI::Models::EmployerListResponse::Pagination
      }
    end
  end
end
