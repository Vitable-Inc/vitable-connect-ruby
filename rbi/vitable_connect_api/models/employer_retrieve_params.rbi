# typed: strong

module VitableConnectAPI
  module Models
    class EmployerRetrieveParams < VitableConnectAPI::Internal::Type::BaseModel
      extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
      include VitableConnectAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::EmployerRetrieveParams,
            VitableConnectAPI::Internal::AnyHash
          )
        end

      sig do
        params(
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig do
        override.returns({ request_options: VitableConnectAPI::RequestOptions })
      end
      def to_hash
      end
    end
  end
end
