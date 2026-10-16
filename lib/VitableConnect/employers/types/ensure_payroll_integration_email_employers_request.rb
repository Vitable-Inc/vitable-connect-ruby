# frozen_string_literal: true

module VitableConnect
  module Employers
    module Types
      class EnsurePayrollIntegrationEmailEmployersRequest < Internal::Types::Model
        field :employer_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
