# frozen_string_literal: true

module VitableConnect
  module Models
    module Members
      # @see VitableConnect::Resources::Members::QualifyingLifeEvents#list
      class QualifyingLifeEventListResponse < VitableConnect::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<VitableConnect::Models::Members::QualifyingLifeEvent>]
        required :data,
                 -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Members::QualifyingLifeEvent] }

        # @!attribute pagination
        #   Pagination metadata for list responses.
        #
        #   @return [VitableConnect::Models::Pagination]
        required :pagination, -> { VitableConnect::Pagination }

        # @!method initialize(data:, pagination:)
        #   Paginated list response containing qualifying life event resources.
        #
        #   @param data [Array<VitableConnect::Models::Members::QualifyingLifeEvent>]
        #
        #   @param pagination [VitableConnect::Models::Pagination] Pagination metadata for list responses.
      end
    end
  end
end
