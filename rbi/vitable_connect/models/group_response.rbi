# typed: strong

module VitableConnect
  module Models
    class GroupResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::GroupResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(VitableConnect::Group) }
      attr_reader :data

      sig { params(data: VitableConnect::Group::OrHash).void }
      attr_writer :data

      # Response containing a single group resource.
      sig do
        params(data: VitableConnect::Group::OrHash).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({ data: VitableConnect::Group }) }
      def to_hash
      end
    end
  end
end
