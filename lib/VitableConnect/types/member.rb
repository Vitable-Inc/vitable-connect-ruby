# frozen_string_literal: true

module VitableConnect
  module Types
    # A member's profile: identity, contact details, address, demographics, and onboarding status.
    class Member < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :first_name, -> { String }, optional: false, nullable: false

      field :last_name, -> { String }, optional: false, nullable: false

      field :email, -> { String }, optional: true, nullable: false

      field :phone, -> { String }, optional: true, nullable: false

      field :address, -> { VitableConnect::Types::MemberAddress }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :middle_name, -> { String }, optional: true, nullable: false

      field :suffix, -> { VitableConnect::Types::NameSuffix }, optional: true, nullable: false

      field :date_of_birth, -> { String }, optional: false, nullable: false

      field :age, -> { Integer }, optional: false, nullable: false

      field :sex_at_birth, -> { VitableConnect::Types::SexAtBirth }, optional: true, nullable: false

      field :gender, -> { VitableConnect::Types::Gender }, optional: true, nullable: false

      field :preferred_language, -> { VitableConnect::Types::PreferredLanguage }, optional: true, nullable: false

      field :tobacco_status, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :marital_status, -> { VitableConnect::Types::MaritalStatus }, optional: true, nullable: false

      field :status, -> { VitableConnect::Types::MemberStatus }, optional: true, nullable: false
    end
  end
end
