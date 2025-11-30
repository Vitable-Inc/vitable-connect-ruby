# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Members
      # @see VitableConnectAPI::Resources::Members::QualifyingLifeEvents#record
      class QualifyingLifeEventRecordParams < VitableConnectAPI::Internal::Type::BaseModel
        extend VitableConnectAPI::Internal::Type::RequestParameters::Converter
        include VitableConnectAPI::Internal::Type::RequestParameters

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
        #   @return [Symbol, VitableConnectAPI::Models::Members::EventType]
        required :event_type, enum: -> { VitableConnectAPI::Members::EventType }

        # @!attribute notes
        #   Optional notes about the event
        #
        #   @return [String, nil]
        optional :notes, String, nil?: true

        # @!method initialize(event_date:, event_type:, notes: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {VitableConnectAPI::Models::Members::QualifyingLifeEventRecordParams} for more
        #   details.
        #
        #   @param event_date [Date] Date when the event occurred
        #
        #   @param event_type [Symbol, VitableConnectAPI::Models::Members::EventType] - `Marriage` - Marriage
        #
        #   @param notes [String, nil] Optional notes about the event
        #
        #   @param request_options [VitableConnectAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
