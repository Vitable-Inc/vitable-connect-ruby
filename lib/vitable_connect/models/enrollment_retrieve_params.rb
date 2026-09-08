# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Enrollments#retrieve
    class EnrollmentRetrieveParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute enrollment_id
      #   Unique enrollment identifier (enrl\_\*)
      #
      #   @return [String]
      required :enrollment_id, String

      # @!method initialize(enrollment_id:, request_options: {})
      #   @param enrollment_id [String] Unique enrollment identifier (enrl\_\*)
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
