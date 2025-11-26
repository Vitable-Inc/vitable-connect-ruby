# typed: strong

module VitablePartnerAPI
  module Models
    class CreateEmployerRequest < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::CreateEmployerRequest,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :legal_name

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      sig do
        params(legal_name: String, name: String, active: T::Boolean).returns(
          T.attached_class
        )
      end
      def self.new(legal_name:, name:, active: nil)
      end

      sig do
        override.returns(
          { legal_name: String, name: String, active: T::Boolean }
        )
      end
      def to_hash
      end
    end
  end
end
