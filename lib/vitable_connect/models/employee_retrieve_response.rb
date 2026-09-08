# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employees#retrieve
    class EmployeeRetrieveResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [VitableConnect::Models::Employee]
      required :data, -> { VitableConnect::Employee }

      # @!method initialize(data:)
      #   Response containing a single employee resource.
      #
      #   @param data [VitableConnect::Models::Employee]
    end
  end
end
