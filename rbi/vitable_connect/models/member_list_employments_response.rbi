# typed: strong

module VitableConnect
  module Models
    class MemberListEmploymentsResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::MemberListEmploymentsResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(T::Array[VitableConnect::Employee]) }
      attr_accessor :data

      # Unpaginated `{"data": [...]}` list of member employments.
      sig do
        params(data: T::Array[VitableConnect::Employee::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig { override.returns({ data: T::Array[VitableConnect::Employee] }) }
      def to_hash
      end
    end
  end
end
