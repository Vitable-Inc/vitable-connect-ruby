# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#retrieve_payroll_access_setup
    class EmployerRetrievePayrollAccessSetupResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [VitableConnect::Models::EmployerRetrievePayrollAccessSetupResponse::Data]
      required :data, -> { VitableConnect::Models::EmployerRetrievePayrollAccessSetupResponse::Data }

      # @!method initialize(data:)
      #   Response containing a single payroll access setup status resource.
      #
      #   @param data [VitableConnect::Models::EmployerRetrievePayrollAccessSetupResponse::Data]

      # @see VitableConnect::Models::EmployerRetrievePayrollAccessSetupResponse#data
      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute completed
        #
        #   @return [Boolean]
        required :completed, VitableConnect::Internal::Type::Boolean

        # @!attribute submitted_at
        #
        #   @return [Time, nil]
        required :submitted_at, Time, nil?: true

        # @!method initialize(completed:, submitted_at:)
        #   @param completed [Boolean]
        #   @param submitted_at [Time, nil]
      end
    end
  end
end
