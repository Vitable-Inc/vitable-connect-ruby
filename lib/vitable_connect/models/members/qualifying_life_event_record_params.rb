# frozen_string_literal: true

module VitableConnect
  module Models
    module Members
      # @see VitableConnect::Resources::Members::QualifyingLifeEvents#record
      class QualifyingLifeEventRecordParams < VitableConnect::Internal::Type::BaseModel
        extend VitableConnect::Internal::Type::RequestParameters::Converter
        include VitableConnect::Internal::Type::RequestParameters

        # @!attribute member_id
        #   Unique member identifier (mbr\_\*)
        #
        #   @return [String]
        required :member_id, String

        # @!attribute event_date
        #   Date when the event occurred
        #
        #   @return [Date]
        required :event_date, Date

        # @!attribute event_type
        #   - `Marriage` - Marriage
        #   - `Birth` - Birth
        #   - `Adoption` - Adoption
        #   - `Divorce` - Divorce
        #   - `Death` - Death
        #   - `Job Loss` - Job Loss
        #   - `Reduction In Hours` - Reduction In Hours
        #   - `Employer Bankruptcy` - Employer Bankruptcy
        #   - `Medicare Entitlement` - Medicare Entitlement
        #   - `Termination` - Termination
        #   - `Other` - Other
        #
        #   @return [Symbol, VitableConnect::Models::Members::EventType]
        required :event_type, enum: -> { VitableConnect::Members::EventType }

        # @!attribute notes
        #   Optional notes about the event
        #
        #   @return [String, nil]
        optional :notes, String, nil?: true

        # @!method initialize(member_id:, event_date:, event_type:, notes: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::Members::QualifyingLifeEventRecordParams} for more
        #   details.
        #
        #   @param member_id [String] Unique member identifier (mbr\_\*)
        #
        #   @param event_date [Date] Date when the event occurred
        #
        #   @param event_type [Symbol, VitableConnect::Models::Members::EventType] - `Marriage` - Marriage
        #
        #   @param notes [String, nil] Optional notes about the event
        #
        #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
