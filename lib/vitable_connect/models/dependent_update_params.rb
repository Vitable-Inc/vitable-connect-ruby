# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Dependents#update
    class DependentUpdateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute dependent_id
      #   Unique dependent identifier (dpnd\_\*)
      #
      #   @return [String]
      required :dependent_id, String

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
      #   @return [Symbol, VitableConnect::Models::Relationship, nil]
      optional :relationship, enum: -> { VitableConnect::Relationship }, nil?: true

      # @!method initialize(dependent_id:, active: nil, gender: nil, relationship: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::DependentUpdateParams} for more details.
      #
      #   @param dependent_id [String] Unique dependent identifier (dpnd\_\*)
      #
      #   @param active [Boolean, nil] Whether the dependent is active
      #
      #   @param gender [String, nil] Gender identity
      #
      #   @param relationship [Symbol, VitableConnect::Models::Relationship, nil] - `Spouse` - Spouse
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
