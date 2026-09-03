# frozen_string_literal: true

module VitableConnect
  module Types
    # Unpaginated ``{"data": [...]}`` list of member dependents.
    class MemberDependentsResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[VitableConnect::Types::MemberLegalDependent] }, optional: false, nullable: false
    end
  end
end
