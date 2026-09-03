# frozen_string_literal: true

module VitableConnect
  module Types
    class CensusSyncResponse < Internal::Types::Model
      field :employer_id, -> { String }, optional: false, nullable: false

      field :accepted_at, -> { String }, optional: false, nullable: false
    end
  end
end
