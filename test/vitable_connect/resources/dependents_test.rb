# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::DependentsTest < VitableConnect::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect.dependents.retrieve("dpnd_abc123def456")

    assert_pattern do
      response => VitableConnect::DependentResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Dependent
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @vitable_connect.dependents.update("dpnd_abc123def456")

    assert_pattern do
      response => VitableConnect::DependentResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Dependent
      }
    end
  end
end
