# frozen_string_literal: true

module VitableConnect
  module Employers
    module Types
      class ListBenefitPlanYearEnrollmentsEmployersRequest < Internal::Types::Model
        field :employer_id, -> { String }, optional: false, nullable: false

        field :benefit_plan_year_id, -> { String }, optional: false, nullable: false

        field :election_status, -> { VitableConnect::Types::ElectionStatusItem }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :search, -> { String }, optional: true, nullable: false
      end
    end
  end
end
