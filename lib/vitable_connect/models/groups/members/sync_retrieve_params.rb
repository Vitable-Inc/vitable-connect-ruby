# frozen_string_literal: true

module VitableConnect
  module Models
    module Groups
      module Members
        # @see VitableConnect::Resources::Groups::Members::Sync#retrieve
        class SyncRetrieveParams < VitableConnect::Internal::Type::BaseModel
          extend VitableConnect::Internal::Type::RequestParameters::Converter
          include VitableConnect::Internal::Type::RequestParameters

          # @!attribute group_id
          #   Unique group identifier (grp\_\*)
          #
          #   @return [String]
          required :group_id, String

          # @!attribute request_id
          #
          #   @return [String]
          required :request_id, String

          # @!method initialize(group_id:, request_id:, request_options: {})
          #   @param group_id [String] Unique group identifier (grp\_\*)
          #
          #   @param request_id [String]
          #
          #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
