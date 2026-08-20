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

        # HRIS/payroll provider name, as stored on the connection (e.g. `ADP RUN`).
        sig { returns(String) }
        attr_accessor :provider

        sig { params(provider: String).returns(T.attached_class) }
        def self.new(
          # HRIS/payroll provider name, as stored on the connection (e.g. `ADP RUN`).
          provider:
        )
        end

        sig { override.returns({ provider: String }) }
        def to_hash
        end
      end
    end
  end
end
