# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::AuthTest < VitableConnect::Test::ResourceTest
  def test_complete_profile_required_params
    skip("Mock server tests are disabled")

    response =
      @vitable_connect.auth.complete_profile(first_name: "first_name", last_name: "last_name", phone: "phone")

    assert_pattern do
      response => VitableConnect::Models::AuthCompleteProfileResponse
    end

    assert_pattern do
      response => {
        user: VitableConnect::Models::AuthCompleteProfileResponse::User
      }
    end
  end

  def test_issue_access_token_required_params
    skip("Mock server tests are disabled")

    response = @vitable_connect.auth.issue_access_token(grant_type: :client_credentials)

    assert_pattern do
      response => VitableConnect::Models::AuthIssueAccessTokenResponse
    end

    assert_pattern do
      response => {
        access_token: String,
        expires_in: Integer,
        token_type: String,
        bound_entity: VitableConnect::Models::AuthIssueAccessTokenResponse::BoundEntity | nil
      }
    end
  end

  def test_list_personas
    skip("Mock server tests are disabled")

    response = @vitable_connect.auth.list_personas

    assert_pattern do
      response => ^(VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::AuthListPersonasResponseItem])
    end
  end

  def test_login_required_params
    skip("Mock server tests are disabled")

    response = @vitable_connect.auth.login(email_or_phone: "email_or_phone", user_type: :Member)

    assert_pattern do
      response => VitableConnect::Models::AuthLoginResponse
    end

    assert_pattern do
      response => {
        access_token: String,
        refresh_token: String,
        user: VitableConnect::Models::AuthLoginResponse::User
      }
    end
  end

  def test_retrieve_me
    skip("Mock server tests are disabled")

    response = @vitable_connect.auth.retrieve_me

    assert_pattern do
      response => VitableConnect::Models::AuthRetrieveMeResponse
    end

    assert_pattern do
      response => {
        user: VitableConnect::Models::AuthRetrieveMeResponse::User
      }
    end
  end

  def test_sign_up
    skip("Mock server tests are disabled")

    response = @vitable_connect.auth.sign_up

    assert_pattern do
      response => VitableConnect::Models::AuthSignUpResponse
    end

    assert_pattern do
      response => {
        user: VitableConnect::Models::AuthSignUpResponse::User
      }
    end
  end
end
