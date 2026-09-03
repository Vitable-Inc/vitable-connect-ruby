# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single member resource.
    class MemberResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::Member }, optional: false, nullable: false
    end
  end
end
