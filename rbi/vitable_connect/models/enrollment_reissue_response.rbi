# typed: strong

module VitableConnect
  module Models
    class EnrollmentReissueResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::EnrollmentReissueResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      sig { returns(VitableConnect::Models::EnrollmentReissueResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: VitableConnect::Models::EnrollmentReissueResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # Response containing a single reissue enrollment resource.
      sig do
        params(
          data: VitableConnect::Models::EnrollmentReissueResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: VitableConnect::Models::EnrollmentReissueResponse::Data }
        )
      end
      def to_hash
      end

      class Data < VitableConnect::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              VitableConnect::Models::EnrollmentReissueResponse::Data,
              VitableConnect::Internal::AnyHash
            )
          end

        # Opaque identifier for the new unanswered enrollment
        sig { returns(String) }
        attr_accessor :enrollment_id

        sig { params(enrollment_id: String).returns(T.attached_class) }
        def self.new(
          # Opaque identifier for the new unanswered enrollment
          enrollment_id:
        )
        end

        sig { override.returns({ enrollment_id: String }) }
        def to_hash
        end
      end
    end
  end
end
