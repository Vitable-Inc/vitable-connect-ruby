# frozen_string_literal: true

module VitableConnect
  module Types
    class HrisConnection < Internal::Types::Model
      field :provider, -> { String }, optional: false, nullable: false

      field :provider_label, -> { String }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: false

      field :last_sync_on, -> { String }, optional: false, nullable: true

      field :synced_row_count, -> { Integer }, optional: false, nullable: true
    end
  end
end
