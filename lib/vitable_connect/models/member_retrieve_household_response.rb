# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Members#retrieve_household
    class MemberRetrieveHouseholdResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<VitableConnect::Models::MemberRetrieveHouseholdResponse::Data>]
      required :data,
               -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::MemberRetrieveHouseholdResponse::Data] }

      # @!method initialize(data:)
      #   Unpaginated `{"data": [...]}` list of the members of a member's household.
      #
      #   @param data [Array<VitableConnect::Models::MemberRetrieveHouseholdResponse::Data>]

      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute date_of_birth
        #   Date of birth (YYYY-MM-DD)
        #
        #   @return [Date]
        required :date_of_birth, Date

        # @!attribute first_name
        #   Household member's first name
        #
        #   @return [String]
        required :first_name, String

        # @!attribute household_admin_in
        #   Whether this participant is a household admin (the account holder always is)
        #
        #   @return [Boolean]
        required :household_admin_in, VitableConnect::Internal::Type::Boolean

        # @!attribute last_name
        #   Household member's last name
        #
        #   @return [String]
        required :last_name, String

        # @!attribute member_type
        #   - `Account Holder` - Account Holder
        #   - `Dependent` - Dependent
        #   - `Inactive` - Inactive
        #
        #   @return [Symbol, VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::MemberType]
        required :member_type,
                 enum: -> { VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::MemberType }

        # @!attribute relationship
        #   - `Child` - Child
        #   - `Spouse` - Spouse
        #   - `Roommate` - Roommate
        #   - `Other` - Other
        #
        #   @return [Symbol, VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::Relationship, nil]
        optional :relationship,
                 enum: -> { VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::Relationship },
                 nil?: true

        response_only do
          # @!attribute member_id
          #   Member identifier with 'mbr\_' prefix
          #
          #   @return [String]
          required :member_id, String
        end

        # @!method initialize(date_of_birth:, first_name:, household_admin_in:, last_name:, member_id:, member_type:, relationship: nil)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::MemberRetrieveHouseholdResponse::Data} for more
        #   details.
        #
        #   Wire serializer for :class:`HouseholdMemberDTO` (one household participant).
        #
        #   @param date_of_birth [Date] Date of birth (YYYY-MM-DD)
        #
        #   @param first_name [String] Household member's first name
        #
        #   @param household_admin_in [Boolean] Whether this participant is a household admin (the account holder always is)
        #
        #   @param last_name [String] Household member's last name
        #
        #   @param member_id [String] Member identifier with 'mbr\_' prefix
        #
        #   @param member_type [Symbol, VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::MemberType] - `Account Holder` - Account Holder
        #
        #   @param relationship [Symbol, VitableConnect::Models::MemberRetrieveHouseholdResponse::Data::Relationship, nil] - `Child` - Child

        # - `Account Holder` - Account Holder
        # - `Dependent` - Dependent
        # - `Inactive` - Inactive
        #
        # @see VitableConnect::Models::MemberRetrieveHouseholdResponse::Data#member_type
        module MemberType
          extend VitableConnect::Internal::Type::Enum

          ACCOUNT_HOLDER = :"Account Holder"
          DEPENDENT = :Dependent
          INACTIVE = :Inactive

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # - `Child` - Child
        # - `Spouse` - Spouse
        # - `Roommate` - Roommate
        # - `Other` - Other
        #
        # @see VitableConnect::Models::MemberRetrieveHouseholdResponse::Data#relationship
        module Relationship
          extend VitableConnect::Internal::Type::Enum

          CHILD = :Child
          SPOUSE = :Spouse
          ROOMMATE = :Roommate
          OTHER = :Other

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
