# frozen_string_literal: true

module VitableConnect
  module Types
    class BoundEntity < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :type, -> { VitableConnect::Types::BoundEntityType }, optional: false, nullable: false
    end
  end
end
