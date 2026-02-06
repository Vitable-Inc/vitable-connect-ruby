# frozen_string_literal: true

module VitableConnect
  module Models
    module Members
      # - `Spouse` - Spouse
      # - `Child` - Child
      module Relationship
        extend VitableConnect::Internal::Type::Enum

        SPOUSE = :Spouse
        CHILD = :Child

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
