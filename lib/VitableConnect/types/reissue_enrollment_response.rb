# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single reissue enrollment resource.
    class ReissueEnrollmentResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::ReissueEnrollment }, optional: false, nullable: false
    end
  end
end
