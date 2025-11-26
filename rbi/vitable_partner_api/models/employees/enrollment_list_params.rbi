# typed: strong

module VitablePartnerAPI
  module Models
    module Employees
      class EnrollmentListParams < VitablePartnerAPI::Internal::Type::BaseModel
        extend VitablePartnerAPI::Internal::Type::RequestParameters::Converter
        include VitablePartnerAPI::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              VitablePartnerAPI::Employees::EnrollmentListParams,
              VitablePartnerAPI::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              VitablePartnerAPI::Employees::EnrollmentListParams::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              VitablePartnerAPI::Employees::EnrollmentListParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            status:
              VitablePartnerAPI::Employees::EnrollmentListParams::Status::OrSymbol,
            request_options: VitablePartnerAPI::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(status: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              status:
                VitablePartnerAPI::Employees::EnrollmentListParams::Status::OrSymbol,
              request_options: VitablePartnerAPI::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Status
          extend VitablePartnerAPI::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                VitablePartnerAPI::Employees::EnrollmentListParams::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              VitablePartnerAPI::Employees::EnrollmentListParams::Status::TaggedSymbol
            )
          ENROLLED =
            T.let(
              :enrolled,
              VitablePartnerAPI::Employees::EnrollmentListParams::Status::TaggedSymbol
            )
          WAIVED =
            T.let(
              :waived,
              VitablePartnerAPI::Employees::EnrollmentListParams::Status::TaggedSymbol
            )
          INACTIVE =
            T.let(
              :inactive,
              VitablePartnerAPI::Employees::EnrollmentListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                VitablePartnerAPI::Employees::EnrollmentListParams::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
