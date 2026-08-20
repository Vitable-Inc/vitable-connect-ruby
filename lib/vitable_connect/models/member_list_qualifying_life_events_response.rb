# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Members#list_qualifying_life_events
    class MemberListQualifyingLifeEventsResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute id
      #   Opaque qualifying life event identifier
      #
      #   @return [String]
      required :id, String

      # @!attribute event_type
      #   - `Married` - Married
      #   - `Divorced` - Divorced
      #   - `New child` - New Child
      #   - `Court ordered` - Court Ordered
      #   - `Other` - Other
      #
      #   @return [Symbol, VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType]
      required :event_type,
               enum: -> { VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType }

      # @!attribute other_event
      #   Custom event description when event_type is Other; otherwise normally null
      #
      #   @return [String, nil]
      required :other_event, String, nil?: true

      # @!attribute status
      #   - `pending` - Pending
      #   - `approved` - Approved
      #   - `denied` - Denied
      #
      #   @return [Symbol, VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status]
      required :status, enum: -> { VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status }

      # @!attribute submitted_at
      #   When the member submitted the event
      #
      #   @return [Time]
      required :submitted_at, Time

      # @!method initialize(id:, event_type:, other_event:, status:, submitted_at:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::MemberListQualifyingLifeEventsResponse} for more
      #   details.
      #
      #   @param id [String] Opaque qualifying life event identifier
      #
      #   @param event_type [Symbol, VitableConnect::Models::MemberListQualifyingLifeEventsResponse::EventType] - `Married` - Married
      #
      #   @param other_event [String, nil] Custom event description when event_type is Other; otherwise normally null
      #
      #   @param status [Symbol, VitableConnect::Models::MemberListQualifyingLifeEventsResponse::Status] - `pending` - Pending
      #
      #   @param submitted_at [Time] When the member submitted the event

      # - `Married` - Married
      # - `Divorced` - Divorced
      # - `New child` - New Child
      # - `Court ordered` - Court Ordered
      # - `Other` - Other
      #
      # @see VitableConnect::Models::MemberListQualifyingLifeEventsResponse#event_type
      module EventType
        extend VitableConnect::Internal::Type::Enum

        MARRIED = :Married
        DIVORCED = :Divorced
        NEW_CHILD = :"New child"
        COURT_ORDERED = :"Court ordered"
        OTHER = :Other

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # - `pending` - Pending
      # - `approved` - Approved
      # - `denied` - Denied
      #
      # @see VitableConnect::Models::MemberListQualifyingLifeEventsResponse#status
      module Status
        extend VitableConnect::Internal::Type::Enum

        PENDING = :pending
        APPROVED = :approved
        DENIED = :denied

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
