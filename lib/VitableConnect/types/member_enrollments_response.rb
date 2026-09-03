# frozen_string_literal: true

module VitableConnect
  module Types
    # Unpaginated ``{"data": [...]}`` list of member enrollments.
    class MemberEnrollmentsResponse < Internal::Types::Model
      field :data, -> { Internal::Types::Array[VitableConnect::Types::MemberEnrollment] }, optional: false, nullable: false
    end
  end
end
