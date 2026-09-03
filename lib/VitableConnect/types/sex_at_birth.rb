# frozen_string_literal: true

module VitableConnect
  module Types
    module SexAtBirth
      extend VitableConnect::Internal::Types::Enum

      MALE = "Male"
      FEMALE = "Female"
      OTHER = "Other"
      UNKNOWN = "Unknown"
    end
  end
end
