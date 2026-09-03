# frozen_string_literal: true

module VitableConnect
  module Employers
    module Types
      class CreateEmployerRequest < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false

        field :legal_name, -> { String }, optional: false, nullable: false

        field :ein, -> { String }, optional: false, nullable: false

        field :email, -> { String }, optional: false, nullable: false

        field :address, -> { VitableConnect::Types::EmployerAddressInput }, optional: false, nullable: false

        field :phone_number, -> { String }, optional: true, nullable: false

        field :reference_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
