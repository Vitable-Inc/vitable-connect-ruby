# frozen_string_literal: true

module VitableConnect
  module Employers
    module Types
      class GetInvoicePdfEmployersRequest < Internal::Types::Model
        field :employer_id, -> { String }, optional: false, nullable: false

        field :invoice_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
