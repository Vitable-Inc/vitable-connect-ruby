# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # @type [VitableConnectAPI::Internal::Type::Converter]
    EmployerListResponse = VitableConnectAPI::Internal::Type::ArrayOf[-> { VitableConnectAPI::Employer }]
  end
end
