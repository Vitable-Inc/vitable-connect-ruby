# typed: strong

module VitableConnect
  module Models
    class EnrollmentResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EnrollmentResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(VitableConnect::Enrollment) }
      attr_reader :data

      sig { params(data: VitableConnect::Enrollment::OrHash).void }
      attr_writer :data

      # Response containing a single enrollment resource.
      sig do
        params(data: VitableConnect::Enrollment::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig { override.returns({ data: VitableConnect::Enrollment }) }
      def to_hash
      end
    end
  end
end
