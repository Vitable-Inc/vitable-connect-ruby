# typed: strong

module VitableConnectAPI
  module Models
    module BenefitProducts
      PlanYearListResponse =
        T.let(
          VitableConnectAPI::Internal::Type::ArrayOf[
            VitableConnectAPI::BenefitProducts::PlanYear
          ],
          VitableConnectAPI::Internal::Type::Converter
        )
    end
  end
end
