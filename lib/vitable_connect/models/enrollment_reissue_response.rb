# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Enrollments#reissue
    class EnrollmentReissueResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [VitableConnect::Models::EnrollmentReissueResponse::Data]
      required :data, -> { VitableConnect::Models::EnrollmentReissueResponse::Data }

      # @!method initialize(data:)
      #   Response containing a single reissue enrollment resource.
      #
      #   @param data [VitableConnect::Models::EnrollmentReissueResponse::Data]

      # @see VitableConnect::Models::EnrollmentReissueResponse#data
      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute enrollment_id
        #   Opaque identifier for the new unanswered enrollment
        #
        #   @return [String]
        required :enrollment_id, String

        # @!method initialize(enrollment_id:)
        #   @param enrollment_id [String] Opaque identifier for the new unanswered enrollment
      end
    end
  end
end
