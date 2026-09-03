# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single employer resource.
    class EmployerResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::Employer }, optional: false, nullable: false
    end
  end
end
