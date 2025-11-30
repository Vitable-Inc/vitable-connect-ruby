# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Employers
      # @type [VitableConnectAPI::Internal::Type::Converter]
      EmployeeListResponse = VitableConnectAPI::Internal::Type::ArrayOf[-> { VitableConnectAPI::Employee }]
    end
  end
end
