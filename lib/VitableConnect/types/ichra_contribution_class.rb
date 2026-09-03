# frozen_string_literal: true

module VitableConnect
  module Types
    # One ICHRA contribution class, mirroring the internal configuration endpoint's
    # ``IchraContributionClassConfigurationEntitySerializer`` field-for-field. Two deliberate
    # differences for the public surface: the identifier is the opaque prefixed ``iccl_*`` form rather
    # than a raw UUID, and the matcher choices come from the domain enums rather than the model's.
    class IchraContributionClass < Internal::Types::Model
      field :contribution_class_id, -> { String }, optional: false, nullable: false

      field :amount_in_cents, -> { Integer }, optional: false, nullable: false

      field :employment, -> { VitableConnect::Types::ContributionClassEmployment }, optional: false, nullable: false

      field :compensation, -> { VitableConnect::Types::ContributionClassCompensation }, optional: false, nullable: false

      field :location, -> { VitableConnect::Types::ContributionClassLocation }, optional: false, nullable: false

      field :location_value, -> { String }, optional: false, nullable: true

      field :family_status, -> { VitableConnect::Types::CoverageTier }, optional: false, nullable: false

      field :min_age, -> { Integer }, optional: false, nullable: true

      field :max_age, -> { Integer }, optional: false, nullable: true
    end
  end
end
