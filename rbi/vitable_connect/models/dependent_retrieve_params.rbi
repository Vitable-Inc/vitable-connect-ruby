# typed: strong

module VitableConnect
  module Models
    class DependentRetrieveParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::DependentRetrieveParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique dependent identifier (dpnd\_\*)
      sig { returns(String) }
      attr_accessor :dependent_id

      sig do
        params(
          dependent_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique dependent identifier (dpnd\_\*)
        dependent_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            dependent_id: String,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
