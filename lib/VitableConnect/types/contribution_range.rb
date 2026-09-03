# frozen_string_literal: true

module VitableConnect
  module Types
    class ContributionRange < Internal::Types::Model
      field :min_cents, -> { Integer }, optional: false, nullable: false

      field :max_cents, -> { Integer }, optional: false, nullable: false
    end
  end
end
