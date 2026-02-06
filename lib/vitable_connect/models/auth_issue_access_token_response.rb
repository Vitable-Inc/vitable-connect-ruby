# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Auth#issue_access_token
    class AuthIssueAccessTokenResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute access_token
      #   The issued access token (vit*at*\*)
      #
      #   @return [String]
      required :access_token, String

      # @!attribute expires_in
      #   Token lifetime in seconds
      #
      #   @return [Integer]
      required :expires_in, Integer

      # @!attribute token_type
      #   Token type, always 'Bearer'
      #
      #   @return [String]
      required :token_type, String

      # @!attribute bound_entity
      #   Entity the token is bound to, if any
      #
      #   @return [VitableConnect::Models::AuthIssueAccessTokenResponse::BoundEntity, nil]
      optional :bound_entity,
               -> { VitableConnect::Models::AuthIssueAccessTokenResponse::BoundEntity },
               nil?: true

      # @!method initialize(access_token:, expires_in:, token_type:, bound_entity: nil)
      #   @param access_token [String] The issued access token (vit*at*\*)
      #
      #   @param expires_in [Integer] Token lifetime in seconds
      #
      #   @param token_type [String] Token type, always 'Bearer'
      #
      #   @param bound_entity [VitableConnect::Models::AuthIssueAccessTokenResponse::BoundEntity, nil] Entity the token is bound to, if any

      # @see VitableConnect::Models::AuthIssueAccessTokenResponse#bound_entity
      class BoundEntity < VitableConnect::Internal::Type::BaseModel
        # @!attribute id
        #   Prefixed entity ID the token is bound to (empr*\* or empl*\*)
        #
        #   @return [String]
        required :id, String

        # @!attribute type
        #   - `employer` - employer
        #   - `employee` - employee
        #
        #   @return [Symbol, VitableConnect::Models::Type]
        required :type, enum: -> { VitableConnect::Type }

        # @!method initialize(id:, type:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::AuthIssueAccessTokenResponse::BoundEntity} for more
        #   details.
        #
        #   Entity the token is bound to, if any
        #
        #   @param id [String] Prefixed entity ID the token is bound to (empr*\* or empl*\*)
        #
        #   @param type [Symbol, VitableConnect::Models::Type] - `employer` - employer
      end
    end
  end
end
