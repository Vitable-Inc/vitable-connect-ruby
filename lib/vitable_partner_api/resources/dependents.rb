# frozen_string_literal: true

module VitablePartnerAPI
  module Resources
    class Dependents
      # Updates an existing Dependent for a specific Employee for an Employer.
      #
      # @overload update(id, date_of_birth: nil, first_name: nil, gender: nil, last_name: nil, relationship: nil, sex: nil, suffix: nil, request_options: {})
      #
      # @param id [String] Dependent ID (prefixed with dpnd\_)
      #
      # @param date_of_birth [Date]
      #
      # @param first_name [String]
      #
      # @param gender [Symbol, VitablePartnerAPI::Models::UpdateDependentRequest::Gender]
      #
      # @param last_name [String]
      #
      # @param relationship [Symbol, VitablePartnerAPI::Models::UpdateDependentRequest::Relationship]
      #
      # @param sex [Symbol, VitablePartnerAPI::Models::UpdateDependentRequest::Sex]
      #
      # @param suffix [String]
      #
      # @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitablePartnerAPI::Models::Dependent]
      #
      # @see VitablePartnerAPI::Models::DependentUpdateParams
      def update(id, params = {})
        parsed, options = VitablePartnerAPI::DependentUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["dependents/%1$s", id],
          body: parsed,
          model: VitablePartnerAPI::Dependent,
          options: options
        )
      end

      # @api private
      #
      # @param client [VitablePartnerAPI::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
