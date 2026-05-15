# typed: strong

module VitableConnect
  module Models
    class EmployerUpdateSettingsParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployerUpdateSettingsParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique employer identifier (empr\_\*)
      sig { returns(String) }
      attr_accessor :employer_id

      # - `weekly` - weekly
      # - `bi_weekly` - bi_weekly
      # - `semi_monthly` - semi_monthly
      # - `monthly` - monthly
      sig do
        returns(
          VitableConnect::EmployerUpdateSettingsParams::PayFrequency::OrSymbol
        )
      end
      attr_accessor :pay_frequency

      sig do
        params(
          employer_id: String,
          pay_frequency:
            VitableConnect::EmployerUpdateSettingsParams::PayFrequency::OrSymbol,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique employer identifier (empr\_\*)
        employer_id:,
        # - `weekly` - weekly
        # - `bi_weekly` - bi_weekly
        # - `semi_monthly` - semi_monthly
        # - `monthly` - monthly
        pay_frequency:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            employer_id: String,
            pay_frequency:
              VitableConnect::EmployerUpdateSettingsParams::PayFrequency::OrSymbol,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end

      # - `weekly` - weekly
      # - `bi_weekly` - bi_weekly
      # - `semi_monthly` - semi_monthly
      # - `monthly` - monthly
      module PayFrequency
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::EmployerUpdateSettingsParams::PayFrequency
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WEEKLY =
          T.let(
            :weekly,
            VitableConnect::EmployerUpdateSettingsParams::PayFrequency::TaggedSymbol
          )
        BI_WEEKLY =
          T.let(
            :bi_weekly,
            VitableConnect::EmployerUpdateSettingsParams::PayFrequency::TaggedSymbol
          )
        SEMI_MONTHLY =
          T.let(
            :semi_monthly,
            VitableConnect::EmployerUpdateSettingsParams::PayFrequency::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            VitableConnect::EmployerUpdateSettingsParams::PayFrequency::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::EmployerUpdateSettingsParams::PayFrequency::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
