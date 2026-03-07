# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Enrollments#reissue
    class EnrollmentReissueParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute enrollment_id
      #   Unique enrollment identifier (enrl\_\*)
      #
      #   @return [String]
      required :enrollment_id, String

      # @!attribute qle_id
      #   ID of the qualifying life event (qle\_\*)
      #
      #   @return [String]
      required :qle_id, String

      # @!attribute reason
      #   Optional reason for reissue
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!method initialize(enrollment_id:, qle_id:, reason: nil, request_options: {})
      #   @param enrollment_id [String] Unique enrollment identifier (enrl\_\*)
      #
      #   @param qle_id [String] ID of the qualifying life event (qle\_\*)
      #
      #   @param reason [String, nil] Optional reason for reissue
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
