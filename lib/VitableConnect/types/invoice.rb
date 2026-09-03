# frozen_string_literal: true

module VitableConnect
  module Types
    class Invoice < Internal::Types::Model
      field :invoice_id, -> { String }, optional: false, nullable: false

      field :period, -> { String }, optional: false, nullable: true

      field :total, -> { Integer }, optional: false, nullable: true

      field :status, -> { String }, optional: false, nullable: true
    end
  end
end
