# frozen_string_literal: true

module VitableConnect
  module Members
    module Types
      class ListMembersRequest < Internal::Types::Model
        field :limit, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :search, -> { String }, optional: true, nullable: false
      end
    end
  end
end
