# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    module Employers
      # @see VitablePartnerAPI::Resources::Employers::Employees#list
      class EmployeeListParams < VitablePartnerAPI::Internal::Type::BaseModel
        extend VitablePartnerAPI::Internal::Type::RequestParameters::Converter
        include VitablePartnerAPI::Internal::Type::RequestParameters

        # @!attribute limit
        #   Number of results to return
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute offset
        #   Number of results to skip
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!method initialize(limit: nil, offset: nil, request_options: {})
        #   @param limit [Integer] Number of results to return
        #
        #   @param offset [Integer] Number of results to skip
        #
        #   @param request_options [VitablePartnerAPI::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
