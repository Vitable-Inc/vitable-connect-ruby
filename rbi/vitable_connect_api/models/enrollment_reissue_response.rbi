# typed: strong

module VitableConnectAPI
  module Models
    class EnrollmentReissueResponse < VitableConnectAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::Models::EnrollmentReissueResponse,
            VitableConnectAPI::Internal::AnyHash
          )
        end

      # Serializer for Enrollment entity in public API responses.
      #
      # An Enrollment represents an employee's benefit enrollment for a specific plan
      # year.
      sig { returns(VitableConnectAPI::Enrollment) }
      attr_reader :data

      sig { params(data: VitableConnectAPI::Enrollment::OrHash).void }
      attr_writer :data

      # Response containing a single enrollment resource.
      sig do
        params(data: VitableConnectAPI::Enrollment::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # Serializer for Enrollment entity in public API responses.
        #
        # An Enrollment represents an employee's benefit enrollment for a specific plan
        # year.
        data:
      )
      end

      sig { override.returns({ data: VitableConnectAPI::Enrollment }) }
      def to_hash
      end
    end
  end
end
