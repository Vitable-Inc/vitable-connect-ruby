# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#list_employees
    class EmployerListEmployeesResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<VitableConnect::Models::Employee>]
      required :data, -> { VitableConnect::Internal::Type::ArrayOf[VitableConnect::Employee] }

      # @!attribute pagination
      #   Pagination metadata for list responses.
      #
      #   @return [VitableConnect::Models::Pagination]
      required :pagination, -> { VitableConnect::Pagination }

      # @!method initialize(data:, pagination:)
      #   Paginated list response containing employee resources.
      #
      #   @param data [Array<VitableConnect::Models::Employee>]
      #
      #   @param pagination [VitableConnect::Models::Pagination] Pagination metadata for list responses.
    end
  end
end
