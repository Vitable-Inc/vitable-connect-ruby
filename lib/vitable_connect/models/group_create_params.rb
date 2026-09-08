# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Groups#create
    class GroupCreateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute external_reference_id
      #
      #   @return [String]
      required :external_reference_id, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!method initialize(external_reference_id:, name:, request_options: {})
      #   @param external_reference_id [String]
      #   @param name [String]
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
