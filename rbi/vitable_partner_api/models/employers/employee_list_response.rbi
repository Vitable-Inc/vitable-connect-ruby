# typed: strong

module VitablePartnerAPI
  module Models
    module Employers
      class EmployeeListResponse < VitablePartnerAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitablePartnerAPI::Models::Employers::EmployeeListResponse,
              VitablePartnerAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[VitablePartnerAPI::Employee])) }
        attr_reader :data

        sig { params(data: T::Array[VitablePartnerAPI::Employee::OrHash]).void }
        attr_writer :data

        sig do
          returns(
            T.nilable(
              VitablePartnerAPI::Models::Employers::EmployeeListResponse::Pagination
            )
          )
        end
        attr_reader :pagination

        sig do
          params(
            pagination:
              VitablePartnerAPI::Models::Employers::EmployeeListResponse::Pagination::OrHash
          ).void
        end
        attr_writer :pagination

        sig do
          params(
            data: T::Array[VitablePartnerAPI::Employee::OrHash],
            pagination:
              VitablePartnerAPI::Models::Employers::EmployeeListResponse::Pagination::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, pagination: nil)
        end

        sig do
          override.returns(
            {
              data: T::Array[VitablePartnerAPI::Employee],
              pagination:
                VitablePartnerAPI::Models::Employers::EmployeeListResponse::Pagination
            }
          )
        end
        def to_hash
        end

        class Pagination < VitablePartnerAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                VitablePartnerAPI::Models::Employers::EmployeeListResponse::Pagination,
                VitablePartnerAPI::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :limit

          sig { returns(Integer) }
          attr_accessor :offset

          sig { returns(Integer) }
          attr_accessor :total

          sig do
            params(limit: Integer, offset: Integer, total: Integer).returns(
              T.attached_class
            )
          end
          def self.new(limit:, offset:, total:)
          end

          sig do
            override.returns(
              { limit: Integer, offset: Integer, total: Integer }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
