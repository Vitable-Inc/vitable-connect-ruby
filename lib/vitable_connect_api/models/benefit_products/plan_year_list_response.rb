# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module BenefitProducts
      # @type [VitableConnectAPI::Internal::Type::Converter]
      PlanYearListResponse =
        VitableConnectAPI::Internal::Type::ArrayOf[-> { VitableConnectAPI::BenefitProducts::PlanYear }]
    end
  end
end
