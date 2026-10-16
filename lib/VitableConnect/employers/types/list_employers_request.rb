# frozen_string_literal: true

module VitableConnect
  module Employers
    module Types
      class ListEmployersRequest < Internal::Types::Model
        field :benefit_family, -> { VitableConnect::Types::BenefitFamilyParamItem }, optional: true, nullable: false

        field :benefit_lifecycle_stage, -> { VitableConnect::Types::BenefitLifecycleStageItem }, optional: true, nullable: false

        field :hris_provider, -> { String }, optional: true, nullable: false

        field :hris_status, -> { VitableConnect::Types::HrisStatusItem }, optional: true, nullable: false

        field :include_cancelled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false

        field :search, -> { String }, optional: true, nullable: false
      end
    end
  end
end
