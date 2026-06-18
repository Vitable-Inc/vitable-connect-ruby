# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Groups#list
    class Group < VitableConnect::Internal::Type::BaseModel
      # @!attribute id
      #   Prefixed group identifier (`grp_<base64-encoded-uuid>`).
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Group creation timestamp (ISO 8601, UTC).
      #
      #   @return [Time, nil]
      required :created_at, Time, nil?: true

      # @!attribute external_reference_id
      #   Stable identifier for this group in the integrator's own system.
      #
      #   @return [String]
      required :external_reference_id, String

      # @!attribute name
      #   Human-readable group name.
      #
      #   @return [String]
      required :name, String

      # @!attribute organization_id
      #   Prefixed organization identifier (`org_<base64-encoded-uuid>`).
      #
      #   @return [String]
      required :organization_id, String

      # @!attribute updated_at
      #   Last-update timestamp (ISO 8601, UTC).
      #
      #   @return [Time, nil]
      required :updated_at, Time, nil?: true

      # @!method initialize(id:, created_at:, external_reference_id:, name:, organization_id:, updated_at:)
      #   @param id [String] Prefixed group identifier (`grp_<base64-encoded-uuid>`).
      #
      #   @param created_at [Time, nil] Group creation timestamp (ISO 8601, UTC).
      #
      #   @param external_reference_id [String] Stable identifier for this group in the integrator's own system.
      #
      #   @param name [String] Human-readable group name.
      #
      #   @param organization_id [String] Prefixed organization identifier (`org_<base64-encoded-uuid>`).
      #
      #   @param updated_at [Time, nil] Last-update timestamp (ISO 8601, UTC).
    end
  end
end
