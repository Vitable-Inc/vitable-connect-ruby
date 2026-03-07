# typed: strong

module VitableConnect
  module Models
    class EnrollmentListPlansParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EnrollmentListPlansParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # Unique enrollment identifier (enrl\_\*)
      sig { returns(String) }
      attr_accessor :enrollment_id

      sig do
        params(
          enrollment_id: String,
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique enrollment identifier (enrl\_\*)
        enrollment_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            enrollment_id: String,
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
