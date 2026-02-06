# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Dependents#update
    class DependentUpdateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute active
      #   Whether the dependent is active
      #
      #   @return [Boolean, nil]
      optional :active, VitableConnect::Internal::Type::Boolean, nil?: true

      # @!attribute gender
      #   Gender identity
      #
      #   @return [String, nil]
      optional :gender, String, nil?: true

      # @!attribute relationship
      #   - `Spouse` - Spouse
      #   - `Child` - Child
      #
      #   @return [Symbol, VitableConnect::Models::Members::Relationship, nil]
      optional :relationship, enum: -> { VitableConnect::Members::Relationship }, nil?: true

      # @!method initialize(active: nil, gender: nil, relationship: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::DependentUpdateParams} for more details.
      #
      #   @param active [Boolean, nil] Whether the dependent is active
      #
      #   @param gender [String, nil] Gender identity
      #
      #   @param relationship [Symbol, VitableConnect::Models::Members::Relationship, nil] - `Spouse` - Spouse
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
