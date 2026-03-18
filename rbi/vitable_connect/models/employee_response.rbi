# typed: strong

module VitableConnect
  module Models
    class EmployeeResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployeeResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(VitableConnect::Employee) }
      attr_reader :data

      sig { params(data: VitableConnect::Employee::OrHash).void }
      attr_writer :data

      # Response containing a single employee resource.
      sig do
        params(data: VitableConnect::Employee::OrHash).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({ data: VitableConnect::Employee }) }
      def to_hash
      end
    end
  end
end
