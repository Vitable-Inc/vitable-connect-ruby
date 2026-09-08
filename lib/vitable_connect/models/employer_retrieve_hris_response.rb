# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#retrieve_hris
    class EmployerRetrieveHRISResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [VitableConnect::Models::EmployerRetrieveHRISResponse::Data]
      required :data, -> { VitableConnect::Models::EmployerRetrieveHRISResponse::Data }

      # @!method initialize(data:)
      #   Response containing a single employer hris resource.
      #
      #   @param data [VitableConnect::Models::EmployerRetrieveHRISResponse::Data]

      # @see VitableConnect::Models::EmployerRetrieveHRISResponse#data
      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute hris
        #   HRIS connection details, or null when the employer has no integration.
        #
        #   @return [VitableConnect::Models::EmployerRetrieveHRISResponse::Data::HRIS, nil]
        required :hris, -> { VitableConnect::Models::EmployerRetrieveHRISResponse::Data::HRIS }, nil?: true

        # @!method initialize(hris:)
        #   @param hris [VitableConnect::Models::EmployerRetrieveHRISResponse::Data::HRIS, nil] HRIS connection details, or null when the employer has no integration.

        # @see VitableConnect::Models::EmployerRetrieveHRISResponse::Data#hris
        class HRIS < VitableConnect::Internal::Type::BaseModel
          # @!attribute last_sync_on
          #   When the last sync completed, or null when none has.
          #
          #   @return [Time, nil]
          required :last_sync_on, Time, nil?: true

          # @!attribute provider
          #   Id of the HRIS/payroll provider the employer is connected to (e.g. `paylocity`).
          #
          #   @return [String]
          required :provider, String

          # @!attribute provider_label
          #   Display name of that provider (e.g. `Paylocity`).
          #
          #   @return [String]
          required :provider_label, String

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

          # @!method initialize(last_sync_on:, provider:, provider_label:, status:, synced_row_count:)
          #   Some parameter documentations has been truncated, see
          #   {VitableConnect::Models::EmployerRetrieveHRISResponse::Data::HRIS} for more
          #   details.
          #
          #   HRIS connection details, or null when the employer has no integration.
          #
          #   @param last_sync_on [Time, nil] When the last sync completed, or null when none has.
          #
          #   @param provider [String] Id of the HRIS/payroll provider the employer is connected to (e.g. `paylocity`).
          #
          #   @param provider_label [String] Display name of that provider (e.g. `Paylocity`).
          #
          #   @param status [String] Connection status reported by the integration.
          #
          #   @param synced_row_count [Integer, nil] Rows in the latest completed sync, or null when none has.
        end
      end
    end
  end
end
