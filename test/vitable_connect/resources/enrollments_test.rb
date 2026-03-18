# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::EnrollmentsTest < VitableConnect::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @vitable_connect.enrollments.retrieve("enrl_abc123def456")

    assert_pattern do
      response => VitableConnect::EnrollmentResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Enrollment
      }
    end
  end
end
