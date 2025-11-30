# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Members
      # @type [VitableConnectAPI::Internal::Type::Converter]
      QualifyingLifeEventListResponse =
        VitableConnectAPI::Internal::Type::ArrayOf[-> { VitableConnectAPI::Members::QualifyingLifeEvent }]
    end
  end
end
