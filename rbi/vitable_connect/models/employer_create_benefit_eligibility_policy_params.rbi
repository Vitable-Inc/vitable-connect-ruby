# typed: strong

module VitableConnect
  module Models
    class EmployerCreateBenefitEligibilityPolicyParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EmployerCreateBenefitEligibilityPolicyParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique employer identifier (empr\_\*)
      sig { returns(String) }
      attr_accessor :employer_id

      # Which employee classifications are eligible. One of: full_time, part_time, all
      sig { returns(String) }
      attr_accessor :classification

      # Waiting period before eligibility. One of: first_of_following_month, 30_days,
      # 60_days, none
      sig { returns(String) }
      attr_accessor :waiting_period

      sig do
        params(
          employer_id: String,
          classification: String,
          waiting_period: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique employer identifier (empr\_\*)
        employer_id:,
        # Which employee classifications are eligible. One of: full_time, part_time, all
        classification:,
        # Waiting period before eligibility. One of: first_of_following_month, 30_days,
        # 60_days, none
        waiting_period:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            employer_id: String,
            classification: String,
            waiting_period: String,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
