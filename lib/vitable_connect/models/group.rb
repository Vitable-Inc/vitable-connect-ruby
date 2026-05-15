# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Groups#list
    class Group < VitableConnect::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time, nil]
      required :created_at, Time, nil?: true

      # @!attribute external_reference_id
      #
      #   @return [String]
      required :external_reference_id, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute organization_id
      #
      #   @return [String]
      required :organization_id, String

      # @!attribute updated_at
      #
      #   @return [Time, nil]
      required :updated_at, Time, nil?: true

      # @!method initialize(id:, created_at:, external_reference_id:, name:, organization_id:, updated_at:)
      #   @param id [String]
      #   @param created_at [Time, nil]
      #   @param external_reference_id [String]
      #   @param name [String]
      #   @param organization_id [String]
      #   @param updated_at [Time, nil]
    end
  end
end
