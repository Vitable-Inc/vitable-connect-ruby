# frozen_string_literal: true

module VitableConnect
  module Types
    # Wire serializer for :class:`MemberLegalDependentDTO` (one legal-dependent row).
    class SavedMemberDependent < Internal::Types::Model
      field :member_id, -> { String }, optional: true, nullable: false

      field :primary_member_id, -> { String }, optional: true, nullable: false

      field :first_name, -> { String }, optional: false, nullable: false

      field :last_name, -> { String }, optional: false, nullable: false

      field :relationship, -> { VitableConnect::Types::Relationship }, optional: false, nullable: false

      field :date_of_birth, -> { String }, optional: false, nullable: false

      field :age, -> { Integer }, optional: false, nullable: false

      field :sex_at_birth, -> { VitableConnect::Types::SexAtBirth }, optional: true, nullable: false

      field :legal_dependent_id, -> { String }, optional: false, nullable: false

      field :created, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
