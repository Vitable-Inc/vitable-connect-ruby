# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Auth#retrieve_me
    class AuthRetrieveMeResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute user
      #   The authenticated IdP identity — no persona (no base_user_id / user_type).
      #
      #   @return [VitableConnect::Models::AuthRetrieveMeResponse::User]
      required :user, -> { VitableConnect::Models::AuthRetrieveMeResponse::User }

      # @!method initialize(user:)
      #   @param user [VitableConnect::Models::AuthRetrieveMeResponse::User] The authenticated IdP identity — no persona (no base_user_id / user_type).

      # @see VitableConnect::Models::AuthRetrieveMeResponse#user
      class User < VitableConnect::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute first_name
        #
        #   @return [String, nil]
        required :first_name, String, nil?: true

        # @!attribute idp_provider
        #
        #   @return [String]
        required :idp_provider, String

        # @!attribute idp_user_id
        #
        #   @return [String]
        required :idp_user_id, String

        # @!attribute last_name
        #
        #   @return [String, nil]
        required :last_name, String, nil?: true

        # @!method initialize(email:, first_name:, idp_provider:, idp_user_id:, last_name:)
        #   The authenticated IdP identity — no persona (no base_user_id / user_type).
        #
        #   @param email [String]
        #   @param first_name [String, nil]
        #   @param idp_provider [String]
        #   @param idp_user_id [String]
        #   @param last_name [String, nil]
      end
    end
  end
end
