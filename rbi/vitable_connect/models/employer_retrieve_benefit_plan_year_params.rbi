# typed: strong

module VitableConnect
  module Models
    class EmployerRetrieveBenefitPlanYearParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployerRetrieveBenefitPlanYearParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique employer identifier (empr\_\*)
      sig { returns(String) }
      attr_accessor :employer_id

      # Unique benefit-plan-year identifier (plyr\_\*).
      sig { returns(String) }
      attr_accessor :benefit_plan_year_id

      sig do
        params(
          employer_id: String,
          benefit_plan_year_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique employer identifier (empr\_\*)
        employer_id:,
        # Unique benefit-plan-year identifier (plyr\_\*).
        benefit_plan_year_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            employer_id: String,
            benefit_plan_year_id: String,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
