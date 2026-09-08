# typed: strong

module VitableConnect
  module Models
    class MemberRetrieveHouseholdResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::MemberRetrieveHouseholdResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            VitableConnect::Models::MemberRetrieveHouseholdResponse::Data
          ]
        )
      end
      attr_accessor :data

      # Unpaginated `{"data": [...]}` list of the members of a member's household.
      sig do
        params(
          data:
            T::Array[
              VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::OrHash
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
                VitableConnect::Models::MemberRetrieveHouseholdResponse::Data
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
              VitableConnect::Models::MemberRetrieveHouseholdResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        # Date of birth (YYYY-MM-DD)
        sig { returns(Date) }
        attr_accessor :date_of_birth

        # Household member's first name
        sig { returns(String) }
        attr_accessor :first_name

        # Whether this participant is a household admin (the account holder always is)
        sig { returns(T::Boolean) }
        attr_accessor :household_admin_in

        # Household member's last name
        sig { returns(String) }
        attr_accessor :last_name

        # - `Account Holder` - Account Holder
        # - `Dependent` - Dependent
        # - `Inactive` - Inactive
        sig do
          returns(
            VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::MemberType::TaggedSymbol
          )
        end
        attr_accessor :member_type

        # - `Child` - Child
        # - `Spouse` - Spouse
        # - `Roommate` - Roommate
        # - `Other` - Other
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::Relationship::TaggedSymbol
            )
          )
        end
        attr_accessor :relationship

        # Member identifier with 'mbr\_' prefix
        sig { returns(String) }
        attr_accessor :member_id

        # Wire serializer for :class:`HouseholdMemberDTO` (one household participant).
        sig do
          params(
            date_of_birth: Date,
            first_name: String,
            household_admin_in: T::Boolean,
            last_name: String,
            member_id: String,
            member_type:
              VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::MemberType::OrSymbol,
            relationship:
              T.nilable(
                VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::Relationship::OrSymbol
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Date of birth (YYYY-MM-DD)
          date_of_birth:,
          # Household member's first name
          first_name:,
          # Whether this participant is a household admin (the account holder always is)
          household_admin_in:,
          # Household member's last name
          last_name:,
          # Member identifier with 'mbr\_' prefix
          member_id:,
          # - `Account Holder` - Account Holder
          # - `Dependent` - Dependent
          # - `Inactive` - Inactive
          member_type:,
          # - `Child` - Child
          # - `Spouse` - Spouse
          # - `Roommate` - Roommate
          # - `Other` - Other
          relationship: nil
        )
        end

        sig do
          override.returns(
            {
              date_of_birth: Date,
              first_name: String,
              household_admin_in: T::Boolean,
              last_name: String,
              member_id: String,
              member_type:
                VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::MemberType::TaggedSymbol,
              relationship:
                T.nilable(
                  VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::Relationship::TaggedSymbol
                )
            }
          )
        end
        def to_hash
        end

        # - `Account Holder` - Account Holder
        # - `Dependent` - Dependent
        # - `Inactive` - Inactive
        module MemberType
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::MemberType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCOUNT_HOLDER =
            T.let(
              :"Account Holder",
              VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::MemberType::TaggedSymbol
            )
          DEPENDENT =
            T.let(
              :Dependent,
              VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::MemberType::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :Inactive,
              VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::MemberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::MemberType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # - `Child` - Child
        # - `Spouse` - Spouse
        # - `Roommate` - Roommate
        # - `Other` - Other
        module Relationship
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::Relationship
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHILD =
            T.let(
              :Child,
              VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::Relationship::TaggedSymbol
            )
          SPOUSE =
            T.let(
              :Spouse,
              VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::Relationship::TaggedSymbol
            )
          ROOMMATE =
            T.let(
              :Roommate,
              VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::Relationship::TaggedSymbol
            )
          OTHER =
            T.let(
              :Other,
              VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::Relationship::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::Relationship::TaggedSymbol
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
