# typed: strong

module VitableConnect
  module Models
    class EmployerSubmitCensusSyncResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::EmployerSubmitCensusSyncResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig do
        returns(VitableConnect::Models::EmployerSubmitCensusSyncResponse::Data)
      end
      attr_reader :data

      sig do
        params(
          data:
            VitableConnect::Models::EmployerSubmitCensusSyncResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # Response containing a single census sync detail resource.
      sig do
        params(
          data:
            VitableConnect::Models::EmployerSubmitCensusSyncResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data: VitableConnect::Models::EmployerSubmitCensusSyncResponse::Data
          }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EmployerSubmitCensusSyncResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :accepted_at

        sig { returns(String) }
        attr_accessor :employer_id

        sig do
          params(accepted_at: Time, employer_id: String).returns(
            T.attached_class
          )
        end
        def self.new(accepted_at:, employer_id:)
        end

        sig { override.returns({ accepted_at: Time, employer_id: String }) }
        def to_hash
        end
      end
    end
  end
end
