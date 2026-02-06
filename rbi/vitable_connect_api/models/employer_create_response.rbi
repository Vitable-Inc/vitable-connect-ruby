# typed: strong

module VitableConnectAPI
  module Models
    class EmployerCreateResponse < VitableConnectAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::Models::EmployerCreateResponse,
            VitableConnectAPI::Internal::AnyHash
          )
        end

      # Serializer for Employer entity in public API responses.
      sig { returns(VitableConnectAPI::Employer) }
      attr_reader :data

      sig { params(data: VitableConnectAPI::Employer::OrHash).void }
      attr_writer :data

      # Response containing a single employer resource.
      sig do
        params(data: VitableConnectAPI::Employer::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # Serializer for Employer entity in public API responses.
        data:
      )
      end

      sig { override.returns({ data: VitableConnectAPI::Employer }) }
      def to_hash
      end
    end
  end
end
