# frozen_string_literal: true

module VitableConnect
  module Enrollments
    module Types
      class GetEnrollmentsRequest < Internal::Types::Model
        field :enrollment_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
