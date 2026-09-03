# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single payroll access setup status resource.
    class PayrollAccessSetupStatusResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::PayrollAccessSetupStatus }, optional: false, nullable: false
    end
  end
end
