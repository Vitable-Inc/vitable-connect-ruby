# frozen_string_literal: true

require_relative "../test_helper"

class VitablePartnerAPI::Test::Resources::EmployersTest < VitablePartnerAPI::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employers.create(legal_name: "legal_name", name: "name")

    assert_pattern do
      response => VitablePartnerAPI::Employer
    end

    assert_pattern do
      response => {
        id: String,
        active: VitablePartnerAPI::Internal::Type::Boolean,
        legal_name: String,
        name: String,
        eligibility_policy: VitablePartnerAPI::EligibilityPolicy | nil,
        organization_id: String | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employers.retrieve("empr__1k--w2KifJ1")

    assert_pattern do
      response => VitablePartnerAPI::Employer
    end

    assert_pattern do
      response => {
        id: String,
        active: VitablePartnerAPI::Internal::Type::Boolean,
        legal_name: String,
        name: String,
        eligibility_policy: VitablePartnerAPI::EligibilityPolicy | nil,
        organization_id: String | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employers.update("empr__1k--w2KifJ1")

    assert_pattern do
      response => VitablePartnerAPI::Employer
    end

    assert_pattern do
      response => {
        id: String,
        active: VitablePartnerAPI::Internal::Type::Boolean,
        legal_name: String,
        name: String,
        eligibility_policy: VitablePartnerAPI::EligibilityPolicy | nil,
        organization_id: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @vitable_connect_api.employers.list

    assert_pattern do
      response => VitablePartnerAPI::Models::EmployerListResponse
    end

    assert_pattern do
      response => {
        data: ^(VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::Employer]) | nil,
        pagination: VitablePartnerAPI::Models::EmployerListResponse::Pagination | nil
      }
    end
  end

  def test_create_eligibility_policy_required_params
    skip("Prism tests are disabled")

    response =
      @vitable_connect_api.employers.create_eligibility_policy(
        "empr__1k--w2KifJ1",
        classification: :FULL_TIME,
        waiting_period: :FIRST_OF_FOLLOWING_MONTH
      )

    assert_pattern do
      response => VitablePartnerAPI::EligibilityPolicy
    end

    assert_pattern do
      response => {
        id: String,
        active: VitablePartnerAPI::Internal::Type::Boolean,
        classification: VitablePartnerAPI::EligibilityPolicy::Classification,
        employer_id: String,
        waiting_period: VitablePartnerAPI::EligibilityPolicy::WaitingPeriod,
        archived_at: Time | nil,
        replaces_policy_id: String | nil
      }
    end
  end
end
