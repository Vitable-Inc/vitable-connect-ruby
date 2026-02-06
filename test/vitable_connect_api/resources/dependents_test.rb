# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnectAPI::Test::Resources::DependentsTest < VitableConnectAPI::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect_api.dependents.retrieve("dpnd_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Models::DependentRetrieveResponse
    end

    assert_pattern do
      response => {
        data: VitableConnectAPI::Dependent
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @vitable_connect_api.dependents.update("dpnd_abc123def456")

    assert_pattern do
      response => VitableConnectAPI::Models::DependentUpdateResponse
    end

    assert_pattern do
      response => {
        data: VitableConnectAPI::Dependent
      }
    end
  end
end
