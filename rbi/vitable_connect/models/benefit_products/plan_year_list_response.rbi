# typed: strong

module VitableConnect
  module Models
    module BenefitProducts
      class PlanYearListResponse < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::BenefitProducts::PlanYearListResponse,
              VitableConnect::Internal::AnyHash
            )
          end

        sig { returns(T::Array[VitableConnect::BenefitProducts::PlanYear]) }
        attr_accessor :data

        # Pagination metadata for list responses.
        sig { returns(VitableConnect::Pagination) }
        attr_reader :pagination

        sig { params(pagination: VitableConnect::Pagination::OrHash).void }
        attr_writer :pagination

        # Paginated list response containing plan year resources.
        sig do
          params(
            data: T::Array[VitableConnect::BenefitProducts::PlanYear::OrHash],
            pagination: VitableConnect::Pagination::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          data:,
          # Pagination metadata for list responses.
          pagination:
        )
        end

        sig do
          override.returns(
            {
              data: T::Array[VitableConnect::BenefitProducts::PlanYear],
              pagination: VitableConnect::Pagination
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
