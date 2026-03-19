# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Enrollments#retrieve
    class EnrollmentRetrieveResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [VitableConnect::Models::Enrollment]
      required :data, -> { VitableConnect::Enrollment }

      # @!method initialize(data:)
      #   Response containing a single enrollment resource.
      #
      #   @param data [VitableConnect::Models::Enrollment]
    end
  end
end
