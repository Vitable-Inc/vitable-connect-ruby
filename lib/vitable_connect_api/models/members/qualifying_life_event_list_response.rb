# frozen_string_literal: true

module VitableConnectAPI
  module Models
    module Members
      # @see VitableConnectAPI::Resources::Members::QualifyingLifeEvents#list
      class QualifyingLifeEventListResponse < VitableConnectAPI::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<VitableConnectAPI::Models::Members::QualifyingLifeEvent>]
        required :data,
                 -> { VitableConnectAPI::Internal::Type::ArrayOf[VitableConnectAPI::Members::QualifyingLifeEvent] }

        # @!attribute pagination
        #   Pagination metadata for list responses.
        #
        #   @return [VitableConnectAPI::Models::Members::QualifyingLifeEventListResponse::Pagination]
        required :pagination,
                 -> { VitableConnectAPI::Models::Members::QualifyingLifeEventListResponse::Pagination }

        # @!method initialize(data:, pagination:)
        #   Paginated list response containing qualifying life event resources.
        #
        #   @param data [Array<VitableConnectAPI::Models::Members::QualifyingLifeEvent>]
        #
        #   @param pagination [VitableConnectAPI::Models::Members::QualifyingLifeEventListResponse::Pagination] Pagination metadata for list responses.

        # @see VitableConnectAPI::Models::Members::QualifyingLifeEventListResponse#pagination
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
end
