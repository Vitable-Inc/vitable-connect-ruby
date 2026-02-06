# typed: strong

module VitableConnect
  module Models
    class DependentResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::DependentResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # Serializer for Dependent entity in public API responses.
      #
      # Dependents are family members (spouse, children) who may be eligible for benefit
      # coverage through an employee.
      sig { returns(VitableConnect::Dependent) }
      attr_reader :data

      sig { params(data: VitableConnect::Dependent::OrHash).void }
      attr_writer :data

      # Response containing a single dependent resource.
      sig do
        params(data: VitableConnect::Dependent::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # Serializer for Dependent entity in public API responses.
        #
        # Dependents are family members (spouse, children) who may be eligible for benefit
        # coverage through an employee.
        data:
      )
      end

      sig { override.returns({ data: VitableConnect::Dependent }) }
      def to_hash
      end
    end
  end
end
