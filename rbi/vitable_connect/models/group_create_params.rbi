# typed: strong

module VitableConnect
  module Models
    class GroupCreateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::GroupCreateParams,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :external_reference_id

      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          external_reference_id: String,
          name: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(external_reference_id:, name:, request_options: {})
      end

      sig do
        override.returns(
          {
            external_reference_id: String,
            name: String,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
