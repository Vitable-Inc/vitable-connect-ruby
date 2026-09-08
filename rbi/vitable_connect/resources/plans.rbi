# typed: strong

module VitableConnect
  module Resources
    class Plans
      # Returns a paginated list of benefit plans linked to the authenticated
      # organization.
      sig do
        params(
          limit: Integer,
          page: Integer,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(
          VitableConnect::Internal::PageNumberPage[
            VitableConnect::Models::PlanListResponse
          ]
        )
      end
      def list(
        # Items per page (default: 20, max: 100)
        limit: nil,
        # Page number (default: 1)
        page: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: VitableConnect::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
