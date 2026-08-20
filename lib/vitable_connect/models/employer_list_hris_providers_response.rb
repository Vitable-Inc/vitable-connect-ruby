# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#list_hris_providers
    class EmployerListHRISProvidersResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<VitableConnect::Models::EmployerListHRISProvidersResponse::Data>]
      required :data,
               -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Models::EmployerListHRISProvidersResponse::Data] }

      # @!method initialize(data:)
      #   Unpaginated `{"data": [...]}` list of organization hris providers.
      #
      #   @param data [Array<VitableConnect::Models::EmployerListHRISProvidersResponse::Data>]

      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute provider
        #   HRIS/payroll provider name, as stored on the connection (e.g. `ADP RUN`).
        #
        #   @return [String]
        required :provider, String

        # @!method initialize(provider:)
        #   @param provider [String] HRIS/payroll provider name, as stored on the connection (e.g. `ADP RUN`).
      end
    end
  end
end
