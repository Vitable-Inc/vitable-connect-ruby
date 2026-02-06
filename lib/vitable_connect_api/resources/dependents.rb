# frozen_string_literal: true

module VitableConnectAPI
  module Resources
    class Dependents
      # Retrieves detailed information for a specific dependent by ID. Returns dependent
      # profile including name, date of birth, and relationship type.
      #
      # @overload retrieve(dependent_id, request_options: {})
      #
      # @param dependent_id [String] Unique dependent identifier (dpnd\_\*)
      #
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnectAPI::Models::DependentRetrieveResponse]
      #
      # @see VitableConnectAPI::Models::DependentRetrieveParams
      def retrieve(dependent_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/dependents/%1$s", dependent_id],
          model: VitableConnectAPI::Models::DependentRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {VitableConnectAPI::Models::DependentUpdateParams} for more details.
      #
      # Updates an existing dependent's mutable information. Allows modification of
      # relationship type and active status. Name, DOB, and sex cannot be modified after
      # creation.
      #
      # @overload update(dependent_id, active: nil, gender: nil, relationship: nil, request_options: {})
      #
      # @param dependent_id [String] Unique dependent identifier (dpnd\_\*)
      #
      # @param active [Boolean, nil] Whether the dependent is active
      #
      # @param gender [String, nil] Gender identity
      #
      # @param relationship [Symbol, VitableConnectAPI::Models::Members::Relationship, nil] - `Spouse` - Spouse
      #
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnectAPI::Models::DependentUpdateResponse]
      #
      # @see VitableConnectAPI::Models::DependentUpdateParams
      def update(dependent_id, params = {})
        parsed, options = VitableConnectAPI::DependentUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["v1/dependents/%1$s", dependent_id],
          body: parsed,
          model: VitableConnectAPI::Models::DependentUpdateResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [VitableConnectAPI::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
