# frozen_string_literal: true

module VitableConnect
  module Types
    # Response containing a single census sync detail resource.
    class CensusSyncDetailResponse < Internal::Types::Model
      field :data, -> { VitableConnect::Types::CensusSyncResponse }, optional: false, nullable: false
    end
  end
end
