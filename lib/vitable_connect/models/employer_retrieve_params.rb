# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employers#retrieve
    class EmployerRetrieveParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute employer_id
      #   Unique employer identifier (empr\_\*)
      #
      #   @return [String]
      required :employer_id, String

      # @!method initialize(employer_id:, request_options: {})
      #   @param employer_id [String] Unique employer identifier (empr\_\*)
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
