# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#create
    class EmployerResponse < VitableConnect::Internal::Type::BaseModel
      # @!attribute data
      #   Serializer for Employer entity in public API responses.
      #
      #   @return [VitableConnect::Models::Employer]
      required :data, -> { VitableConnect::Employer }

      # @!method initialize(data:)
      #   Response containing a single employer resource.
      #
      #   @param data [VitableConnect::Models::Employer] Serializer for Employer entity in public API responses.
    end
  end
end
