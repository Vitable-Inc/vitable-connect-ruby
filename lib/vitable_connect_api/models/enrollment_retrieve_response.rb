# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # @see VitableConnectAPI::Resources::Enrollments#retrieve
    class EnrollmentRetrieveResponse < VitableConnectAPI::Internal::Type::BaseModel
      # @!attribute data
      #   Serializer for Enrollment entity in public API responses.
      #
      #   An Enrollment represents an employee's benefit enrollment for a specific plan
      #   year.
      #
      #   @return [VitableConnectAPI::Models::Enrollment]
      required :data, -> { VitableConnectAPI::Enrollment }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnectAPI::Models::EnrollmentRetrieveResponse} for more details.
      #
      #   Response containing a single enrollment resource.
      #
      #   @param data [VitableConnectAPI::Models::Enrollment] Serializer for Enrollment entity in public API responses.
    end
  end
end
