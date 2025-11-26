# typed: strong

module VitablePartnerAPI
  module Models
    class ElectBenefitsRequest < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::ElectBenefitsRequest,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig do
        returns(T::Array[VitablePartnerAPI::ElectBenefitsRequest::Election])
      end
      attr_accessor :elections

      sig do
        params(
          elections:
            T::Array[VitablePartnerAPI::ElectBenefitsRequest::Election::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(elections:)
      end

      sig do
        override.returns(
          {
            elections:
              T::Array[VitablePartnerAPI::ElectBenefitsRequest::Election]
          }
        )
      end
      def to_hash
      end

      class Election < VitablePartnerAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitablePartnerAPI::ElectBenefitsRequest::Election,
              VitablePartnerAPI::Internal::AnyHash
            )
          end

        sig do
          returns(
            VitablePartnerAPI::ElectBenefitsRequest::Election::Decision::OrSymbol
          )
        end
        attr_accessor :decision

        sig { returns(String) }
        attr_accessor :enrollment_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :dependent_ids

        sig { params(dependent_ids: T::Array[String]).void }
        attr_writer :dependent_ids

        # Required if decision is enrolled
        sig { returns(T.nilable(String)) }
        attr_reader :plan_id

        sig { params(plan_id: String).void }
        attr_writer :plan_id

        sig do
          params(
            decision:
              VitablePartnerAPI::ElectBenefitsRequest::Election::Decision::OrSymbol,
            enrollment_id: String,
            dependent_ids: T::Array[String],
            plan_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          decision:,
          enrollment_id:,
          dependent_ids: nil,
          # Required if decision is enrolled
          plan_id: nil
        )
        end

        sig do
          override.returns(
            {
              decision:
                VitablePartnerAPI::ElectBenefitsRequest::Election::Decision::OrSymbol,
              enrollment_id: String,
              dependent_ids: T::Array[String],
              plan_id: String
            }
          )
        end
        def to_hash
        end

        module Decision
          extend VitablePartnerAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitablePartnerAPI::ElectBenefitsRequest::Election::Decision
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENROLLED =
            T.let(
              :enrolled,
              VitablePartnerAPI::ElectBenefitsRequest::Election::Decision::TaggedSymbol
            )
          WAIVED =
            T.let(
              :waived,
              VitablePartnerAPI::ElectBenefitsRequest::Election::Decision::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitablePartnerAPI::ElectBenefitsRequest::Election::Decision::TaggedSymbol
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
