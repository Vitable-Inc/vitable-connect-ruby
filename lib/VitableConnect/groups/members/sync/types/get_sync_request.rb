# frozen_string_literal: true

module VitableConnect
  module Groups
    module Members
      module Sync
        module Types
          class GetSyncRequest < Internal::Types::Model
            field :group_id, -> { String }, optional: false, nullable: false

            field :request_id, -> { String }, optional: false, nullable: false
          end
        end
      end
    end
  end
end
