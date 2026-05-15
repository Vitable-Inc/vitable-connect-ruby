# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Groups#retrieve
    class GroupRetrieveParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute group_id
      #   Unique group identifier (grp\_\*)
      #
      #   @return [String]
      required :group_id, String

      # @!method initialize(group_id:, request_options: {})
      #   @param group_id [String] Unique group identifier (grp\_\*)
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
