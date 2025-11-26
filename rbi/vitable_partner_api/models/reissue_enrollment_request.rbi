# typed: strong

module VitablePartnerAPI
  module Models
    class ReissueEnrollmentRequest < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::ReissueEnrollmentRequest,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :qualifying_life_event_id

      sig { params(qualifying_life_event_id: String).returns(T.attached_class) }
      def self.new(qualifying_life_event_id:)
      end

      sig { override.returns({ qualifying_life_event_id: String }) }
      def to_hash
      end
    end
  end
end
