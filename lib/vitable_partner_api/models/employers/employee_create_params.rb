# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    module Employers
      # @see VitablePartnerAPI::Resources::Employers::Employees#create
      class EmployeeCreateParams < VitablePartnerAPI::Models::Employers::CreateEmployeeRequest
        extend VitablePartnerAPI::Internal::Type::RequestParameters::Converter
        include VitablePartnerAPI::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
