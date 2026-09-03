# frozen_string_literal: true

module VitableConnect
  module Types
    class GroupMemberSyncMemberRequest < Internal::Types::Model
      field :reference_id, -> { String }, optional: false, nullable: false

      field :first_name, -> { String }, optional: false, nullable: false

      field :last_name, -> { String }, optional: false, nullable: false

      field :date_of_birth, -> { String }, optional: false, nullable: false

      field :phone, -> { String }, optional: true, nullable: false

      field :plan_id, -> { String }, optional: false, nullable: false

      field :address, -> { VitableConnect::Types::AddressRequest }, optional: false, nullable: false

      field :email, -> { String }, optional: true, nullable: false
    end
  end
end
