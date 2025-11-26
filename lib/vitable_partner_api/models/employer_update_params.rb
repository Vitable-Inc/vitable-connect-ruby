# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    # @see VitablePartnerAPI::Resources::Employers#update
    class EmployerUpdateParams < VitablePartnerAPI::Models::UpdateEmployerRequest
      extend VitablePartnerAPI::Internal::Type::RequestParameters::Converter
      include VitablePartnerAPI::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
