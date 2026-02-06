# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Dependents#retrieve
    class DependentResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #   Serializer for Dependent entity in public API responses.
      #
      #   Dependents are family members (spouse, children) who may be eligible for benefit
      #   coverage through an employee.
      #
      #   @return [VitableConnect::Models::Dependent]
      required :data, -> { VitableConnect::Dependent }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnect::Models::DependentResponse} for more details.
      #
      #   Response containing a single dependent resource.
      #
      #   @param data [VitableConnect::Models::Dependent] Serializer for Dependent entity in public API responses.
    end
  end
end
