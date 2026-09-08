# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Enrollments#terminate
    class EnrollmentTerminateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute enrollment_id
      #   Unique enrollment identifier (enrl\_\*)
      #
      #   @return [String]
      required :enrollment_id, String

      # @!attribute qualifying_life_event_id
      #   Accepted member qualifying life event identifier (qle\_\*)
      #
      #   @return [String, nil]
      optional :qualifying_life_event_id, String, nil?: true

      # @!attribute reason
      #   Audit reason for the termination; required for user-backed callers and optional
      #   for long-lived organization API-key callers
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!attribute ticket_number
      #   Optional support or operational ticket number
      #
      #   @return [String, nil]
      optional :ticket_number, String, nil?: true

      # @!method initialize(enrollment_id:, qualifying_life_event_id: nil, reason: nil, ticket_number: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::EnrollmentTerminateParams} for more details.
      #
      #   @param enrollment_id [String] Unique enrollment identifier (enrl\_\*)
      #
      #   @param qualifying_life_event_id [String, nil] Accepted member qualifying life event identifier (qle\_\*)
      #
      #   @param reason [String, nil] Audit reason for the termination; required for user-backed callers and optional
      #
      #   @param ticket_number [String, nil] Optional support or operational ticket number
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
