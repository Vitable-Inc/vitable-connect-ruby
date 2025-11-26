# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    module Employees
      # @see VitablePartnerAPI::Resources::Employees::Enrollments#list
      class EnrollmentListParams < VitablePartnerAPI::Internal::Type::BaseModel
        extend VitablePartnerAPI::Internal::Type::RequestParameters::Converter
        include VitablePartnerAPI::Internal::Type::RequestParameters

        # @!attribute status
        #
        #   @return [Symbol, VitablePartnerAPI::Models::Employees::EnrollmentListParams::Status, nil]
        optional :status, enum: -> { VitablePartnerAPI::Employees::EnrollmentListParams::Status }

        # @!method initialize(status: nil, request_options: {})
        #   @param status [Symbol, VitablePartnerAPI::Models::Employees::EnrollmentListParams::Status]
        #   @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}]

        module Status
          extend VitablePartnerAPI::Internal::Type::Enum

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
end
