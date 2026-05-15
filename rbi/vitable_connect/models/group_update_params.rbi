# typed: strong

module VitableConnect
  module Models
    class GroupUpdateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::GroupUpdateParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique group identifier (grp\_\*)
      sig { returns(String) }
      attr_accessor :group_id

      sig { returns(T.nilable(String)) }
      attr_accessor :external_reference_id

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          group_id: String,
          external_reference_id: T.nilable(String),
          name: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique group identifier (grp\_\*)
        group_id:,
        external_reference_id: nil,
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            group_id: String,
            external_reference_id: T.nilable(String),
            name: T.nilable(String),
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
