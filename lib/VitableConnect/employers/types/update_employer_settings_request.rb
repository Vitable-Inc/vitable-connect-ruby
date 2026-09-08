# frozen_string_literal: true

module VitableConnect
  module Employers
    module Types
      class UpdateEmployerSettingsRequest < Internal::Types::Model
        field :employer_id, -> { String }, optional: false, nullable: false

        field :vitable_organization, -> { String }, optional: true, nullable: false, api_name: "X-Vitable-Organization"

        field :pay_frequency, -> { VitableConnect::Types::DeductionFrequency }, optional: false, nullable: false
      end
    end
  end
end
