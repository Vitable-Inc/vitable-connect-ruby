# frozen_string_literal: true

module VitableConnect
  module Employers
    module Types
      class ListPayrollDeductionStatementsEmployersRequest < Internal::Types::Model
        field :employer_id, -> { String }, optional: false, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
