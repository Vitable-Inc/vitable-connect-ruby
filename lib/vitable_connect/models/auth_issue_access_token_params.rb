# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Auth#issue_access_token
    class AuthIssueAccessTokenParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute grant_type
      #   - `client_credentials` - client_credentials
      #
      #   @return [Symbol, VitableConnect::Models::AuthIssueAccessTokenParams::GrantType]
      required :grant_type, enum: -> { VitableConnect::AuthIssueAccessTokenParams::GrantType }

      # @!attribute bound_entity
      #   Optional entity to bind the token to for scoped access
      #
      #   @return [VitableConnect::Models::AuthIssueAccessTokenParams::BoundEntity, nil]
      optional :bound_entity, -> { VitableConnect::AuthIssueAccessTokenParams::BoundEntity }, nil?: true

      # @!method initialize(grant_type:, bound_entity: nil, request_options: {})
      #   @param grant_type [Symbol, VitableConnect::Models::AuthIssueAccessTokenParams::GrantType] - `client_credentials` - client_credentials
      #
      #   @param bound_entity [VitableConnect::Models::AuthIssueAccessTokenParams::BoundEntity, nil] Optional entity to bind the token to for scoped access
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

      # - `client_credentials` - client_credentials
      module GrantType
        extend VitableConnect::Internal::Type::Enum

        CLIENT_CREDENTIALS = :client_credentials

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class BoundEntity < VitableConnect::Internal::Type::BaseModel
        # @!attribute id
        #   Prefixed entity ID to bind the token to (empr*\* for employer, empl*\* for
        #   employee)
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
        #   {VitableConnect::Models::AuthIssueAccessTokenParams::BoundEntity} for more
        #   details.
        #
        #   Optional entity to bind the token to for scoped access
        #
        #   @param id [String] Prefixed entity ID to bind the token to (empr*\* for employer, empl*\* for
        #   employe
        #
        #   @param type [Symbol, VitableConnect::Models::Type] - `employer` - employer
      end
    end
  end
end
