# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single payroll integration email resource.
    class PayrollIntegrationEmailResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::PayrollIntegrationEmail }, optional: false, nullable: false
    end
  end
end
