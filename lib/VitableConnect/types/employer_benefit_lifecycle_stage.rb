# frozen_string_literal: true

module VitableConnect
  module Types
    class EmployerBenefitLifecycleStage < Internal::Types::Model
      field :stage, -> { String }, optional: false, nullable: false

      field :as_of_date, -> { String }, optional: false, nullable: true
    end
  end
end
