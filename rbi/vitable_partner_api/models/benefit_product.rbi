# typed: strong

module VitablePartnerAPI
  module Models
    class BenefitProduct < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::BenefitProduct,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :product_type

      sig { returns(T.nilable(T::Array[VitablePartnerAPI::Plan])) }
      attr_reader :plans

      sig { params(plans: T::Array[VitablePartnerAPI::Plan::OrHash]).void }
      attr_writer :plans

      sig do
        params(
          id: String,
          name: String,
          product_type: String,
          plans: T::Array[VitablePartnerAPI::Plan::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(id:, name:, product_type:, plans: nil)
      end

      sig do
        override.returns(
          {
            id: String,
            name: String,
            product_type: String,
            plans: T::Array[VitablePartnerAPI::Plan]
          }
        )
      end
      def to_hash
      end
    end
  end
end
