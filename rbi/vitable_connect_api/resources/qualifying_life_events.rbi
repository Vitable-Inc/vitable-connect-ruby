# typed: strong

module VitableConnectAPI
  module Resources
    class QualifyingLifeEvents
      # Retrieves detailed information for a specific QLE by ID. Returns event type,
      # date, status, and enrollment window information.
      sig do
        params(
          qle_id: String,
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(VitableConnectAPI::Members::QualifyingLifeEvent)
      end
      def retrieve(
        # Unique qualifying life event identifier (qle\_\*)
        qle_id,
        request_options: {}
      )
      end

      # @api private
      sig do
        params(client: VitableConnectAPI::Client).returns(T.attached_class)
      end
      def self.new(client:)
      end
    end
  end
end
