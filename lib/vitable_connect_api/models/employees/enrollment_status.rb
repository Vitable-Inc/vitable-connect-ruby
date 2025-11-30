# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Employees
      # - `pending` - Pending
      # - `enrolled` - Enrolled
      # - `waived` - Waived
      # - `inactive` - Inactive
      module EnrollmentStatus
        extend VitableConnectAPI::Internal::Type::Enum

        PENDING = :pending
        ENROLLED = :enrolled
        WAIVED = :waived
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
