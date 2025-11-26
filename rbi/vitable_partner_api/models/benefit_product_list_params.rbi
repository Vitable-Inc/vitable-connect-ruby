# typed: strong

module VitablePartnerAPI
  module Models
    class BenefitProductListParams < VitablePartnerAPI::Internal::Type::BaseModel
      extend VitablePartnerAPI::Internal::Type::RequestParameters::Converter
      include VitablePartnerAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::BenefitProductListParams,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      # Number of results to return
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Number of results to skip
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          limit: Integer,
          offset: Integer,
          request_options: VitablePartnerAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Number of results to return
        limit: nil,
        # Number of results to skip
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            limit: Integer,
            offset: Integer,
            request_options: VitablePartnerAPI::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
