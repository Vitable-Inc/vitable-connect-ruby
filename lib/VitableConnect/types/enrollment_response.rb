# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single enrollment resource.
    class EnrollmentResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::EnrollmentDetail }, optional: false, nullable: false
    end
  end
end
