# typed: strong

module VitablePartnerAPI
  module Models
    class Member < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(VitablePartnerAPI::Member, VitablePartnerAPI::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Date) }
      attr_accessor :date_of_birth

      sig { returns(String) }
      attr_accessor :first_name

      sig { returns(String) }
      attr_accessor :last_name

      sig do
        returns(T.nilable(VitablePartnerAPI::Member::Gender::TaggedSymbol))
      end
      attr_accessor :gender

      sig { returns(T.nilable(VitablePartnerAPI::Member::Sex::TaggedSymbol)) }
      attr_accessor :sex

      sig { returns(T.nilable(String)) }
      attr_accessor :suffix

      sig do
        params(
          id: String,
          date_of_birth: Date,
          first_name: String,
          last_name: String,
          gender: T.nilable(VitablePartnerAPI::Member::Gender::OrSymbol),
          sex: T.nilable(VitablePartnerAPI::Member::Sex::OrSymbol),
          suffix: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        date_of_birth:,
        first_name:,
        last_name:,
        gender: nil,
        sex: nil,
        suffix: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            date_of_birth: Date,
            first_name: String,
            last_name: String,
            gender: T.nilable(VitablePartnerAPI::Member::Gender::TaggedSymbol),
            sex: T.nilable(VitablePartnerAPI::Member::Sex::TaggedSymbol),
            suffix: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module Gender
        extend VitablePartnerAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, VitablePartnerAPI::Member::Gender) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MALE = T.let(:MALE, VitablePartnerAPI::Member::Gender::TaggedSymbol)
        FEMALE = T.let(:FEMALE, VitablePartnerAPI::Member::Gender::TaggedSymbol)
        TRANSGENDER =
          T.let(:TRANSGENDER, VitablePartnerAPI::Member::Gender::TaggedSymbol)
        NON_BINARY =
          T.let(:NON_BINARY, VitablePartnerAPI::Member::Gender::TaggedSymbol)
        PREFER_NOT_TO_RESPOND =
          T.let(
            :PREFER_NOT_TO_RESPOND,
            VitablePartnerAPI::Member::Gender::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[VitablePartnerAPI::Member::Gender::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Sex
        extend VitablePartnerAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, VitablePartnerAPI::Member::Sex) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MALE = T.let(:MALE, VitablePartnerAPI::Member::Sex::TaggedSymbol)
        FEMALE = T.let(:FEMALE, VitablePartnerAPI::Member::Sex::TaggedSymbol)
        OTHER = T.let(:OTHER, VitablePartnerAPI::Member::Sex::TaggedSymbol)
        UNKNOWN = T.let(:UNKNOWN, VitablePartnerAPI::Member::Sex::TaggedSymbol)

        sig do
          override.returns(
            T::Array[VitablePartnerAPI::Member::Sex::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
