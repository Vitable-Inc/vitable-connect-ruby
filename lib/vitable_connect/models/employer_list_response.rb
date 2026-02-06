# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#list
    class EmployerListResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<VitableConnect::Models::Employer>]
      required :data, -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Employer] }

      # @!attribute pagination
      #   Pagination metadata for list responses.
      #
      #   @return [VitableConnect::Models::Pagination]
      required :pagination, -> { VitableConnect::Pagination }

      # @!method initialize(data:, pagination:)
      #   Paginated list response containing employer resources.
      #
      #   @param data [Array<VitableConnect::Models::Employer>]
      #
      #   @param pagination [VitableConnect::Models::Pagination] Pagination metadata for list responses.
    end
  end
end
