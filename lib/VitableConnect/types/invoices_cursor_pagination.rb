# frozen_string_literal: true

module VitableConnect
  module Types
    class InvoicesCursorPagination < Internal::Types::Model
      field :next_offset, -> { String }, optional: false, nullable: true
    end
  end
end
