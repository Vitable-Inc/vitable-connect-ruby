# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # - `Male` - Male
    # - `Female` - Female
    # - `Other` - Other
    # - `Unknown` - Unknown
    module Sex
      extend VitableConnectAPI::Internal::Type::Enum

      MALE = :Male
      FEMALE = :Female
      OTHER = :Other
      UNKNOWN = :Unknown

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
