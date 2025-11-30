# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # @see VitableConnectAPI::Resources::Employees#terminate
    class EmployeeTerminateParams < VitableConnectAPI::Internal::Type::BaseModel
      extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
      include VitableConnectAPI::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
