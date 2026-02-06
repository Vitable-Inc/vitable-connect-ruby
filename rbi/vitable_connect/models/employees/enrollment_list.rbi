# typed: strong

module VitableConnect
  module Models
    module Employees
      class EnrollmentList < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Employees::EnrollmentList,
              VitableConnect::Internal::AnyHash
            )
          end

        sig { returns(T::Array[VitableConnect::Enrollment]) }
        attr_accessor :data

        # Pagination metadata for list responses.
        sig { returns(VitableConnect::Pagination) }
        attr_reader :pagination

        sig { params(pagination: VitableConnect::Pagination::OrHash).void }
        attr_writer :pagination

        # Paginated list response containing enrollment resources.
        sig do
          params(
            data: T::Array[VitableConnect::Enrollment::OrHash],
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
              data: T::Array[VitableConnect::Enrollment],
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
