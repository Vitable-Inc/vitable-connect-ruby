# typed: strong

module VitablePartnerAPI
  module Models
    module Employees
      class QualifyingLifeEventListResponse < VitablePartnerAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitablePartnerAPI::Models::Employees::QualifyingLifeEventListResponse,
              VitablePartnerAPI::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(T::Array[VitablePartnerAPI::QualifyingLifeEvent]))
        end
        attr_reader :data

        sig do
          params(
            data: T::Array[VitablePartnerAPI::QualifyingLifeEvent::OrHash]
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: T::Array[VitablePartnerAPI::QualifyingLifeEvent::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: T::Array[VitablePartnerAPI::QualifyingLifeEvent] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
