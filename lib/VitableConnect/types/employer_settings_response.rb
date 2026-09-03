# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single employer settings resource.
    class EmployerSettingsResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::EmployerSettings }, optional: false, nullable: false
    end
  end
end
