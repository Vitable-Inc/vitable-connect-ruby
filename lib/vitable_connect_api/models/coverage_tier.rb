# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # - `Unspecified` - Unspecified
    # - `EE` - Ee
    # - `ES` - Es
    # - `EC` - Ec
    # - `EF` - Ef
    module CoverageTier
      extend VitableConnectAPI::Internal::Type::Enum

      UNSPECIFIED = :Unspecified
      EE = :EE
      ES = :ES
      EC = :EC
      EF = :EF

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
