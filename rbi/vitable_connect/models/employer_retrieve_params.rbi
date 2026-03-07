# typed: strong

module VitableConnect
  module Models
    class EmployerRetrieveParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployerRetrieveParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Filter by employer ID
      sig { returns(String) }
      attr_accessor :employer_id

      sig do
        params(
          employer_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by employer ID
        employer_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            employer_id: String,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
