# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Employees
      # @type [VitableConnectAPI::Internal::Type::Converter]
      EnrollmentListResponse = VitableConnectAPI::Internal::Type::ArrayOf[-> {
        VitableConnectAPI::Enrollment
      }]
    end
  end
end
