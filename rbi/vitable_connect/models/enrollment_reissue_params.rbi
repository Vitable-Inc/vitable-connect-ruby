# typed: strong

module VitableConnect
  module Models
    class EnrollmentReissueParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::EnrollmentReissueParams,
            VitableConnect::Internal::AnyHash
          )
        end

      # ID of the qualifying life event (qle\_\*)
      sig { returns(String) }
      attr_accessor :qle_id

      # Optional reason for reissue
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          qle_id: String,
          reason: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the qualifying life event (qle\_\*)
        qle_id:,
        # Optional reason for reissue
        reason: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            qle_id: String,
            reason: T.nilable(String),
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
