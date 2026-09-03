# frozen_string_literal: true

module VitableConnect
  module Types
    class ReissueEnrollment < Internal::Types::Model
      field :enrollment_id, -> { String }, optional: false, nullable: false
    end
  end
end
