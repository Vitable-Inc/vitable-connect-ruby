# frozen_string_literal: true

module VitableConnect
  module Models
    module Employers
      # - `Male` - Male
      # - `Female` - Female
      # - `Other` - Other
      # - `Unknown` - Unknown
      module Sex
        extend VitableConnect::Internal::Type::Enum

        MALE = :Male
        FEMALE = :Female
        OTHER = :Other
        UNKNOWN = :Unknown

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
