# frozen_string_literal: true

module VitableConnectAPI
  module Models
    # @see VitableConnectAPI::Resources::Employers#list
    class EmployerListResponse < VitableConnectAPI::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<VitableConnectAPI::Models::Employer>]
      required :data, -> { VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Employer] }

      # @!attribute pagination
      #   Pagination metadata for list responses.
      #
      #   @return [VitableConnectAPI::Models::EmployerListResponse::Pagination]
      required :pagination, -> { VitableConnectAPI::Models::EmployerListResponse::Pagination }

      # @!method initialize(data:, pagination:)
      #   Paginated list response containing employer resources.
      #
      #   @param data [Array<VitableConnectAPI::Models::Employer>]
      #
      #   @param pagination [VitableConnectAPI::Models::EmployerListResponse::Pagination] Pagination metadata for list responses.

      # @see VitableConnectAPI::Models::EmployerListResponse#pagination
      class Pagination < VitableConnectAPI::Internal::Type::BaseModel
        # @!attribute limit
        #   Items per page
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute page
        #   Current page number
        #
        #   @return [Integer]
        required :page, Integer

        # @!attribute total
        #   Total number of items
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute total_pages
        #   Total number of pages
        #
        #   @return [Integer]
        required :total_pages, Integer

        # @!method initialize(limit:, page:, total:, total_pages:)
        #   Pagination metadata for list responses.
        #
        #   @param limit [Integer] Items per page
        #
        #   @param page [Integer] Current page number
        #
        #   @param total [Integer] Total number of items
        #
        #   @param total_pages [Integer] Total number of pages
      end
    end
  end
end
