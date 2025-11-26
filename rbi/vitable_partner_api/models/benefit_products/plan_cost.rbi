# typed: strong

module VitablePartnerAPI
  module Models
    module BenefitProducts
      class PlanCost < VitablePartnerAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitablePartnerAPI::BenefitProducts::PlanCost,
              VitablePartnerAPI::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :dependent_cost_in_cents

        sig { returns(Integer) }
        attr_accessor :employee_cost_in_cents

        sig { returns(String) }
        attr_accessor :plan_id

        sig { returns(String) }
        attr_accessor :plan_year_id

        sig do
          params(
            dependent_cost_in_cents: Integer,
            employee_cost_in_cents: Integer,
            plan_id: String,
            plan_year_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          dependent_cost_in_cents:,
          employee_cost_in_cents:,
          plan_id:,
          plan_year_id:
        )
        end

        sig do
          override.returns(
            {
              dependent_cost_in_cents: Integer,
              employee_cost_in_cents: Integer,
              plan_id: String,
              plan_year_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
