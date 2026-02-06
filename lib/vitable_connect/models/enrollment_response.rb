# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Enrollments#retrieve
    class EnrollmentResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #   Serializer for Enrollment entity in public API responses.
      #
      #   An Enrollment represents an employee's benefit enrollment for a specific plan
      #   year.
      #
      #   @return [VitableConnect::Models::Enrollment]
      required :data, -> { VitableConnect::Enrollment }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::EnrollmentResponse} for more details.
      #
      #   Response containing a single enrollment resource.
      #
      #   @param data [VitableConnect::Models::Enrollment] Serializer for Enrollment entity in public API responses.
    end
  end
end
