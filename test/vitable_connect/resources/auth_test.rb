# frozen_string_literal: true

require_relative "../test_helper"

class VitableConnect::Test::Resources::AuthTest < VitableConnect::Test::ResourceTest
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
end
