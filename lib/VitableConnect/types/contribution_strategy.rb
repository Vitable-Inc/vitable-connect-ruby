# frozen_string_literal: true

module VitableConnect
  module Types
    # How the plan year prices contributions: exactly one collection is populated, determined by
    # whether the product is allowance-based (allowance classes vs tier-priced).
    class ContributionStrategy < Internal::Types::Model
      field :ichra_contribution_classes, -> { Internal::Types::Array[VitableConnect::Types::IchraContributionClass] }, optional: false, nullable: false

      field :contribution_tiers, -> { Internal::Types::Array[VitableConnect::Types::ContributionTier] }, optional: false, nullable: false
    end
  end
end
