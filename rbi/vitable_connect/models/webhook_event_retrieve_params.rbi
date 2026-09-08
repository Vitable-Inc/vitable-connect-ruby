# typed: strong

module VitableConnect
  module Models
    class WebhookEventRetrieveParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::WebhookEventRetrieveParams,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :event_id

      sig do
        params(
          event_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(event_id:, request_options: {})
      end

      sig do
        override.returns(
          { event_id: String, request_options: VitableConnect::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
