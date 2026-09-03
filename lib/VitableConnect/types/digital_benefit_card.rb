# frozen_string_literal: true

module VitableConnect
  module Types
    # Wire serializer for :class:`DigitalBenefitCardDTO` (one benefit ID card).
    class DigitalBenefitCard < Internal::Types::Model
      field :card_type, -> { VitableConnect::Types::CardType }, optional: false, nullable: false

      field :group_id, -> { String }, optional: false, nullable: false

      field :group_member_id, -> { String }, optional: false, nullable: false

      field :member_name, -> { String }, optional: false, nullable: false

      field :employer_name, -> { String }, optional: true, nullable: false

      field :plan_name, -> { String }, optional: true, nullable: false

      field :benefit_code, -> { VitableConnect::Types::ProductCode }, optional: true, nullable: false

      field :network, -> { VitableConnect::Types::BenefitPlanNetwork }, optional: true, nullable: false

      field :claims_payer_display_name, -> { String }, optional: true, nullable: false

      field :carrier_phone, -> { String }, optional: true, nullable: false

      field :carrier_website, -> { String }, optional: true, nullable: false

      field :plan_disclaimer, -> { String }, optional: true, nullable: false

      field :general_disclaimer, -> { String }, optional: true, nullable: false

      field :nsa_table, -> { Internal::Types::Array[Internal::Types::Array[String]] }, optional: false, nullable: false
    end
  end
end
