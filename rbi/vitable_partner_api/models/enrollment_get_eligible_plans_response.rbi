# typed: strong

module VitablePartnerAPI
  module Models
    class EnrollmentGetEligiblePlansResponse < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::Models::EnrollmentGetEligiblePlansResponse,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[VitablePartnerAPI::Plan])) }
      attr_reader :data

      sig { params(data: T::Array[VitablePartnerAPI::Plan::OrHash]).void }
      attr_writer :data

      sig do
        params(data: T::Array[VitablePartnerAPI::Plan::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: T::Array[VitablePartnerAPI::Plan] }) }
      def to_hash
      end
    end
  end
end
