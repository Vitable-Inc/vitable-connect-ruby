# frozen_string_literal: true

module VitableConnect
  module Types
    class EmployerHrisStatus < Internal::Types::Model
      field :provider, -> { String }, optional: false, nullable: false

      field :provider_label, -> { String }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: false
    end
  end
end
