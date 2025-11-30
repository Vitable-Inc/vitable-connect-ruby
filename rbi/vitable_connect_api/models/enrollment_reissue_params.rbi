# typed: strong

module VitableConnectAPI
  module Models
    class EnrollmentReissueParams < VitableConnectAPI::Internal::Type::BaseModel
      extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
      include VitableConnectAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            VitableConnectAPI::EnrollmentReissueParams,
            VitableConnectAPI::Internal::AnyHash
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
          request_options: VitableConnectAPI::RequestOptions::OrHash
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
            request_options: VitableConnectAPI::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
