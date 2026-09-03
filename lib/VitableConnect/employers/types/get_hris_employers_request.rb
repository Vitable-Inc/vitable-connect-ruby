# frozen_string_literal: true

module VitableConnect
  module Employers
    module Types
      class GetHrisEmployersRequest < Internal::Types::Model
        field :employer_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
