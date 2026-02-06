# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # @see VitableConnectAPI::Resources::Employers#create
    class EmployerCreateResponse < VitableConnectAPI::Internal::Type::BaseModel
      # @!attribute data
      #   Serializer for Employer entity in public API responses.
      #
      #   @return [VitableConnectAPI::Models::Employer]
      required :data, -> { VitableConnectAPI::Employer }

      # @!method initialize(data:)
      #   Response containing a single employer resource.
      #
      #   @param data [VitableConnectAPI::Models::Employer] Serializer for Employer entity in public API responses.
    end
  end
end
