# frozen_string_literal: true

module VitableConnect
  module Types
    class EmployeeAddressInput < Internal::Types::Model
      field :street1, -> { String }, optional: false, nullable: false, api_name: "street_1"

      field :street2, -> { String }, optional: true, nullable: false, api_name: "street_2"

      field :city, -> { String }, optional: false, nullable: false

      field :state, -> { String }, optional: false, nullable: false

      field :zip_code, -> { String }, optional: false, nullable: false

      field :country, -> { String }, optional: true, nullable: false
    end
  end
end
