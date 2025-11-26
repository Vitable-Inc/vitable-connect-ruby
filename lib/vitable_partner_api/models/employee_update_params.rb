# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    # @see VitablePartnerAPI::Resources::Employees#update
    class EmployeeUpdateParams < VitablePartnerAPI::Models::Employers::UpdateEmployeeRequest
      extend VitablePartnerAPI::Internal::Type::RequestParameters::Converter
      include VitablePartnerAPI::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
