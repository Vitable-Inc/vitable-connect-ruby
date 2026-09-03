# frozen_string_literal: true

module VitableConnect
  module Types
    class BenefitPlanNetwork < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :logo, -> { String }, optional: false, nullable: true

      field :address, -> { VitableConnect::Types::Address }, optional: false, nullable: false

      field :edi, -> { String }, optional: true, nullable: false

      field :website, -> { String }, optional: false, nullable: false

      field :phone, -> { String }, optional: false, nullable: false

      field :member_website, -> { String }, optional: true, nullable: false

      field :member_phone, -> { String }, optional: false, nullable: true

      field :provider_website, -> { String }, optional: true, nullable: false

      field :provider_phone, -> { String }, optional: false, nullable: true
    end
  end
end
