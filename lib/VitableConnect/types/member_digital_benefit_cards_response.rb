# frozen_string_literal: true

module VitableConnect
  module Types
    # Unpaginated ``{"data": [...]}`` list of member digital benefit cards.
    class MemberDigitalBenefitCardsResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[VitableConnect::Types::DigitalBenefitCard] }, optional: false, nullable: false
    end
  end
end
