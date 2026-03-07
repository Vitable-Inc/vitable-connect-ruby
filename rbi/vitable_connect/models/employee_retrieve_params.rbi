# typed: strong

module VitableConnect
  module Models
    class EmployeeRetrieveParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployeeRetrieveParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique employee identifier (empl\_\*)
      sig { returns(String) }
      attr_accessor :employee_id

      sig do
        params(
          employee_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique employee identifier (empl\_\*)
        employee_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            employee_id: String,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
