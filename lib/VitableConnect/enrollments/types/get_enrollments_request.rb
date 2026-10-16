# frozen_string_literal: true

module VitableConnect
  module Enrollments
    module Types
      class GetEnrollmentsRequest < Internal::Types::Model
        field :enrollment_id, -> { String }, optional: false, nullable: false

        field :vitable_organization, -> { String }, optional: true, nullable: false, api_name: "X-Vitable-Organization"
      end
    end
  end
end
