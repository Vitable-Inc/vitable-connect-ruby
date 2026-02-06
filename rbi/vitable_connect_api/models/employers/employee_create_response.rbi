# typed: strong

module VitableConnectAPI
  module Models
    module Employers
      class EmployeeCreateResponse < VitableConnectAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnectAPI::Models::Employers::EmployeeCreateResponse,
              VitableConnectAPI::Internal::AnyHash
            )
          end

        # Serializer for Employee entity in public API responses.
        #
        # Note: Employee is in the company module but exposed via account public API.
        # Contains nested MemberEntity with personal identity information.
        sig { returns(VitableConnectAPI::Employee) }
        attr_reader :data

        sig { params(data: VitableConnectAPI::Employee::OrHash).void }
        attr_writer :data

        # Response containing a single employee resource.
        sig do
          params(data: VitableConnectAPI::Employee::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # Serializer for Employee entity in public API responses.
          #
          # Note: Employee is in the company module but exposed via account public API.
          # Contains nested MemberEntity with personal identity information.
          data:
        )
        end

        sig { override.returns({ data: VitableConnectAPI::Employee }) }
        def to_hash
        end
      end
    end
  end
end
