# typed: strong

module VitablePartnerAPI
  module Models
    class UpdateDependentRequest < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::UpdateDependentRequest,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Date)) }
      attr_reader :date_of_birth

      sig { params(date_of_birth: Date).void }
      attr_writer :date_of_birth

      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: String).void }
      attr_writer :first_name

      sig do
        returns(
          T.nilable(VitablePartnerAPI::UpdateDependentRequest::Gender::OrSymbol)
        )
      end
      attr_reader :gender

      sig do
        params(
          gender: VitablePartnerAPI::UpdateDependentRequest::Gender::OrSymbol
        ).void
      end
      attr_writer :gender

      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: String).void }
      attr_writer :last_name

      sig do
        returns(
          T.nilable(
            VitablePartnerAPI::UpdateDependentRequest::Relationship::OrSymbol
          )
        )
      end
      attr_reader :relationship

      sig do
        params(
          relationship:
            VitablePartnerAPI::UpdateDependentRequest::Relationship::OrSymbol
        ).void
      end
      attr_writer :relationship

      sig do
        returns(
          T.nilable(VitablePartnerAPI::UpdateDependentRequest::Sex::OrSymbol)
        )
      end
      attr_reader :sex

      sig do
        params(
          sex: VitablePartnerAPI::UpdateDependentRequest::Sex::OrSymbol
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
          gender: VitablePartnerAPI::UpdateDependentRequest::Gender::OrSymbol,
          last_name: String,
          relationship:
            VitablePartnerAPI::UpdateDependentRequest::Relationship::OrSymbol,
          sex: VitablePartnerAPI::UpdateDependentRequest::Sex::OrSymbol,
          suffix: String
        ).returns(T.attached_class)
      end
      def self.new(
        date_of_birth: nil,
        first_name: nil,
        gender: nil,
        last_name: nil,
        relationship: nil,
        sex: nil,
        suffix: nil
      )
      end

      sig do
        override.returns(
          {
            date_of_birth: Date,
            first_name: String,
            gender: VitablePartnerAPI::UpdateDependentRequest::Gender::OrSymbol,
            last_name: String,
            relationship:
              VitablePartnerAPI::UpdateDependentRequest::Relationship::OrSymbol,
            sex: VitablePartnerAPI::UpdateDependentRequest::Sex::OrSymbol,
            suffix: String
          }
        )
      end
      def to_hash
      end

      module Gender
        extend VitablePartnerAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitablePartnerAPI::UpdateDependentRequest::Gender)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MALE =
          T.let(
            :MALE,
            VitablePartnerAPI::UpdateDependentRequest::Gender::TaggedSymbol
          )
        FEMALE =
          T.let(
            :FEMALE,
            VitablePartnerAPI::UpdateDependentRequest::Gender::TaggedSymbol
          )
        TRANSGENDER =
          T.let(
            :TRANSGENDER,
            VitablePartnerAPI::UpdateDependentRequest::Gender::TaggedSymbol
          )
        NON_BINARY =
          T.let(
            :NON_BINARY,
            VitablePartnerAPI::UpdateDependentRequest::Gender::TaggedSymbol
          )
        PREFER_NOT_TO_RESPOND =
          T.let(
            :PREFER_NOT_TO_RESPOND,
            VitablePartnerAPI::UpdateDependentRequest::Gender::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitablePartnerAPI::UpdateDependentRequest::Gender::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Relationship
        extend VitablePartnerAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitablePartnerAPI::UpdateDependentRequest::Relationship
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SPOUSE =
          T.let(
            :SPOUSE,
            VitablePartnerAPI::UpdateDependentRequest::Relationship::TaggedSymbol
          )
        CHILD =
          T.let(
            :CHILD,
            VitablePartnerAPI::UpdateDependentRequest::Relationship::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitablePartnerAPI::UpdateDependentRequest::Relationship::TaggedSymbol
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
            T.all(Symbol, VitablePartnerAPI::UpdateDependentRequest::Sex)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MALE =
          T.let(
            :MALE,
            VitablePartnerAPI::UpdateDependentRequest::Sex::TaggedSymbol
          )
        FEMALE =
          T.let(
            :FEMALE,
            VitablePartnerAPI::UpdateDependentRequest::Sex::TaggedSymbol
          )
        OTHER =
          T.let(
            :OTHER,
            VitablePartnerAPI::UpdateDependentRequest::Sex::TaggedSymbol
          )
        UNKNOWN =
          T.let(
            :UNKNOWN,
            VitablePartnerAPI::UpdateDependentRequest::Sex::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitablePartnerAPI::UpdateDependentRequest::Sex::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
