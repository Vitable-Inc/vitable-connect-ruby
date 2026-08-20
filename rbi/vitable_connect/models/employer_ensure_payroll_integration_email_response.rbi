# typed: strong

module VitableConnect
  module Models
    class EmployerEnsurePayrollIntegrationEmailResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig do
        returns(
          VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailResponse::Data
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # Response containing a single payroll integration email resource.
      sig do
        params(
          data:
            VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailResponse::Data
          }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :integration_email

        sig { params(integration_email: String).returns(T.attached_class) }
        def self.new(integration_email:)
        end

        sig { override.returns({ integration_email: String }) }
        def to_hash
        end
      end
    end
  end
end
