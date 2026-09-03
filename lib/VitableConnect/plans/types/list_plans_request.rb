# frozen_string_literal: true

module VitableConnect
  module Plans
    module Types
      class ListPlansRequest < Internal::Types::Model
        field :limit, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
