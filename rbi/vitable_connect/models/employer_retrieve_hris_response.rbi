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

      sig do
        returns(VitableConnect::Models::EmployerRetrieveHRISResponse::Data)
      end
      attr_reader :data

      sig do
        params(
          data:
            VitableConnect::Models::EmployerRetrieveHRISResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # Response containing a single employer hris resource.
      sig do
        params(
          data:
            VitableConnect::Models::EmployerRetrieveHRISResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: VitableConnect::Models::EmployerRetrieveHRISResponse::Data }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EmployerRetrieveHRISResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        # HRIS connection details, or null when the employer has no integration.
        sig do
          returns(
            T.nilable(
              VitableConnect::Models::EmployerRetrieveHRISResponse::Data::HRIS
            )
          )
        end
        attr_reader :hris

        sig do
          params(
            hris:
              T.nilable(
                VitableConnect::Models::EmployerRetrieveHRISResponse::Data::HRIS::OrHash
              )
          ).void
        end
        attr_writer :hris

        sig do
          params(
            hris:
              T.nilable(
                VitableConnect::Models::EmployerRetrieveHRISResponse::Data::HRIS::OrHash
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
                  VitableConnect::Models::EmployerRetrieveHRISResponse::Data::HRIS
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
                VitableConnect::Models::EmployerRetrieveHRISResponse::Data::HRIS,
                VitableConnect::Internal::AnyHash
              )
            end

          # When the last sync completed, or null when none has.
          sig { returns(T.nilable(Time)) }
          attr_accessor :last_sync_on

          # Id of the HRIS/payroll provider the employer is connected to (e.g. `paylocity`).
          sig { returns(String) }
          attr_accessor :provider

          # Display name of that provider (e.g. `Paylocity`).
          sig { returns(String) }
          attr_accessor :provider_label

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
              provider_label: String,
              status: String,
              synced_row_count: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            # When the last sync completed, or null when none has.
            last_sync_on:,
            # Id of the HRIS/payroll provider the employer is connected to (e.g. `paylocity`).
            provider:,
            # Display name of that provider (e.g. `Paylocity`).
            provider_label:,
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
                provider_label: String,
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
end
