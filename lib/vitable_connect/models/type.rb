# frozen_string_literal: true

module VitableConnect
  module Models
    # - `employer` - employer
    # - `employee` - employee
    module Type
      extend VitableConnect::Internal::Type::Enum

      EMPLOYER = :employer
      EMPLOYEE = :employee

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
