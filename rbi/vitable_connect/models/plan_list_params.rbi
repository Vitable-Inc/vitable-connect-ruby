# typed: strong

module VitableConnect
  module Models
    class PlanListParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::PlanListParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Items per page (default: 20, max: 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Page number (default: 1)
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      sig do
        params(
          limit: Integer,
          page: Integer,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Items per page (default: 20, max: 100)
        limit: nil,
        # Page number (default: 1)
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            limit: Integer,
            page: Integer,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
