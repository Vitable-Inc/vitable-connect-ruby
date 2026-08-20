# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Members#list_dependents
    class MemberListDependentsResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<VitableConnect::Models::MemberListDependentsResponse::Data>]
      required :data,
               -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::MemberListDependentsResponse::Data] }

      # @!method initialize(data:)
      #   Unpaginated `{"data": [...]}` list of member dependents.
      #
      #   @param data [Array<VitableConnect::Models::MemberListDependentsResponse::Data>]

      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute age
        #   Dependent's age in years, derived from date of birth
        #
        #   @return [Integer]
        required :age, Integer

        # @!attribute date_of_birth
        #   Date of birth (YYYY-MM-DD)
        #
        #   @return [Date]
        required :date_of_birth, Date

        # @!attribute first_name
        #   Dependent's first name
        #
        #   @return [String]
        required :first_name, String

        # @!attribute last_name
        #   Dependent's last name
        #
        #   @return [String]
        required :last_name, String

        # @!attribute relationship
        #   - `Spouse` - Spouse
        #   - `Child` - Child
        #
        #   @return [Symbol, VitableConnect::Models::MemberListDependentsResponse::Data::Relationship]
        required :relationship,
                 enum: -> { VitableConnect::Models::MemberListDependentsResponse::Data::Relationship }

        # @!attribute sex_at_birth
        #   - `Male` - Male
        #   - `Female` - Female
        #   - `Other` - Other
        #   - `Unknown` - Unknown
        #
        #   @return [Symbol, VitableConnect::Models::MemberListDependentsResponse::Data::SexAtBirth, nil]
        optional :sex_at_birth,
                 enum: -> { VitableConnect::Models::MemberListDependentsResponse::Data::SexAtBirth },
                 nil?: true

        response_only do
          # @!attribute member_id
          #   The dependent's own member identifier with 'mbr\_' prefix
          #
          #   @return [String]
          required :member_id, String

          # @!attribute primary_member_id
          #   The primary member's identifier with 'mbr\_' prefix
          #
          #   @return [String]
          required :primary_member_id, String
        end

        # @!method initialize(age:, date_of_birth:, first_name:, last_name:, member_id:, primary_member_id:, relationship:, sex_at_birth: nil)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::MemberListDependentsResponse::Data} for more details.
        #
        #   Wire serializer for :class:`MemberLegalDependentDTO` (one legal-dependent row).
        #
        #   @param age [Integer] Dependent's age in years, derived from date of birth
        #
        #   @param date_of_birth [Date] Date of birth (YYYY-MM-DD)
        #
        #   @param first_name [String] Dependent's first name
        #
        #   @param last_name [String] Dependent's last name
        #
        #   @param member_id [String] The dependent's own member identifier with 'mbr\_' prefix
        #
        #   @param primary_member_id [String] The primary member's identifier with 'mbr\_' prefix
        #
        #   @param relationship [Symbol, VitableConnect::Models::MemberListDependentsResponse::Data::Relationship] - `Spouse` - Spouse
        #
        #   @param sex_at_birth [Symbol, VitableConnect::Models::MemberListDependentsResponse::Data::SexAtBirth, nil] - `Male` - Male

        # - `Spouse` - Spouse
        # - `Child` - Child
        #
        # @see VitableConnect::Models::MemberListDependentsResponse::Data#relationship
        module Relationship
          extend VitableConnect::Internal::Type::Enum

          SPOUSE = :Spouse
          CHILD = :Child

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # - `Male` - Male
        # - `Female` - Female
        # - `Other` - Other
        # - `Unknown` - Unknown
        #
        # @see VitableConnect::Models::MemberListDependentsResponse::Data#sex_at_birth
        module SexAtBirth
          extend VitableConnect::Internal::Type::Enum

          MALE = :Male
          FEMALE = :Female
          OTHER = :Other
          UNKNOWN = :Unknown

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
