# frozen_string_literal: true

module VitableConnect
  module Types
    class DetailedAddress < Internal::Types::Model
      field :address_line1, -> { String }, optional: false, nullable: false, api_name: "address_line_1"

      field :address_line2, -> { String }, optional: true, nullable: false, api_name: "address_line_2"

      field :city, -> { String }, optional: false, nullable: false

      field :zipcode, -> { String }, optional: false, nullable: false

      field :state, -> { VitableConnect::Types::State }, optional: false, nullable: false

      field :latitude, -> { Integer }, optional: true, nullable: false

      field :longitude, -> { Integer }, optional: true, nullable: false

      field :county_fips_code, -> { String }, optional: true, nullable: false

      field :county_name, -> { String }, optional: true, nullable: false
    end
  end
end
