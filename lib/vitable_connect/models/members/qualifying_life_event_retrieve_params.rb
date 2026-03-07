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

        # @!attribute qle_id
        #   Unique qualifying life event identifier (qle\_\*)
        #
        #   @return [String]
        required :qle_id, String

        # @!method initialize(member_id:, qle_id:, request_options: {})
        #   @param member_id [String] Unique member identifier (mbr\_\*)
        #
        #   @param qle_id [String] Unique qualifying life event identifier (qle\_\*)
        #
        #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
