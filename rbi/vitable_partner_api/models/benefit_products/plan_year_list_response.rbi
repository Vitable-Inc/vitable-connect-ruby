# typed: strong

module VitablePartnerAPI
  module Models
    module BenefitProducts
      class PlanYearListResponse < VitablePartnerAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitablePartnerAPI::Models::BenefitProducts::PlanYearListResponse,
              VitablePartnerAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[VitablePartnerAPI::PlanYear])) }
        attr_reader :data

        sig { params(data: T::Array[VitablePartnerAPI::PlanYear::OrHash]).void }
        attr_writer :data

        sig do
          params(data: T::Array[VitablePartnerAPI::PlanYear::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig do
          override.returns({ data: T::Array[VitablePartnerAPI::PlanYear] })
        end
        def to_hash
        end
      end
    end
  end
end
