# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # @see VitableConnectAPI::Resources::Enrollments#reissue
    class EnrollmentReissueParams < VitableConnectAPI::Internal::Type::BaseModel
      extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
      include VitableConnectAPI::Internal::Type::RequestParameters

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

      # @!method initialize(qle_id:, reason: nil, request_options: {})
      #   @param qle_id [String] ID of the qualifying life event (qle\_\*)
      #
      #   @param reason [String, nil] Optional reason for reissue
      #
      #   @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
