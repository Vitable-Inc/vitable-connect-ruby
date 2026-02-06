# frozen_string_literal: true

module VitableConnect
  module Models
    module Members
      # @see VitableConnect::Resources::Members::Dependents#list
      class DependentListResponse < VitableConnect::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<VitableConnect::Models::Dependent>]
        required :data, -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Dependent] }

        # @!attribute pagination
        #   Pagination metadata for list responses.
        #
        #   @return [VitableConnect::Models::Pagination]
        required :pagination, -> { VitableConnect::Pagination }

        # @!method initialize(data:, pagination:)
        #   Paginated list response containing dependent resources.
        #
        #   @param data [Array<VitableConnect::Models::Dependent>]
        #
        #   @param pagination [VitableConnect::Models::Pagination] Pagination metadata for list responses.
      end
    end
  end
end
