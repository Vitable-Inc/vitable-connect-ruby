# typed: strong

module VitableConnectAPI
  module Models
    module Employers
      EmployeeListResponse =
        T.let(
          VitableConnectAPI::Internal::Type::ArrayOf[
            VitableConnectAPI::Employee
          ],
          VitableConnectAPI::Internal::Type::Converter
        )
    end
  end
end
