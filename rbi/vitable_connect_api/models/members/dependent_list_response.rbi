# typed: strong

module VitableConnectAPI
  module Models
    module Members
      DependentListResponse =
        T.let(
          VitableConnectAPI::Internal::Type::ArrayOf[
            VitableConnectAPI::Dependent
          ],
          VitableConnectAPI::Internal::Type::Converter
        )
    end
  end
end
