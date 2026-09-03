# frozen_string_literal: true

module VitableConnect
  module Types
    # Pagination metadata for list responses.
    class Pagination < Internal::Types::Model
      field :page, -> { Integer }, optional: false, nullable: false

      field :limit, -> { Integer }, optional: false, nullable: false

      field :total, -> { Integer }, optional: false, nullable: false

      field :total_pages, -> { Integer }, optional: false, nullable: false
    end
  end
end
