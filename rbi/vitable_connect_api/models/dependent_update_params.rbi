# typed: strong

module VitableConnectAPI
  module Models
    class DependentUpdateParams < VitableConnectAPI::Internal::Type::BaseModel
      extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
      include VitableConnectAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::DependentUpdateParams,
            VitableConnectAPI::Internal::AnyHash
          )
        end

      # Whether the dependent is active
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active

      # Gender identity
      sig { returns(T.nilable(String)) }
      attr_accessor :gender

      # - `Spouse` - Spouse
      # - `Child` - Child
      sig do
        returns(T.nilable(VitableConnectAPI::Members::Relationship::OrSymbol))
      end
      attr_accessor :relationship

      sig do
        params(
          active: T.nilable(T::Boolean),
          gender: T.nilable(String),
          relationship:
            T.nilable(VitableConnectAPI::Members::Relationship::OrSymbol),
          request_options: VitableConnectAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether the dependent is active
        active: nil,
        # Gender identity
        gender: nil,
        # - `Spouse` - Spouse
        # - `Child` - Child
        relationship: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            active: T.nilable(T::Boolean),
            gender: T.nilable(String),
            relationship:
              T.nilable(VitableConnectAPI::Members::Relationship::OrSymbol),
            request_options: VitableConnectAPI::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
