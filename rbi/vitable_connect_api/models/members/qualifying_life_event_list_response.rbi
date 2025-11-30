# typed: strong

module VitableConnectAPI
  module Models
    module Members
      QualifyingLifeEventListResponse =
        T.let(
          VitableConnectAPI::Internal::Type::ArrayOf[
            VitableConnectAPI::Members::QualifyingLifeEvent
          ],
          VitableConnectAPI::Internal::Type::Converter
        )
    end
  end
end
