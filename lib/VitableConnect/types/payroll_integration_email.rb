# frozen_string_literal: true

module VitableConnect
  module Types
    class PayrollIntegrationEmail < Internal::Types::Model
      field :integration_email, -> { String }, optional: false, nullable: false
    end
  end
end
