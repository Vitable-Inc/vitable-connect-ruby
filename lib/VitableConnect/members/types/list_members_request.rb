# frozen_string_literal: true

module VitableConnect
  module Members
    module Types
      class ListMembersRequest < Internal::Types::Model
        field :limit, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :search, -> { String }, optional: true, nullable: false

        field :vitable_organization, -> { String }, optional: true, nullable: false, api_name: "X-Vitable-Organization"
      end
    end
  end
end
