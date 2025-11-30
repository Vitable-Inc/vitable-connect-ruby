# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Members
      # - `Spouse` - Spouse
      # - `Child` - Child
      module Relationship
        extend VitableConnectAPI::Internal::Type::Enum

        SPOUSE = :Spouse
        CHILD = :Child

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
