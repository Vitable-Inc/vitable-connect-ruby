# typed: strong

module VitableConnect
  module Models
    class DependentUpdateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::DependentUpdateParams,
            VitableConnect::Internal::AnyHash
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
        returns(T.nilable(VitableConnect::Members::Relationship::OrSymbol))
      end
      attr_accessor :relationship

      sig do
        params(
          active: T.nilable(T::Boolean),
          gender: T.nilable(String),
          relationship:
            T.nilable(VitableConnect::Members::Relationship::OrSymbol),
          request_options: VitableConnect::RequestOptions::OrHash
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
              T.nilable(VitableConnect::Members::Relationship::OrSymbol),
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
