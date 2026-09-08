# frozen_string_literal: true

module VitableConnect
  module Models
    # @see VitableConnect::Resources::Organizations#list
    class OrganizationListParams < VitableConnect::Internal::Type::BaseModel
      extend VitableConnect::Internal::Type::RequestParameters::Converter
      include VitableConnect::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [VitableConnect::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
