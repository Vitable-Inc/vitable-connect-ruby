# frozen_string_literal: true

module VitableConnect
  module Resources
    # Manage benefit enrollments and elections for employees
    class Enrollments
      # Retrieves detailed information for a specific enrollment by ID.
      #
      # @overload retrieve(enrollment_id, request_options: {})
      #
      # @param enrollment_id [String] Unique enrollment identifier (enrl\_\*)
      #
      # @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VitableConnect::Models::EnrollmentResponse]
      #
      # @see VitableConnect::Models::EnrollmentRetrieveParams
      def retrieve(enrollment_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/enrollments/%1$s", enrollment_id],
          model: VitableConnect::EnrollmentResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [VitableConnect::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
