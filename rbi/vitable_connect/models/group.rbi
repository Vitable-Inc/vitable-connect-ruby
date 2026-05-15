# typed: strong

module VitableConnect
  module Models
    class Group < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(VitableConnect::Group, VitableConnect::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :external_reference_id

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :organization_id

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
        id:,
        created_at:,
        external_reference_id:,
        name:,
        organization_id:,
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
