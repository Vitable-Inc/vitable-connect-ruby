# typed: strong

module VitablePartnerAPI
  module Models
    module BenefitProducts
      class PlanYearListParams < VitablePartnerAPI::Internal::Type::BaseModel
        extend VitablePartnerAPI::Internal::Type::RequestParameters::Converter
        include VitablePartnerAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              VitablePartnerAPI::BenefitProducts::PlanYearListParams,
              VitablePartnerAPI::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :employer_id

        sig do
          params(
            employer_id: String,
            request_options: VitablePartnerAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(employer_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              employer_id: String,
              request_options: VitablePartnerAPI::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
