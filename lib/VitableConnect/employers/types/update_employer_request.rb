# frozen_string_literal: true

module VitableConnect
  module Employers
    module Types
      class UpdateEmployerRequest < Internal::Types::Model
        field :employer_id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :legal_name, -> { String }, optional: true, nullable: false

        field :address, -> { VitableConnect::Types::UpdateEmployerAddressInput }, optional: true, nullable: false

        field :active, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
