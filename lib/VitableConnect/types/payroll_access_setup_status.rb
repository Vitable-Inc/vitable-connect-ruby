# frozen_string_literal: true

module VitableConnect
  module Types
    class PayrollAccessSetupStatus < Internal::Types::Model
      field :completed, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :submitted_at, -> { String }, optional: false, nullable: true
    end
  end
end
