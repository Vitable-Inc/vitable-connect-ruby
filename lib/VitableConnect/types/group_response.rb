# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single group resource.
    class GroupResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::Group }, optional: false, nullable: false
    end
  end
end
