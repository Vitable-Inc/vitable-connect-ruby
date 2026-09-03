# frozen_string_literal: true

module VitableConnect
  module Types
    # Unpaginated ``{"data": [...]}`` list of member employments.
    class MemberEmploymentsResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[VitableConnect::Types::Employee] }, optional: false, nullable: false
    end
  end
end
