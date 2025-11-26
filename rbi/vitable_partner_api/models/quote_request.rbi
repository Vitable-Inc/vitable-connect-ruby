# typed: strong

module VitablePartnerAPI
  module Models
    class QuoteRequest < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::QuoteRequest,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :employer_id

      # Additional metadata for quote generation
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      sig do
        params(
          employer_id: String,
          metadata: T::Hash[Symbol, T.anything]
        ).returns(T.attached_class)
      end
      def self.new(
        employer_id:,
        # Additional metadata for quote generation
        metadata: nil
      )
      end

      sig do
        override.returns(
          { employer_id: String, metadata: T::Hash[Symbol, T.anything] }
        )
      end
      def to_hash
      end
    end
  end
end
