# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#ensure_payroll_integration_email
    class EmployerEnsurePayrollIntegrationEmailResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailResponse::Data]
      required :data, -> { VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailResponse::Data }

      # @!method initialize(data:)
      #   Response containing a single payroll integration email resource.
      #
      #   @param data [VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailResponse::Data]

      # @see VitableConnect::Models::EmployerEnsurePayrollIntegrationEmailResponse#data
      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute integration_email
        #
        #   @return [String]
        required :integration_email, String

        # @!method initialize(integration_email:)
        #   @param integration_email [String]
      end
    end
  end
end
