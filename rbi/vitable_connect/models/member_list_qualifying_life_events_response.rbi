# typed: strong

module VitableConnect
  module Models
    class MemberListQualifyingLifeEventsResponse < VitableConnect::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse,
            VitableConnect::Internal::AnyHash
          )
        end

      # Opaque qualifying life event identifier
      sig { returns(String) }
      attr_accessor :id

      # - `Married` - Married
      # - `Divorced` - Divorced
      # - `New child` - New Child
      # - `Court ordered` - Court Ordered
      # - `Other` - Other
      sig do
        returns(
          VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
        )
      end
      attr_accessor :event_type

      # Custom event description when event_type is Other; otherwise normally null
      sig { returns(T.nilable(String)) }
      attr_accessor :other_event

      # - `pending` - Pending
      # - `approved` - Approved
      # - `denied` - Denied
      sig do
        returns(
          VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # When the member submitted the event
      sig { returns(Time) }
      attr_accessor :submitted_at

      sig do
        params(
          id: String,
          event_type:
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::OrSymbol,
          other_event: T.nilable(String),
          status:
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status::OrSymbol,
          submitted_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Opaque qualifying life event identifier
        id:,
        # - `Married` - Married
        # - `Divorced` - Divorced
        # - `New child` - New Child
        # - `Court ordered` - Court Ordered
        # - `Other` - Other
        event_type:,
        # Custom event description when event_type is Other; otherwise normally null
        other_event:,
        # - `pending` - Pending
        # - `approved` - Approved
        # - `denied` - Denied
        status:,
        # When the member submitted the event
        submitted_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            event_type:
              VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol,
            other_event: T.nilable(String),
            status:
              VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status::TaggedSymbol,
            submitted_at: Time
          }
        )
      end
      def to_hash
      end

      # - `Married` - Married
      # - `Divorced` - Divorced
      # - `New child` - New Child
      # - `Court ordered` - Court Ordered
      # - `Other` - Other
      module EventType
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MARRIED =
          T.let(
            :Married,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        DIVORCED =
          T.let(
            :Divorced,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        NEW_CHILD =
          T.let(
            :"New child",
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        COURT_ORDERED =
          T.let(
            :"Court ordered",
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )
        OTHER =
          T.let(
            :Other,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # - `pending` - Pending
      # - `approved` - Approved
      # - `denied` - Denied
      module Status
        extend VitableConnect::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status::TaggedSymbol
          )
        DENIED =
          T.let(
            :denied,
            VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
