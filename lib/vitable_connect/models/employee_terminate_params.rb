# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Employees#terminate
    class EmployeeTerminateParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!attribute employee_id
      #   Unique employee identifier (empl\_\*)
      #
      #   @return [String]
      required :employee_id, String

      # @!method initialize(employee_id:, request_options: {})
      #   @param employee_id [String] Unique employee identifier (empl\_\*)
      #
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
