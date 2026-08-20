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

      # Unique enrollment identifier (enrl\_\*)
      sig { returns(String) }
      attr_accessor :enrollment_id

      # Accepted member qualifying life event identifier (qle\_\*)
      sig { returns(T.nilable(String)) }
      attr_accessor :qualifying_life_event_id

      # Audit reason for the reissue; required for user-backed callers and optional for
      # userless organization callers
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      # Optional support or operational ticket number
      sig { returns(T.nilable(String)) }
      attr_accessor :ticket_number

      sig do
        params(
          enrollment_id: String,
          qualifying_life_event_id: T.nilable(String),
          reason: T.nilable(String),
          ticket_number: T.nilable(String),
          request_options: VitableConnect::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique enrollment identifier (enrl\_\*)
        enrollment_id:,
        # Accepted member qualifying life event identifier (qle\_\*)
        qualifying_life_event_id: nil,
        # Audit reason for the reissue; required for user-backed callers and optional for
        # userless organization callers
        reason: nil,
        # Optional support or operational ticket number
        ticket_number: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            enrollment_id: String,
            qualifying_life_event_id: T.nilable(String),
            reason: T.nilable(String),
            ticket_number: T.nilable(String),
            request_options: VitableConnect::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
