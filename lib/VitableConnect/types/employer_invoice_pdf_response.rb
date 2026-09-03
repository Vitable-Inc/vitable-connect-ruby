# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single employer invoice pdf resource.
    class EmployerInvoicePdfResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::EmployerInvoicePdf }, optional: false, nullable: false
    end
  end
end
