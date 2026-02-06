# typed: strong

module VitableConnect
  module Models
    module Employees
      class EnrollmentListParams < VitableConnect::Internal::Type::BaseModel
        extend VitableConnect::Internal::Type::RequestParameters::Converter
        include VitableConnect::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Employees::EnrollmentListParams,
              VitableConnect::Internal::AnyHash
            )
          end

        # Filter by coverage year
        sig { returns(T.nilable(Integer)) }
        attr_reader :coverage_effective_start_year

        sig { params(coverage_effective_start_year: Integer).void }
        attr_writer :coverage_effective_start_year

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

        # Filter by plan year start (YYYY)
        sig { returns(T.nilable(Integer)) }
        attr_reader :plan_year

        sig { params(plan_year: Integer).void }
        attr_writer :plan_year

        # Filter by enrollment status
        sig do
          returns(
            T.nilable(VitableConnect::Employees::EnrollmentStatus::OrSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: VitableConnect::Employees::EnrollmentStatus::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            coverage_effective_start_year: Integer,
            limit: Integer,
            page: Integer,
            plan_year: Integer,
            status: VitableConnect::Employees::EnrollmentStatus::OrSymbol,
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by coverage year
          coverage_effective_start_year: nil,
          # Items per page (default: 20, max: 100)
          limit: nil,
          # Page number (default: 1)
          page: nil,
          # Filter by plan year start (YYYY)
          plan_year: nil,
          # Filter by enrollment status
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              coverage_effective_start_year: Integer,
              limit: Integer,
              page: Integer,
              plan_year: Integer,
              status: VitableConnect::Employees::EnrollmentStatus::OrSymbol,
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
