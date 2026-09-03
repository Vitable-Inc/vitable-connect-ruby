# frozen_string_literal: true

module VitableConnect
  module Groups
    module Types
      class ListGroupsRequest < Internal::Types::Model
        field :limit, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
