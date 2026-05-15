# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#update_settings
    class EmployerUpdateSettingsResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [VitableConnect::Models::EmployerUpdateSettingsResponse::Data]
      required :data, -> { VitableConnect::Models::EmployerUpdateSettingsResponse::Data }

      # @!method initialize(data:)
      #   Response containing a single employer settings resource.
      #
      #   @param data [VitableConnect::Models::EmployerUpdateSettingsResponse::Data]

      # @see VitableConnect::Models::EmployerUpdateSettingsResponse#data
      class Data < VitableConnect::Internal::Type::BaseModel
        # @!attribute pay_frequency
        #   - `weekly` - Weekly
        #   - `bi_weekly` - Bi-Weekly
        #   - `semi_monthly` - Semi-Monthly
        #   - `monthly` - Monthly
        #
        #   @return [Symbol, VitableConnect::Models::EmployerUpdateSettingsResponse::Data::PayFrequency, nil]
        required :pay_frequency,
                 enum: -> { VitableConnect::Models::EmployerUpdateSettingsResponse::Data::PayFrequency },
                 nil?: true

        # @!method initialize(pay_frequency:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::EmployerUpdateSettingsResponse::Data} for more details.
        #
        #   @param pay_frequency [Symbol, VitableConnect::Models::EmployerUpdateSettingsResponse::Data::PayFrequency, nil] - `weekly` - Weekly

        # - `weekly` - Weekly
        # - `bi_weekly` - Bi-Weekly
        # - `semi_monthly` - Semi-Monthly
        # - `monthly` - Monthly
        #
        # @see VitableConnect::Models::EmployerUpdateSettingsResponse::Data#pay_frequency
        module PayFrequency
          extend VitableConnect::Internal::Type::Enum

          WEEKLY = :weekly
          BI_WEEKLY = :bi_weekly
          SEMI_MONTHLY = :semi_monthly
          MONTHLY = :monthly

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
