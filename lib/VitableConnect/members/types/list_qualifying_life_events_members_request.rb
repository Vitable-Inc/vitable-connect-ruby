# frozen_string_literal: true

module VitableConnect
  module Members
    module Types
      class ListQualifyingLifeEventsMembersRequest < Internal::Types::Model
        field :member_id, -> { String }, optional: false, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :status, -> { VitableConnect::Types::Status }, optional: true, nullable: false
      end
    end
  end
end
