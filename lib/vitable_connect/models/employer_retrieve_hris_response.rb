# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#retrieve_hris
    class EmployerRetrieveHRISResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute hris
      #   HRIS connection details, or null when the employer has no integration.
      #
      #   @return [VitableConnect::Models::EmployerRetrieveHRISResponse::HRIS, nil]
      required :hris, -> { VitableConnect::Models::EmployerRetrieveHRISResponse::HRIS }, nil?: true

      # @!method initialize(hris:)
      #   @param hris [VitableConnect::Models::EmployerRetrieveHRISResponse::HRIS, nil] HRIS connection details, or null when the employer has no integration.

      # @see VitableConnect::Models::EmployerRetrieveHRISResponse#hris
      class HRIS < VitableConnect::Internal::Type::BaseModel
        # @!attribute last_sync_on
        #   When the last sync completed, or null when none has.
        #
        #   @return [Time, nil]
        required :last_sync_on, Time, nil?: true

        # @!attribute provider
        #   HRIS/payroll provider the employer is connected to (e.g. `Paychex`).
        #
        #   @return [String]
        required :provider, String

        # @!attribute status
        #   Connection status reported by the integration.
        #
        #   @return [String]
        required :status, String

        # @!attribute synced_row_count
        #   Rows in the latest completed sync, or null when none has.
        #
        #   @return [Integer, nil]
        required :synced_row_count, Integer, nil?: true

        # @!method initialize(last_sync_on:, provider:, status:, synced_row_count:)
        #   HRIS connection details, or null when the employer has no integration.
        #
        #   @param last_sync_on [Time, nil] When the last sync completed, or null when none has.
        #
        #   @param provider [String] HRIS/payroll provider the employer is connected to (e.g. `Paychex`).
        #
        #   @param status [String] Connection status reported by the integration.
        #
        #   @param synced_row_count [Integer, nil] Rows in the latest completed sync, or null when none has.
      end
    end
  end
end
