# typed: strong

module VitableConnectAPI
  module Models
    EmployerListResponse =
      T.let(
        VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Employer],
        VitableConnectAPI::Internal::Type::Converter
      )
  end
end
