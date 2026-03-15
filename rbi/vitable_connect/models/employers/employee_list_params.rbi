# typed: strong

module VitableConnect
  module Models
    module Employers
      class EmployeeListParams < VitableConnect::Internal::Type::BaseModel
        extend VitableConnect::Internal::Type::RequestParameters::Converter
        include VitableConnect::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Employers::EmployeeListParams,
              VitableConnect::Internal::AnyHash
            )
          end

        # Filter by employer ID
        sig { returns(String) }
        attr_accessor :employer_id

        # Filter by active status
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :active_in

        sig { params(active_in: T::Boolean).void }
        attr_writer :active_in

        # Filter by employment classification
        sig { returns(T.nilable(VitableConnect::EmployeeClass::OrSymbol)) }
        attr_reader :employee_class

        sig do
          params(employee_class: VitableConnect::EmployeeClass::OrSymbol).void
        end
        attr_writer :employee_class

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

        sig do
          params(
            employer_id: String,
            active_in: T::Boolean,
            employee_class: VitableConnect::EmployeeClass::OrSymbol,
            limit: Integer,
            page: Integer,
            request_options: VitableConnect::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by employer ID
          employer_id:,
          # Filter by active status
          active_in: nil,
          # Filter by employment classification
          employee_class: nil,
          # Items per page (default: 20, max: 100)
          limit: nil,
          # Page number (default: 1)
          page: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              employer_id: String,
              active_in: T::Boolean,
              employee_class: VitableConnect::EmployeeClass::OrSymbol,
              limit: Integer,
              page: Integer,
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
