# frozen_string_literal: true

module VitableConnect
  module Types
    class AccessTokenResponse < Internal::Types::Model
      field :access_token, -> { String }, optional: false, nullable: false

      field :token_type, -> { String }, optional: false, nullable: false

      field :expires_in, -> { Integer }, optional: false, nullable: false

      field :bound_entity, -> { VitableConnect::Types::BoundEntityResponse }, optional: true, nullable: false
    end
  end
end
