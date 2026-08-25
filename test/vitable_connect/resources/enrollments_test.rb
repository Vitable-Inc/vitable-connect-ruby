# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::EnrollmentsTest < VitableConnect::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @vitable_connect.enrollments.retrieve("enrl_AAAAAAAAAAAAAAAAAAAAAQ")

    assert_pattern do
      response => VitableConnect::Models::EnrollmentRetrieveResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Models::EnrollmentRetrieveResponse::Data
      }
    end
  end

  def test_reissue
    skip("Mock server tests are disabled")

    response = @vitable_connect.enrollments.reissue("enrl_AAAAAAAAAAAAAAAAAAAAAQ")

    assert_pattern do
      response => VitableConnect::Models::EnrollmentReissueResponse
    end

    assert_pattern do
      response => {
        data: VitableConnect::Models::EnrollmentReissueResponse::Data
      }
    end
  end

  def test_terminate
    skip("Mock server tests are disabled")

    response = @vitable_connect.enrollments.terminate("enrl_AAAAAAAAAAAAAAAAAAAAAQ")

    assert_pattern do
      response => nil
    end
  end
end
