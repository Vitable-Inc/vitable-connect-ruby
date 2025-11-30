# typed: strong

module VitableConnectAPI
  module Models
    module Employees
      EnrollmentListResponse =
        T.let(
          VitableConnectAPI::Internal::Type::ArrayOf[
            VitableConnectAPI::Enrollment
          ],
          VitableConnectAPI::Internal::Type::Converter
        )
    end
  end
end
