# typed: strong

module VitableConnect
  module Models
    class EmployerRetrieveHRISResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::EmployerRetrieveHRISResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # HRIS connection details, or null when the employer has no integration.
      sig do
        returns(
          T.nilable(VitableConnect::Models::EmployerRetrieveHRISResponse::HRIS)
        )
      end
      attr_reader :hris

      sig do
        params(
          hris:
            T.nilable(
              VitableConnect::Models::EmployerRetrieveHRISResponse::HRIS::OrHash
            )
        ).void
      end
      attr_writer :hris

      sig do
        params(
          hris:
            T.nilable(
              VitableConnect::Models::EmployerRetrieveHRISResponse::HRIS::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # HRIS connection details, or null when the employer has no integration.
        hris:
      )
      end

      sig do
        override.returns(
          {
            hris:
              T.nilable(
                VitableConnect::Models::EmployerRetrieveHRISResponse::HRIS
              )
          }
        )
      end
      def to_hash
      end

      class HRIS < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EmployerRetrieveHRISResponse::HRIS,
              VitableConnect::Internal::AnyHash
            )
          end

        # When the last sync completed, or null when none has.
        sig { returns(T.nilable(Time)) }
        attr_accessor :last_sync_on

        # HRIS/payroll provider the employer is connected to (e.g. `Paychex`).
        sig { returns(String) }
        attr_accessor :provider

        # Connection status reported by the integration.
        sig { returns(String) }
        attr_accessor :status

        # Rows in the latest completed sync, or null when none has.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :synced_row_count

        # HRIS connection details, or null when the employer has no integration.
        sig do
          params(
            last_sync_on: T.nilable(Time),
            provider: String,
            status: String,
            synced_row_count: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # When the last sync completed, or null when none has.
          last_sync_on:,
          # HRIS/payroll provider the employer is connected to (e.g. `Paychex`).
          provider:,
          # Connection status reported by the integration.
          status:,
          # Rows in the latest completed sync, or null when none has.
          synced_row_count:
        )
        end

        sig do
          override.returns(
            {
              last_sync_on: T.nilable(Time),
              provider: String,
              status: String,
              synced_row_count: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
