# frozen_string_literal: true

module VitableConnect
  module Auth
    module Types
      class IssueAccessTokenRequest < Internal::Types::Model
        field :grant_type, -> { VitableConnect::Types::GrantType }, optional: false, nullable: false

        field :bound_entity, -> { VitableConnect::Types::BoundEntity }, optional: true, nullable: false
      end
    end
  end
end
