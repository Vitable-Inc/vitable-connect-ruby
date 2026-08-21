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
        #   HRIS/payroll provider id, as stored on the connection (e.g. `adp_run`). Filter
        #   with this.
        #
        #   @return [String]
        required :provider, String

        # @!attribute provider_label
        #   Display name of that provider (e.g. `ADP Run`).
        #
        #   @return [String]
        required :provider_label, String

        # @!method initialize(provider:, provider_label:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::EmployerListHRISProvidersResponse::Data} for more
        #   details.
        #
        #   @param provider [String] HRIS/payroll provider id, as stored on the connection (e.g. `adp_run`). Filter w
        #
        #   @param provider_label [String] Display name of that provider (e.g. `ADP Run`).
      end
    end
  end
end
