# typed: strong

module VitableConnectAPI
  module Models
    module Members
      class DependentCreateResponse < VitableConnectAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnectAPI::Models::Members::DependentCreateResponse,
              VitableConnectAPI::Internal::AnyHash
            )
          end

        # Serializer for Dependent entity in public API responses.
        #
        # Dependents are family members (spouse, children) who may be eligible for benefit
        # coverage through an employee.
        sig { returns(VitableConnectAPI::Dependent) }
        attr_reader :data

        sig { params(data: VitableConnectAPI::Dependent::OrHash).void }
        attr_writer :data

        # Response containing a single dependent resource.
        sig do
          params(data: VitableConnectAPI::Dependent::OrHash).returns(
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

        sig { override.returns({ data: VitableConnectAPI::Dependent }) }
        def to_hash
        end
      end
    end
  end
end
