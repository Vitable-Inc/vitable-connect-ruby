# typed: strong

module VitablePartnerAPI
  module Models
    class Quote < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(VitablePartnerAPI::Quote, VitablePartnerAPI::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :benefit_product_id

      sig { returns(String) }
      attr_accessor :employer_id

      sig { returns(Integer) }
      attr_accessor :total_cost_in_cents

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :breakdown

      sig { params(breakdown: T::Hash[Symbol, T.anything]).void }
      attr_writer :breakdown

      sig do
        params(
          benefit_product_id: String,
          employer_id: String,
          total_cost_in_cents: Integer,
          breakdown: T::Hash[Symbol, T.anything]
        ).returns(T.attached_class)
      end
      def self.new(
        benefit_product_id:,
        employer_id:,
        total_cost_in_cents:,
        breakdown: nil
      )
      end

      sig do
        override.returns(
          {
            benefit_product_id: String,
            employer_id: String,
            total_cost_in_cents: Integer,
            breakdown: T::Hash[Symbol, T.anything]
          }
        )
      end
      def to_hash
      end
    end
  end
end
