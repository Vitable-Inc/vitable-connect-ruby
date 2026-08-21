# typed: strong

module VitableConnect
  module Models
    class EmployerListHRISProvidersResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::EmployerListHRISProvidersResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            VitableConnect::Models::EmployerListHRISProvidersResponse::Data
          ]
        )
      end
      attr_accessor :data

      # Unpaginated `{"data": [...]}` list of organization hris providers.
      sig do
        params(
          data:
            T::Array[
              VitableConnect::Models::EmployerListHRISProvidersResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                VitableConnect::Models::EmployerListHRISProvidersResponse::Data
              ]
          }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EmployerListHRISProvidersResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        # HRIS/payroll provider id, as stored on the connection (e.g. `adp_run`). Filter
        # with this.
        sig { returns(String) }
        attr_accessor :provider

        # Display name of that provider (e.g. `ADP Run`).
        sig { returns(String) }
        attr_accessor :provider_label

        sig do
          params(provider: String, provider_label: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # HRIS/payroll provider id, as stored on the connection (e.g. `adp_run`). Filter
          # with this.
          provider:,
          # Display name of that provider (e.g. `ADP Run`).
          provider_label:
        )
        end

        sig { override.returns({ provider: String, provider_label: String }) }
        def to_hash
        end
      end
    end
  end
end
