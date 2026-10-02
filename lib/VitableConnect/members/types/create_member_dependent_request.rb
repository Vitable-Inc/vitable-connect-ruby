# frozen_string_literal: true

module VitableConnect
  module Members
    module Types
      class CreateMemberDependentRequest < Internal::Types::Model
        field :member_id, -> { String }, optional: false, nullable: false

        field :vitable_organization, -> { String }, optional: true, nullable: false, api_name: "X-Vitable-Organization"

        field :first_name, -> { String }, optional: false, nullable: false

        field :last_name, -> { String }, optional: false, nullable: false

        field :suffix, -> { VitableConnect::Types::NameSuffix }, optional: true, nullable: false

        field :date_of_birth, -> { String }, optional: false, nullable: false

        field :sex_at_birth, -> { VitableConnect::Types::SexAtBirth }, optional: true, nullable: false

        field :gender, -> { VitableConnect::Types::Gender }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :relationship, -> { VitableConnect::Types::Relationship }, optional: false, nullable: false

        field :address, -> { VitableConnect::Types::CreateMemberDependentAddressRequest }, optional: false, nullable: false
      end
    end
  end
end
