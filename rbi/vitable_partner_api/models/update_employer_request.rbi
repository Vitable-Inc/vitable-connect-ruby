# typed: strong

module VitablePartnerAPI
  module Models
    class UpdateEmployerRequest < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::UpdateEmployerRequest,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      sig { returns(T.nilable(String)) }
      attr_reader :legal_name

      sig { params(legal_name: String).void }
      attr_writer :legal_name

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(active: T::Boolean, legal_name: String, name: String).returns(
          T.attached_class
        )
      end
      def self.new(active: nil, legal_name: nil, name: nil)
      end

      sig do
        override.returns(
          { active: T::Boolean, legal_name: String, name: String }
        )
      end
      def to_hash
      end
    end
  end
end
