# frozen_string_literal: true

module VitableConnect
  module Organizations
    module Types
      class CreateOrganizationRequest < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false

        field :type, -> { VitableConnect::Types::CreateOrganizationRequestType }, optional: true, nullable: false
      end
    end
  end
end
