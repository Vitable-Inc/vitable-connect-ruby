# frozen_string_literal: true

module VitableConnect
  module Models
    module Members
      # - `pending` - Pending
      # - `approved` - Approved
      # - `denied` - Denied
      module QualifyingLifeEventStatus
        extend VitableConnect::Internal::Type::Enum

        PENDING = :pending
        APPROVED = :approved
        DENIED = :denied

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
