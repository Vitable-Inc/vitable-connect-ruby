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

      # Serializer for Employee entity in public API responses.
      #
      # Note: Employee is in the company module but exposed via account public API.
      # Contains nested MemberEntity with personal identity information.
      sig { returns(VitableConnect::Employee) }
      attr_reader :data

      sig { params(data: VitableConnect::Employee::OrHash).void }
      attr_writer :data

      # Response containing a single employee resource.
      sig do
        params(data: VitableConnect::Employee::OrHash).returns(T.attached_class)
      end
      def self.new(
        # Serializer for Employee entity in public API responses.
        #
        # Note: Employee is in the company module but exposed via account public API.
        # Contains nested MemberEntity with personal identity information.
        data:
      )
      end

      sig { override.returns({ data: VitableConnect::Employee }) }
      def to_hash
      end
    end
  end
end
