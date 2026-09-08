# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::PlansTest < VitableConnect::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @vitable_connect.plans.list

    assert_pattern do
      response => VitableConnect::Internal::PageNumberPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => VitableConnect::Models::PlanListResponse
    end

    assert_pattern do
      row => {
        id: String,
        name: String
      }
    end
  end
end
