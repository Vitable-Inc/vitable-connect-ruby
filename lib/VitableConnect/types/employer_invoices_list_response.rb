# frozen_string_literal: true

module VitableConnect
  module Types
    # Cursor-paginated invoices envelope: ``{ "data": [...], "pagination": { "next_offset": ... } }``.
    class EmployerInvoicesListResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[VitableConnect::Types::Invoice] }, optional: false, nullable: false

      field :pagination, -> { VitableConnect::Types::InvoicesCursorPagination }, optional: false, nullable: false
    end
  end
end
