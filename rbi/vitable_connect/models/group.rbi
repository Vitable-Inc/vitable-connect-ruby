# typed: strong

module VitableConnect
  module Models
    class Group < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(VitableConnect::Group, VitableConnect::Internal::AnyHash)
        end

      # Prefixed group identifier (`grp_<base64-encoded-uuid>`).
      sig { returns(String) }
      attr_accessor :id

      # Group creation timestamp (ISO 8601, UTC).
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # Stable identifier for this group in the integrator's own system.
      sig { returns(String) }
      attr_accessor :external_reference_id

      # Human-readable group name.
      sig { returns(String) }
      attr_accessor :name

      # Prefixed organization identifier (`org_<base64-encoded-uuid>`).
      sig { returns(String) }
      attr_accessor :organization_id

      # Last-update timestamp (ISO 8601, UTC).
      sig { returns(T.nilable(Time)) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: T.nilable(Time),
          external_reference_id: String,
          name: String,
          organization_id: String,
          updated_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        # Prefixed group identifier (`grp_<base64-encoded-uuid>`).
        id:,
        # Group creation timestamp (ISO 8601, UTC).
        created_at:,
        # Stable identifier for this group in the integrator's own system.
        external_reference_id:,
        # Human-readable group name.
        name:,
        # Prefixed organization identifier (`org_<base64-encoded-uuid>`).
        organization_id:,
        # Last-update timestamp (ISO 8601, UTC).
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: T.nilable(Time),
            external_reference_id: String,
            name: String,
            organization_id: String,
            updated_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end
    end
  end
end
