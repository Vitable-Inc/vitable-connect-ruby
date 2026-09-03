# frozen_string_literal: true

module VitableConnect
  module Types
    class Organization < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :type, -> { VitableConnect::Types::OrganizationType }, optional: false, nullable: true

      field :idp_org_id, -> { String }, optional: false, nullable: true

      field :idp_provider, -> { VitableConnect::Types::IdpProvider }, optional: false, nullable: true

      field :super_in, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
