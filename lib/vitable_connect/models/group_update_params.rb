# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Groups#update
    class GroupUpdateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute group_id
      #   Unique group identifier (grp\_\*)
      #
      #   @return [String]
      required :group_id, String

      # @!attribute external_reference_id
      #
      #   @return [String, nil]
      optional :external_reference_id, String, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(group_id:, external_reference_id: nil, name: nil, request_options: {})
      #   @param group_id [String] Unique group identifier (grp\_\*)
      #
      #   @param external_reference_id [String, nil]
      #
      #   @param name [String, nil]
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
