# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#update_settings
    class EmployerUpdateSettingsParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute employer_id
      #   Unique employer identifier (empr\_\*)
      #
      #   @return [String]
      required :employer_id, String

      # @!attribute pay_frequency
      #   - `weekly` - weekly
      #   - `bi_weekly` - bi_weekly
      #   - `semi_monthly` - semi_monthly
      #   - `monthly` - monthly
      #
      #   @return [Symbol, VitableConnect::Models::EmployerUpdateSettingsParams::PayFrequency]
      required :pay_frequency, enum: -> { VitableConnect::EmployerUpdateSettingsParams::PayFrequency }

      # @!method initialize(employer_id:, pay_frequency:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::EmployerUpdateSettingsParams} for more details.
      #
      #   @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      #   @param pay_frequency [Symbol, VitableConnect::Models::EmployerUpdateSettingsParams::PayFrequency] - `weekly` - weekly
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

      # - `weekly` - weekly
      # - `bi_weekly` - bi_weekly
      # - `semi_monthly` - semi_monthly
      # - `monthly` - monthly
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
