# typed: strong

module VitableConnect
  module Models
    class PlanYearRetrieveParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::PlanYearRetrieveParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique plan year identifier (plyr\_\*)
      sig { returns(String) }
      attr_accessor :plan_year_id

      sig do
        params(
          plan_year_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique plan year identifier (plyr\_\*)
        plan_year_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            plan_year_id: String,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
