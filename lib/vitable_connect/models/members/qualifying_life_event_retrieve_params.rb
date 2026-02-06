# frozen_string_literal: true

module VitableConnect
  module Models
    module Members
      # @see VitableConnect::Resources::Members::QualifyingLifeEvents#retrieve
      class QualifyingLifeEventRetrieveParams < VitableConnect::Internal::Type::BaseModel
        extend VitableConnect::Internal::Type::RequestParameters::Converter
        include VitableConnect::Internal::Type::RequestParameters

        # @!attribute member_id
        #   Unique member identifier (mbr\_\*)
        #
        #   @return [String]
        required :member_id, String

        # @!method initialize(member_id:, request_options: {})
        #   @param member_id [String] Unique member identifier (mbr\_\*)
        #
        #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
