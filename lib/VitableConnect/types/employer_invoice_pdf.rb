# frozen_string_literal: true

module VitableConnect
  module Types
    class EmployerInvoicePdf < Internal::Types::Model
      field :download_url, -> { String }, optional: false, nullable: false
    end
  end
end
