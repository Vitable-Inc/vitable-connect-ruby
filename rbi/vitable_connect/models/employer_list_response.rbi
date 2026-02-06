# typed: strong

module VitableConnect
  module Models
    class EmployerListResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::EmployerListResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(T::Array[VitableConnect::Employer]) }
      attr_accessor :data

      # Pagination metadata for list responses.
      sig { returns(VitableConnect::Pagination) }
      attr_reader :pagination

      sig { params(pagination: VitableConnect::Pagination::OrHash).void }
      attr_writer :pagination

      # Paginated list response containing employer resources.
      sig do
        params(
          data: T::Array[VitableConnect::Employer::OrHash],
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
            data: T::Array[VitableConnect::Employer],
            pagination: VitableConnect::Pagination
          }
        )
      end
      def to_hash
      end
    end
  end
end
