# frozen_string_literal: true

module VitableConnect
  module Types
    # Serializer for Employer entity in public API responses.
    class Employer < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :organization_id, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :legal_name, -> { String }, optional: false, nullable: false

      field :ein, -> { String }, optional: true, nullable: false

      field :reference_id, -> { String }, optional: true, nullable: false

      field :email, -> { String }, optional: true, nullable: false

      field :phone_number, -> { String }, optional: true, nullable: false

      field :active, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :address, -> { VitableConnect::Types::EmployerAddress }, optional: false, nullable: false

      field :contact, -> { VitableConnect::Types::EmployerContact }, optional: true, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
