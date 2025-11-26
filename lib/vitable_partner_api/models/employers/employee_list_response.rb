# frozen_string_literal: true

module VitablePartnerAPI
  module Models
    module Employers
      # @see VitablePartnerAPI::Resources::Employers::Employees#list
      class EmployeeListResponse < VitablePartnerAPI::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<VitablePartnerAPI::Models::Employee>, nil]
        optional :data, -> { VitablePartnerAPI::Internal::Type::ArrayOf[VitablePartnerAPI::Employee] }

        # @!attribute pagination
        #
        #   @return [VitablePartnerAPI::Models::Employers::EmployeeListResponse::Pagination, nil]
        optional :pagination, -> { VitablePartnerAPI::Models::Employers::EmployeeListResponse::Pagination }

        # @!method initialize(data: nil, pagination: nil)
        #   @param data [Array<VitablePartnerAPI::Models::Employee>]
        #   @param pagination [VitablePartnerAPI::Models::Employers::EmployeeListResponse::Pagination]

        # @see VitablePartnerAPI::Models::Employers::EmployeeListResponse#pagination
        class Pagination < VitablePartnerAPI::Internal::Type::BaseModel
          # @!attribute limit
          #
          #   @return [Integer]
          required :limit, Integer

          # @!attribute offset
          #
          #   @return [Integer]
          required :offset, Integer

          # @!attribute total
          #
          #   @return [Integer]
          required :total, Integer

          # @!method initialize(limit:, offset:, total:)
          #   @param limit [Integer]
          #   @param offset [Integer]
          #   @param total [Integer]
        end
      end
    end
  end
end
