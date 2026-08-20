# typed: strong

module VitableConnect
  module Models
    class MemberListDependentsResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::MemberListDependentsResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[VitableConnect::Models::MemberListDependentsResponse::Data]
        )
      end
      attr_accessor :data

      # Unpaginated `{"data": [...]}` list of member dependents.
      sig do
        params(
          data:
            T::Array[
              VitableConnect::Models::MemberListDependentsResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                VitableConnect::Models::MemberListDependentsResponse::Data
              ]
          }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::MemberListDependentsResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        # Dependent's age in years, derived from date of birth
        sig { returns(Integer) }
        attr_accessor :age

        # Date of birth (YYYY-MM-DD)
        sig { returns(Date) }
        attr_accessor :date_of_birth

        # Dependent's first name
        sig { returns(String) }
        attr_accessor :first_name

        # Dependent's last name
        sig { returns(String) }
        attr_accessor :last_name

        # - `Spouse` - Spouse
        # - `Child` - Child
        sig do
          returns(
            VitableConnect::Models::MemberListDependentsResponse::Data::Relationship::TaggedSymbol
          )
        end
        attr_accessor :relationship

        # - `Male` - Male
        # - `Female` - Female
        # - `Other` - Other
        # - `Unknown` - Unknown
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::MemberListDependentsResponse::Data::SexAtBirth::TaggedSymbol
            )
          )
        end
        attr_accessor :sex_at_birth

        # The dependent's own member identifier with 'mbr\_' prefix
        sig { returns(String) }
        attr_accessor :member_id

        # The primary member's identifier with 'mbr\_' prefix
        sig { returns(String) }
        attr_accessor :primary_member_id

        # Wire serializer for :class:`MemberLegalDependentDTO` (one legal-dependent row).
        sig do
          params(
            age: Integer,
            date_of_birth: Date,
            first_name: String,
            last_name: String,
            member_id: String,
            primary_member_id: String,
            relationship:
              VitableConnect::Models::MemberListDependentsResponse::Data::Relationship::OrSymbol,
            sex_at_birth:
              T.nilable(
                VitableConnect::Models::MemberListDependentsResponse::Data::SexAtBirth::OrSymbol
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Dependent's age in years, derived from date of birth
          age:,
          # Date of birth (YYYY-MM-DD)
          date_of_birth:,
          # Dependent's first name
          first_name:,
          # Dependent's last name
          last_name:,
          # The dependent's own member identifier with 'mbr\_' prefix
          member_id:,
          # The primary member's identifier with 'mbr\_' prefix
          primary_member_id:,
          # - `Spouse` - Spouse
          # - `Child` - Child
          relationship:,
          # - `Male` - Male
          # - `Female` - Female
          # - `Other` - Other
          # - `Unknown` - Unknown
          sex_at_birth: nil
        )
        end

        sig do
          override.returns(
            {
              age: Integer,
              date_of_birth: Date,
              first_name: String,
              last_name: String,
              member_id: String,
              primary_member_id: String,
              relationship:
                VitableConnect::Models::MemberListDependentsResponse::Data::Relationship::TaggedSymbol,
              sex_at_birth:
                T.nilable(
                  VitableConnect::Models::MemberListDependentsResponse::Data::SexAtBirth::TaggedSymbol
                )
            }
          )
        end
        def to_hash
        end

        # - `Spouse` - Spouse
        # - `Child` - Child
        module Relationship
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::MemberListDependentsResponse::Data::Relationship
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SPOUSE =
            T.let(
              :Spouse,
              VitableConnect::Models::MemberListDependentsResponse::Data::Relationship::TaggedSymbol
            )
          CHILD =
            T.let(
              :Child,
              VitableConnect::Models::MemberListDependentsResponse::Data::Relationship::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberListDependentsResponse::Data::Relationship::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # - `Male` - Male
        # - `Female` - Female
        # - `Other` - Other
        # - `Unknown` - Unknown
        module SexAtBirth
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::MemberListDependentsResponse::Data::SexAtBirth
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MALE =
            T.let(
              :Male,
              VitableConnect::Models::MemberListDependentsResponse::Data::SexAtBirth::TaggedSymbol
            )
          FEMALE =
            T.let(
              :Female,
              VitableConnect::Models::MemberListDependentsResponse::Data::SexAtBirth::TaggedSymbol
            )
          OTHER =
            T.let(
              :Other,
              VitableConnect::Models::MemberListDependentsResponse::Data::SexAtBirth::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :Unknown,
              VitableConnect::Models::MemberListDependentsResponse::Data::SexAtBirth::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberListDependentsResponse::Data::SexAtBirth::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
