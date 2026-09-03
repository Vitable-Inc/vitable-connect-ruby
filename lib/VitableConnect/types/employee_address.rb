# frozen_string_literal: true

module VitableConnect
  module Types
    class EmployeeAddress < Internal::Types::Model
      field :address_line1, -> { String }, optional: false, nullable: false, api_name: "address_line_1"

      field :address_line2, -> { String }, optional: true, nullable: false, api_name: "address_line_2"

      field :city, -> { String }, optional: false, nullable: false

      field :state, -> { String }, optional: false, nullable: false

      field :zipcode, -> { String }, optional: false, nullable: false
    end
  end
end
