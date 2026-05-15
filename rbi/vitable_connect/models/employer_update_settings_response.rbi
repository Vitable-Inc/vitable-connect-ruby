# typed: strong

module VitableConnect
  module Models
    class EmployerUpdateSettingsResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::EmployerUpdateSettingsResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig do
        returns(VitableConnect::Models::EmployerUpdateSettingsResponse::Data)
      end
      attr_reader :data

      sig do
        params(
          data:
            VitableConnect::Models::EmployerUpdateSettingsResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # Response containing a single employer settings resource.
      sig do
        params(
          data:
            VitableConnect::Models::EmployerUpdateSettingsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: VitableConnect::Models::EmployerUpdateSettingsResponse::Data }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EmployerUpdateSettingsResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        # - `weekly` - Weekly
        # - `bi_weekly` - Bi-Weekly
        # - `semi_monthly` - Semi-Monthly
        # - `monthly` - Monthly
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::EmployerUpdateSettingsResponse::Data::PayFrequency::TaggedSymbol
            )
          )
        end
        attr_accessor :pay_frequency

        sig do
          params(
            pay_frequency:
              T.nilable(
                VitableConnect::Models::EmployerUpdateSettingsResponse::Data::PayFrequency::OrSymbol
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # - `weekly` - Weekly
          # - `bi_weekly` - Bi-Weekly
          # - `semi_monthly` - Semi-Monthly
          # - `monthly` - Monthly
          pay_frequency:
        )
        end

        sig do
          override.returns(
            {
              pay_frequency:
                T.nilable(
                  VitableConnect::Models::EmployerUpdateSettingsResponse::Data::PayFrequency::TaggedSymbol
                )
            }
          )
        end
        def to_hash
        end

        # - `weekly` - Weekly
        # - `bi_weekly` - Bi-Weekly
        # - `semi_monthly` - Semi-Monthly
        # - `monthly` - Monthly
        module PayFrequency
          extend VitableConnect::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitableConnect::Models::EmployerUpdateSettingsResponse::Data::PayFrequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WEEKLY =
            T.let(
              :weekly,
              VitableConnect::Models::EmployerUpdateSettingsResponse::Data::PayFrequency::TaggedSymbol
            )
          BI_WEEKLY =
            T.let(
              :bi_weekly,
              VitableConnect::Models::EmployerUpdateSettingsResponse::Data::PayFrequency::TaggedSymbol
            )
          SEMI_MONTHLY =
            T.let(
              :semi_monthly,
              VitableConnect::Models::EmployerUpdateSettingsResponse::Data::PayFrequency::TaggedSymbol
            )
          MONTHLY =
            T.let(
              :monthly,
              VitableConnect::Models::EmployerUpdateSettingsResponse::Data::PayFrequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitableConnect::Models::EmployerUpdateSettingsResponse::Data::PayFrequency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
