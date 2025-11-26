# typed: strong

module VitablePartnerAPI
  module Models
    class CreateDependentRequest < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::CreateDependentRequest,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(Date) }
      attr_accessor :date_of_birth

      sig { returns(String) }
      attr_accessor :first_name

      sig { returns(String) }
      attr_accessor :last_name

      sig do
        returns(
          VitablePartnerAPI::CreateDependentRequest::Relationship::OrSymbol
        )
      end
      attr_accessor :relationship

      sig do
        returns(
          T.nilable(VitablePartnerAPI::CreateDependentRequest::Gender::OrSymbol)
        )
      end
      attr_reader :gender

      sig do
        params(
          gender: VitablePartnerAPI::CreateDependentRequest::Gender::OrSymbol
        ).void
      end
      attr_writer :gender

      sig do
        returns(
          T.nilable(VitablePartnerAPI::CreateDependentRequest::Sex::OrSymbol)
        )
      end
      attr_reader :sex

      sig do
        params(
          sex: VitablePartnerAPI::CreateDependentRequest::Sex::OrSymbol
        ).void
      end
      attr_writer :sex

      sig { returns(T.nilable(String)) }
      attr_reader :suffix

      sig { params(suffix: String).void }
      attr_writer :suffix

      sig do
        params(
          date_of_birth: Date,
          first_name: String,
          last_name: String,
          relationship:
            VitablePartnerAPI::CreateDependentRequest::Relationship::OrSymbol,
          gender: VitablePartnerAPI::CreateDependentRequest::Gender::OrSymbol,
          sex: VitablePartnerAPI::CreateDependentRequest::Sex::OrSymbol,
          suffix: String
        ).returns(T.attached_class)
      end
      def self.new(
        date_of_birth:,
        first_name:,
        last_name:,
        relationship:,
        gender: nil,
        sex: nil,
        suffix: nil
      )
      end

      sig do
        override.returns(
          {
            date_of_birth: Date,
            first_name: String,
            last_name: String,
            relationship:
              VitablePartnerAPI::CreateDependentRequest::Relationship::OrSymbol,
            gender: VitablePartnerAPI::CreateDependentRequest::Gender::OrSymbol,
            sex: VitablePartnerAPI::CreateDependentRequest::Sex::OrSymbol,
            suffix: String
          }
        )
      end
      def to_hash
      end

      module Relationship
        extend VitablePartnerAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitablePartnerAPI::CreateDependentRequest::Relationship
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SPOUSE =
          T.let(
            :SPOUSE,
            VitablePartnerAPI::CreateDependentRequest::Relationship::TaggedSymbol
          )
        CHILD =
          T.let(
            :CHILD,
            VitablePartnerAPI::CreateDependentRequest::Relationship::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitablePartnerAPI::CreateDependentRequest::Relationship::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Gender
        extend VitablePartnerAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitablePartnerAPI::CreateDependentRequest::Gender)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MALE =
          T.let(
            :MALE,
            VitablePartnerAPI::CreateDependentRequest::Gender::TaggedSymbol
          )
        FEMALE =
          T.let(
            :FEMALE,
            VitablePartnerAPI::CreateDependentRequest::Gender::TaggedSymbol
          )
        TRANSGENDER =
          T.let(
            :TRANSGENDER,
            VitablePartnerAPI::CreateDependentRequest::Gender::TaggedSymbol
          )
        NON_BINARY =
          T.let(
            :NON_BINARY,
            VitablePartnerAPI::CreateDependentRequest::Gender::TaggedSymbol
          )
        PREFER_NOT_TO_RESPOND =
          T.let(
            :PREFER_NOT_TO_RESPOND,
            VitablePartnerAPI::CreateDependentRequest::Gender::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitablePartnerAPI::CreateDependentRequest::Gender::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Sex
        extend VitablePartnerAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitablePartnerAPI::CreateDependentRequest::Sex)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MALE =
          T.let(
            :MALE,
            VitablePartnerAPI::CreateDependentRequest::Sex::TaggedSymbol
          )
        FEMALE =
          T.let(
            :FEMALE,
            VitablePartnerAPI::CreateDependentRequest::Sex::TaggedSymbol
          )
        OTHER =
          T.let(
            :OTHER,
            VitablePartnerAPI::CreateDependentRequest::Sex::TaggedSymbol
          )
        UNKNOWN =
          T.let(
            :UNKNOWN,
            VitablePartnerAPI::CreateDependentRequest::Sex::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitablePartnerAPI::CreateDependentRequest::Sex::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
