# typed: strong

module VitableConnectAPI
  module Models
    class EmployerListParams < VitableConnectAPI::Internal::Type::BaseModel
      extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
      include VitableConnectAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::EmployerListParams,
            VitableConnectAPI::Internal::AnyHash
          )
        end

      # Filter by active status
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active_in

      sig { params(active_in: T::Boolean).void }
      attr_writer :active_in

      # Items per page (default: 20, max: 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Filter by employer name (partial match)
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Page number (default: 1)
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      sig do
        params(
          active_in: T::Boolean,
          limit: Integer,
          name: String,
          page: Integer,
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by active status
        active_in: nil,
        # Items per page (default: 20, max: 100)
        limit: nil,
        # Filter by employer name (partial match)
        name: nil,
        # Page number (default: 1)
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            active_in: T::Boolean,
            limit: Integer,
            name: String,
            page: Integer,
            request_options: VitableConnectAPI::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
