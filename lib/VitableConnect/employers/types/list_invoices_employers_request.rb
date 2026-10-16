# frozen_string_literal: true

module VitableConnect
  module Employers
    module Types
      class ListInvoicesEmployersRequest < Internal::Types::Model
        field :employer_id, -> { String }, optional: false, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :offset, -> { String }, optional: true, nullable: false
      end
    end
  end
end
