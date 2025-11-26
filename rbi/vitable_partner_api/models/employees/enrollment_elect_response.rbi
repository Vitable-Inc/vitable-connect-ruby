# typed: strong

module VitablePartnerAPI
  module Models
    module Employees
      class EnrollmentElectResponse < VitablePartnerAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitablePartnerAPI::Models::Employees::EnrollmentElectResponse,
              VitablePartnerAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[VitablePartnerAPI::Enrollment])) }
        attr_reader :data

        sig do
          params(data: T::Array[VitablePartnerAPI::Enrollment::OrHash]).void
        end
        attr_writer :data

        sig do
          params(data: T::Array[VitablePartnerAPI::Enrollment::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig do
          override.returns({ data: T::Array[VitablePartnerAPI::Enrollment] })
        end
        def to_hash
        end
      end
    end
  end
end
