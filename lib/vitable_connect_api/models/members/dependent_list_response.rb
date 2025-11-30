# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Members
      # @type [VitableConnectAPI::Internal::Type::Converter]
      DependentListResponse = VitableConnectAPI::Internal::Type::ArrayOf[-> { VitableConnectAPI::Dependent }]
    end
  end
end
