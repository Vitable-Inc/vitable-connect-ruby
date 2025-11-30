# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module BenefitProducts
      # - `draft` - Draft
      # - `open_enrollment` - Open Enrollment
      # - `active` - Active
      # - `expired` - Expired
      module PlanYearStatus
        extend VitableConnectAPI::Internal::Type::Enum

        DRAFT = :draft
        OPEN_ENROLLMENT = :open_enrollment
        ACTIVE = :active
        EXPIRED = :expired

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
