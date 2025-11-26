# typed: strong

module VitablePartnerAPI
  module Models
    class Dependent < VitablePartnerAPI::Models::Member
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::Dependent,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(VitablePartnerAPI::Dependent::Relationship::TaggedSymbol) }
      attr_accessor :relationship

      sig do
        params(
          relationship: VitablePartnerAPI::Dependent::Relationship::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(relationship:)
      end

      sig do
        override.returns(
          {
            relationship:
              VitablePartnerAPI::Dependent::Relationship::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Relationship
        extend VitablePartnerAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitablePartnerAPI::Dependent::Relationship)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SPOUSE =
          T.let(
            :SPOUSE,
            VitablePartnerAPI::Dependent::Relationship::TaggedSymbol
          )
        CHILD =
          T.let(
            :CHILD,
            VitablePartnerAPI::Dependent::Relationship::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[VitablePartnerAPI::Dependent::Relationship::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
