# typed: strong

module VitablePartnerAPI
  module Models
    class Enrollment < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::Enrollment,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(VitablePartnerAPI::Enrollment::Decision::TaggedSymbol) }
      attr_accessor :decision

      sig { returns(String) }
      attr_accessor :employee_id

      sig { returns(String) }
      attr_accessor :plan_year_id

      sig { returns(VitablePartnerAPI::Enrollment::Status::TaggedSymbol) }
      attr_accessor :status

      sig do
        params(
          id: String,
          decision: VitablePartnerAPI::Enrollment::Decision::OrSymbol,
          employee_id: String,
          plan_year_id: String,
          status: VitablePartnerAPI::Enrollment::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(id:, decision:, employee_id:, plan_year_id:, status:)
      end

      sig do
        override.returns(
          {
            id: String,
            decision: VitablePartnerAPI::Enrollment::Decision::TaggedSymbol,
            employee_id: String,
            plan_year_id: String,
            status: VitablePartnerAPI::Enrollment::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Decision
        extend VitablePartnerAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VitablePartnerAPI::Enrollment::Decision)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENROLLED =
          T.let(
            :enrolled,
            VitablePartnerAPI::Enrollment::Decision::TaggedSymbol
          )
        WAIVED =
          T.let(:waived, VitablePartnerAPI::Enrollment::Decision::TaggedSymbol)

        sig do
          override.returns(
            T::Array[VitablePartnerAPI::Enrollment::Decision::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Status
        extend VitablePartnerAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, VitablePartnerAPI::Enrollment::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, VitablePartnerAPI::Enrollment::Status::TaggedSymbol)
        ENROLLED =
          T.let(:enrolled, VitablePartnerAPI::Enrollment::Status::TaggedSymbol)
        WAIVED =
          T.let(:waived, VitablePartnerAPI::Enrollment::Status::TaggedSymbol)
        INACTIVE =
          T.let(:inactive, VitablePartnerAPI::Enrollment::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[VitablePartnerAPI::Enrollment::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
