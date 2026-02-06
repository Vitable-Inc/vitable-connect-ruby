# typed: strong

module VitableConnect
  module Models
    module BenefitProducts
      class PlanYearListParams < VitableConnect::Internal::Type::BaseModel
        extend VitableConnect::Internal::Type::RequestParameters::Converter
        include VitableConnect::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::BenefitProducts::PlanYearListParams,
              VitableConnect::Internal::AnyHash
            )
          end

        # Filter by employer ID
        sig { returns(T.nilable(String)) }
        attr_reader :employer_id

        sig { params(employer_id: String).void }
        attr_writer :employer_id

        # Items per page (default: 20, max: 100)
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Page number (default: 1)
        sig { returns(T.nilable(Integer)) }
        attr_reader :page

        sig { params(page: Integer).void }
        attr_writer :page

        # Filter by plan year status
        sig do
          returns(
            T.nilable(VitableConnect::BenefitProducts::PlanYearStatus::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: VitableConnect::BenefitProducts::PlanYearStatus::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            employer_id: String,
            limit: Integer,
            page: Integer,
            status: VitableConnect::BenefitProducts::PlanYearStatus::OrSymbol,
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by employer ID
          employer_id: nil,
          # Items per page (default: 20, max: 100)
          limit: nil,
          # Page number (default: 1)
          page: nil,
          # Filter by plan year status
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              employer_id: String,
              limit: Integer,
              page: Integer,
              status: VitableConnect::BenefitProducts::PlanYearStatus::OrSymbol,
              request_options: VitableConnect::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
