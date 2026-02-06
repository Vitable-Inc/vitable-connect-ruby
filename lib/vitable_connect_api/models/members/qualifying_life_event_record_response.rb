# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Members
      # @see VitableConnectAPI::Resources::Members::QualifyingLifeEvents#record
      class QualifyingLifeEventRecordResponse < VitableConnectAPI::Internal::Type::BaseModel
        # @!attribute data
        #   Serializer for Qualifying Life Event entity in public API responses.
        #
        #   QLEs are significant life changes (marriage, birth, adoption, loss of coverage)
        #   that allow employees to modify benefit elections outside of open enrollment.
        #
        #   @return [VitableConnectAPI::Models::Members::QualifyingLifeEvent]
        required :data, -> { VitableConnectAPI::Members::QualifyingLifeEvent }

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnectAPI::Models::Members::QualifyingLifeEventRecordResponse} for more
        #   details.
        #
        #   Response containing a single qualifying life event resource.
        #
        #   @param data [VitableConnectAPI::Models::Members::QualifyingLifeEvent] Serializer for Qualifying Life Event entity in public API responses.
      end
    end
  end
end
