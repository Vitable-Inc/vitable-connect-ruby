# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    module Employees
      # @see VitablePartnerAPI::Resources::Employees::Dependents#create
      class DependentCreateParams < VitablePartnerAPI::Models::CreateDependentRequest
        extend VitablePartnerAPI::Internal::Type::RequestParameters::Converter
        include VitablePartnerAPI::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
