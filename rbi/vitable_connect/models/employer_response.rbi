# typed: strong

module VitableConnect
  module Models
    class EmployerResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployerResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # Serializer for Employer entity in public API responses.
      sig { returns(VitableConnect::Employer) }
      attr_reader :data

      sig { params(data: VitableConnect::Employer::OrHash).void }
      attr_writer :data

      # Response containing a single employer resource.
      sig do
        params(data: VitableConnect::Employer::OrHash).returns(T.attached_class)
      end
      def self.new(
        # Serializer for Employer entity in public API responses.
        data:
      )
      end

      sig { override.returns({ data: VitableConnect::Employer }) }
      def to_hash
      end
    end
  end
end
