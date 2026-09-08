# typed: strong

module VitableConnect
  module Models
    class WebhookEventRetrieveResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::WebhookEventRetrieveResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(VitableConnect::WebhookEvent) }
      attr_reader :data

      sig { params(data: VitableConnect::WebhookEvent::OrHash).void }
      attr_writer :data

      # Response containing a single webhook event resource.
      sig do
        params(data: VitableConnect::WebhookEvent::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig { override.returns({ data: VitableConnect::WebhookEvent }) }
      def to_hash
      end
    end
  end
end
