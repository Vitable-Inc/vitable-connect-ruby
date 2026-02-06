# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # @see VitableConnectAPI::Resources::Dependents#retrieve
    class DependentRetrieveResponse < VitableConnectAPI::Internal::Type::BaseModel
      # @!attribute data
      #   Serializer for Dependent entity in public API responses.
      #
      #   Dependents are family members (spouse, children) who may be eligible for benefit
      #   coverage through an employee.
      #
      #   @return [VitableConnectAPI::Models::Dependent]
      required :data, -> { VitableConnectAPI::Dependent }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {VitableConnectAPI::Models::DependentRetrieveResponse} for more details.
      #
      #   Response containing a single dependent resource.
      #
      #   @param data [VitableConnectAPI::Models::Dependent] Serializer for Dependent entity in public API responses.
    end
  end
end
