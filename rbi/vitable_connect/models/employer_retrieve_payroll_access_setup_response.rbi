# typed: strong

module VitableConnect
  module Models
    class EmployerRetrievePayrollAccessSetupResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::EmployerRetrievePayrollAccessSetupResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig do
        returns(
          VitableConnect::Models::EmployerRetrievePayrollAccessSetupResponse::Data
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            VitableConnect::Models::EmployerRetrievePayrollAccessSetupResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # Response containing a single payroll access setup status resource.
      sig do
        params(
          data:
            VitableConnect::Models::EmployerRetrievePayrollAccessSetupResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              VitableConnect::Models::EmployerRetrievePayrollAccessSetupResponse::Data
          }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EmployerRetrievePayrollAccessSetupResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :completed

        sig { returns(T.nilable(Time)) }
        attr_accessor :submitted_at

        sig do
          params(completed: T::Boolean, submitted_at: T.nilable(Time)).returns(
            T.attached_class
          )
        end
        def self.new(completed:, submitted_at:)
        end

        sig do
          override.returns(
            { completed: T::Boolean, submitted_at: T.nilable(Time) }
          )
        end
        def to_hash
        end
      end
    end
  end
end
