# frozen_string_literal: true

module VitableConnect
  module Enrollments
    module Types
      class ReissueEnrollmentRequest < Internal::Types::Model
        field :enrollment_id, -> { String }, optional: false, nullable: false

        field :reason, -> { String }, optional: true, nullable: false

        field :ticket_number, -> { String }, optional: true, nullable: false

        field :qualifying_life_event_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
