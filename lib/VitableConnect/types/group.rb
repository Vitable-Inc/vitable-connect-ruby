# frozen_string_literal: true

module VitableConnect
  module Types
    class Group < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :organization_id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :external_reference_id, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: true

      field :updated_at, -> { String }, optional: false, nullable: true
    end
  end
end
