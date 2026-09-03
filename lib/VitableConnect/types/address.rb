# frozen_string_literal: true

module VitableConnect
  module Types
    # Shared read serializer for a postal address on public API responses.
    #
    # One definition for the address block every public resource emits (employer, employee, …), so the
    # 5-field shape isn't hand-rolled per endpoint. Read-only: it renders an already-built address
    # value object (e.g. ``AddressDVO``) whose attributes map 1:1 to these fields.
    class Address < Internal::Types::Model
      field :address_line1, -> { String }, optional: false, nullable: false, api_name: "address_line_1"

      field :address_line2, -> { String }, optional: false, nullable: true, api_name: "address_line_2"

      field :city, -> { String }, optional: false, nullable: false

      field :state, -> { String }, optional: false, nullable: false

      field :zipcode, -> { String }, optional: false, nullable: false
    end
  end
end
