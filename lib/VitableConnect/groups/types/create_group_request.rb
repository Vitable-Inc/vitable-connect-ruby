# frozen_string_literal: true

module VitableConnect
  module Groups
    module Types
      class CreateGroupRequest < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false

        field :external_reference_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
