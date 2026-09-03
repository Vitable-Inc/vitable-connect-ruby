# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single employee resource.
    class EmployeeResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::Employee }, optional: false, nullable: false
    end
  end
end
