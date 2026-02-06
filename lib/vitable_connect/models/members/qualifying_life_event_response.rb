# frozen_string_literal: true

module VitableConnect
  module Models
    module Members
      # @see VitableConnect::Resources::Members::QualifyingLifeEvents#retrieve
      class QualifyingLifeEventResponse < VitableConnect::Internal::Type::BaseModel
        # @!attribute data
        #   Serializer for Qualifying Life Event entity in public API responses.
        #
        #   QLEs are significant life changes (marriage, birth, adoption, loss of coverage)
        #   that allow employees to modify benefit elections outside of open enrollment.
        #
        #   @return [VitableConnect::Models::Members::QualifyingLifeEvent]
        required :data, -> { VitableConnect::Members::QualifyingLifeEvent }

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {VitableConnect::Models::Members::QualifyingLifeEventResponse} for more details.
        #
        #   Response containing a single qualifying life event resource.
        #
        #   @param data [VitableConnect::Models::Members::QualifyingLifeEvent] Serializer for Qualifying Life Event entity in public API responses.
      end
    end
  end
end
