# frozen_string_literal: true

module VitableConnect
  module Types
    class EligibleGeographicalLocation < Internal::Types::Model
      field :type, -> { VitableConnect::Types::EligibleGeographicalLocationType }, optional: false, nullable: false

      field :state_codes, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
