# typed: strong

module VitablePartnerAPI
  module Models
    class EmployerListResponse < VitablePartnerAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitablePartnerAPI::Models::EmployerListResponse,
            VitablePartnerAPI::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[VitablePartnerAPI::Employer])) }
      attr_reader :data

      sig { params(data: T::Array[VitablePartnerAPI::Employer::OrHash]).void }
      attr_writer :data

      sig do
        returns(
          T.nilable(VitablePartnerAPI::Models::EmployerListResponse::Pagination)
        )
      end
      attr_reader :pagination

      sig do
        params(
          pagination:
            VitablePartnerAPI::Models::EmployerListResponse::Pagination::OrHash
        ).void
      end
      attr_writer :pagination

      sig do
        params(
          data: T::Array[VitablePartnerAPI::Employer::OrHash],
          pagination:
            VitablePartnerAPI::Models::EmployerListResponse::Pagination::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, pagination: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[VitablePartnerAPI::Employer],
            pagination:
              VitablePartnerAPI::Models::EmployerListResponse::Pagination
          }
        )
      end
      def to_hash
      end

      class Pagination < VitablePartnerAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitablePartnerAPI::Models::EmployerListResponse::Pagination,
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
          override.returns({ limit: Integer, offset: Integer, total: Integer })
        end
        def to_hash
        end
      end
    end
  end
end
