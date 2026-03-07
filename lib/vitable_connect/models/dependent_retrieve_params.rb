# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Dependents#retrieve
    class DependentRetrieveParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute dependent_id
      #   Unique dependent identifier (dpnd\_\*)
      #
      #   @return [String]
      required :dependent_id, String

      # @!method initialize(dependent_id:, request_options: {})
      #   @param dependent_id [String] Unique dependent identifier (dpnd\_\*)
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
