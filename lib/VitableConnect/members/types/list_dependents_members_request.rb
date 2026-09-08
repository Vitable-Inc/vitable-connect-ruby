# frozen_string_literal: true

module VitableConnect
  module Members
    module Types
      class ListDependentsMembersRequest < Internal::Types::Model
        field :member_id, -> { String }, optional: false, nullable: false

        field :vitable_organization, -> { String }, optional: true, nullable: false, api_name: "X-Vitable-Organization"
      end
    end
  end
end
