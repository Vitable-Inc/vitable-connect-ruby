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
      #   - `weekly` - Weekly
      #   - `bi_weekly` - Bi Weekly
      #   - `semi_monthly` - Semi Monthly
      #   - `monthly` - Monthly
      #
      #   @return [Symbol, VitableConnect::Models::EmployerUpdateSettingsParams::PayFrequency]
      required :pay_frequency, enum: -> { VitableConnect::EmployerUpdateSettingsParams::PayFrequency }

      # @!method initialize(employer_id:, pay_frequency:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::EmployerUpdateSettingsParams} for more details.
      #
      #   @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      #   @param pay_frequency [Symbol, VitableConnect::Models::EmployerUpdateSettingsParams::PayFrequency] - `weekly` - Weekly
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]

      # - `weekly` - Weekly
      # - `bi_weekly` - Bi Weekly
      # - `semi_monthly` - Semi Monthly
      # - `monthly` - Monthly
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
