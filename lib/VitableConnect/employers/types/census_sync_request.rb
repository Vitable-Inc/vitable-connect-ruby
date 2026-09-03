# frozen_string_literal: true

module VitableConnect
  module Employers
    module Types
      class CensusSyncRequest < Internal::Types::Model
        field :employer_id, -> { String }, optional: false, nullable: false

        field :employees, -> { Internal::Types::Array[VitableConnect::Types::CensusSyncEmployeeRequest] }, optional: false, nullable: false
      end
    end
  end
end
