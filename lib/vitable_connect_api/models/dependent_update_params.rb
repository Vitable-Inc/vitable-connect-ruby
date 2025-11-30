# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # @see VitableConnectAPI::Resources::Dependents#update
    class DependentUpdateParams < VitableConnectAPI::Internal::Type::BaseModel
      extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
      include VitableConnectAPI::Internal::Type::RequestParameters

      # @!attribute active
      #   Whether the dependent is active
      #
      #   @return [Boolean, nil]
      optional :active, VitableConnectAPI::Internal::Type::Boolean, nil?: true

      # @!attribute gender
      #   Gender identity
      #
      #   @return [String, nil]
      optional :gender, String, nil?: true

      # @!attribute relationship
      #   - `Spouse` - Spouse
      #   - `Child` - Child
      #
      #   @return [Symbol, VitableConnectAPI::Models::Members::Relationship, nil]
      optional :relationship, enum: -> { VitableConnectAPI::Members::Relationship }, nil?: true

      # @!method initialize(active: nil, gender: nil, relationship: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnectAPI::Models::DependentUpdateParams} for more details.
      #
      #   @param active [Boolean, nil] Whether the dependent is active
      #
      #   @param gender [String, nil] Gender identity
      #
      #   @param relationship [Symbol, VitableConnectAPI::Models::Members::Relationship, nil] - `Spouse` - Spouse
      #
      #   @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
