# typed: strong

module VitablePartnerAPI
  module Models
    module Employees
      class DependentListResponse < VitablePartnerAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitablePartnerAPI::Models::Employees::DependentListResponse,
              VitablePartnerAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[VitablePartnerAPI::Dependent])) }
        attr_reader :data

        sig do
          params(data: T::Array[VitablePartnerAPI::Dependent::OrHash]).void
        end
        attr_writer :data

        sig do
          params(data: T::Array[VitablePartnerAPI::Dependent::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig do
          override.returns({ data: T::Array[VitablePartnerAPI::Dependent] })
        end
        def to_hash
        end
      end
    end
  end
end
