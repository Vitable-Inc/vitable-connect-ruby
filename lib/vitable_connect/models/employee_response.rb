# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employees#retrieve
    class EmployeeResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #   Serializer for Employee entity in public API responses.
      #
      #   Note: Employee is in the company module but exposed via account public API.
      #   Contains nested MemberEntity with personal identity information.
      #
      #   @return [VitableConnect::Models::Employee]
      required :data, -> { VitableConnect::Employee }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::EmployeeResponse} for more details.
      #
      #   Response containing a single employee resource.
      #
      #   @param data [VitableConnect::Models::Employee] Serializer for Employee entity in public API responses.
    end
  end
end
