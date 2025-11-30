# frozen_string_literal: true

module VitableConnectAPI
  module Resources
    class QualifyingLifeEvents
      # Retrieves detailed information for a specific QLE by ID. Returns event type,
      # date, status, and enrollment window information.
      #
      # @overload retrieve(qle_id, request_options: {})
      #
      # @param qle_id [String] Unique qualifying life event identifier (qle\_\*)
      #
      # @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnectAPI::Models::Members::QualifyingLifeEvent]
      #
      # @see VitableConnectAPI::Models::QualifyingLifeEventRetrieveParams
      def retrieve(qle_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/qualifying-life-events/%1$s", qle_id],
          model: VitableConnectAPI::Members::QualifyingLifeEvent,
          options: params[:request_options]
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
