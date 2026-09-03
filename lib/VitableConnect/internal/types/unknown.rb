# frozen_string_literal: true

module VitableConnect
  module Internal
    module Types
      module Unknown
        include VitableConnect::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
