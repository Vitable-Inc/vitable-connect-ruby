# frozen_string_literal: true

module VitableConnect
  module Types
    # A member in the organization's directory: identity, contact details, address, and join date.
    class MemberListItem < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :first_name, -> { String }, optional: false, nullable: false

      field :last_name, -> { String }, optional: false, nullable: false

      field :email, -> { String }, optional: true, nullable: false

      field :phone, -> { String }, optional: true, nullable: false

      field :address, -> { VitableConnect::Types::MemberAddress }, optional: true, nullable: false
    end
  end
end
