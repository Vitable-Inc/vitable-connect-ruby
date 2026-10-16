# frozen_string_literal: true

module VitableConnect
  module Employers
    module Types
      class GetInvoicePdfEmployersRequest < Internal::Types::Model
        field :employer_id, -> { String }, optional: false, nullable: false

        field :invoice_id, -> { String }, optional: false, nullable: false

        field :vitable_organization, -> { String }, optional: true, nullable: false, api_name: "X-Vitable-Organization"
      end
    end
  end
end
