# frozen_string_literal: true

module VitableConnect
  module Types
    class EnrollmentRateSummary < Internal::Types::Model
      field :eligible, -> { Integer }, optional: false, nullable: false

      field :enrolled, -> { Integer }, optional: false, nullable: false

      field :percentage, -> { Integer }, optional: false, nullable: false
    end
  end
end
