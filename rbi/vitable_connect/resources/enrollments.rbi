# typed: strong

module VitableConnect
  module Resources
    # Manage benefit enrollments and elections for employees
    class Enrollments
      # Retrieves detailed information for a specific enrollment by ID.
      sig do
        params(
          enrollment_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(VitableConnect::Models::EnrollmentRetrieveResponse)
      end
      def retrieve(
        # Unique enrollment identifier (enrl\_\*)
        enrollment_id,
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
