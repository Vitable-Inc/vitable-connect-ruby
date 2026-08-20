# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Members#list_enrollments
    class MemberListEnrollmentsParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute member_id
      #
      #   @return [String]
      required :member_id, String

      # @!method initialize(member_id:, request_options: {})
      #   @param member_id [String]
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
