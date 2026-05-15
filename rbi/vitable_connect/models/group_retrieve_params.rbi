# typed: strong

module VitableConnect
  module Models
    class GroupRetrieveParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::GroupRetrieveParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique group identifier (grp\_\*)
      sig { returns(String) }
      attr_accessor :group_id

      sig do
        params(
          group_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique group identifier (grp\_\*)
        group_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { group_id: String, request_options: VitableConnect::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
