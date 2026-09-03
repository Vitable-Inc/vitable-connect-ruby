# frozen_string_literal: true

module VitableConnect
  module Types
    module Gender
      extend VitableConnect::Internal::Types::Enum

      MALE = "Male"
      FEMALE = "Female"
      TRANSGENDER = "Transgender"
      NON_BINARY = "Non-binary"
      PREFER_NOT_TO_RESPOND = "Prefer not to respond"
    end
  end
end
